*** Settings ***
Library     DatabaseLibrary
Library    Collections

Test Setup  Connect To Database     dbapiModuleName=pymysql     dbName=dbfree_db    dbUsername=dbfree_db     dbPassword=12345678    dbHost=db4free.net   dbPort=3306
Test Teardown       Disconnect From Database

*** Test Cases ***
Tc1
    ${row_count}    Row Count    select * from Products
    Log To Console    ${row_count}
    Log    ${row_count}
    Should Be Equal    ${row_count}    81
Tc2
    Table Must Exist    Products
    Row Count Is Equal To X    select * from Products    85
    Row Count Is Less Than X    select * from Products    100
    Row Count Is Greater Than X    select * from Products    1
#    Row Count Is Equal To X     select * from Products where    products_id=100
Tc3
    Execute Sql String    Insert Into Products(product_id,productname,description) Values(11224,'ram','tech')
    Row Count Is Equal To X    select * from Products where Product_id=11224    1
Tc4
    Execute Sql String    Update Products Set productname='jam' where product_id=11224
    Row Count Is Equal To X    select * from Products where product_id=11224 and productname='jam'    1
Tc5
    ${output}   Query    select * from Products
    Log    ${output}
    Log To Console    ${output}