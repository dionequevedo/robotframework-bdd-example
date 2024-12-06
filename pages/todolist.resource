*** Settings ***

Resource          ../steps/create_todo.resource
Resource          ../steps/delete_todo.resource

*** Keywords ***

Insert ToDo Item
    [Arguments]     ${item_name}
    
    Input Text      ${INPUT_TEXT}    ${item_name}

Create ScreenShot ${screenshot_name}
    
    Capture Page Screenshot    ${screenshot_name}
