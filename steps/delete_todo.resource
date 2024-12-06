*** Settings ***

Resource          ../base.resource

*** Keywords ***

GIVEN that I have the item ${item_name} in the list

    Verify ToDo Item ${item_name} Exists        

WHEN I click on the X button corresponding to ${item_name}

    ${DELETE_BUTTON}               Set Variable    xpath=//li/div/a[contains(@href, "${item_name}")]/../button[contains(@class, "destroy")]
    Click Button                   ${DELETE_BUTTON}
    Sleep                          2s
    Alert Should Be Present        Are you sure you want to delete ${item_name}?    action=ACCEPT

THEN the item ${item_name} should be removed from the list

    Verify ToDo Item ${item_name} Not Exists
    Sleep                          2s
    Capture Page Screenshot        after_deletion.png 
