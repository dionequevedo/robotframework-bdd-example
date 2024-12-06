*** Settings ***

Library             SeleniumLibrary

Resource            pages/todolist.resource
Resource            steps/create_todo.resource
Resource            steps/delete_todo.resource

*** Variables ***
${URL}              https://eviltester.github.io/simpletodolist/todolists.html
${BROWSER}          chrome
${INPUT_TEXT}       xpath=//*[@class="new-todo-list"]


*** Keywords ***
Open Browser ToDo List
    Open Browser                     ${URL}    ${BROWSER}
    Maximize Browser Window

GIVEN that I am on the page

    Location Should Be                ${URL}


Verify ToDo Item ${item_name} Exists  

    ${CREATED_ITEM}                  Set Variable     xpath=//a[contains(@href, '${item_name}')]
    Element Should Be Visible        ${CREATED_ITEM}

Verify ToDo Item ${item_name} Not Exists

    ${CREATED_ITEM}                  Set Variable     xpath=//*[contains(@text(), '${item_name}')]
    Element Should Not Be Visible    ${CREATED_ITEM}

Press ENTER

    ${ITEM}                          Set Variable     xpath=//*[@class="new-todo-list"]
    Press Keys                       ${ITEM}    '\ue006'

Finish Suite

    Close Browser
