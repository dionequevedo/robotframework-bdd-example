*** Settings ***
Resource          ../base.resource

Suite Setup        Open Browser ToDo List
Suite Teardown     Finish Suite


*** Test Cases ***

Test Create ToDo Item
    [Documentation]                 Test the creation of a new ToDo item
    [Tags]                          create

    GIVEN that I am on the page
    WHEN I enter the word My_Item
    AND press the ENTER key after typing My_Item
    THEN an item My_Item should be added to the list

    

Test Delete ToDo Item
    [Documentation]                 Test the deletion of a ToDo item
    [Tags]                          delete

    GIVEN that I have the item My_Item in the list
    WHEN I click on the X button corresponding to My_Item
    THEN the item My_Item should be removed from the list
