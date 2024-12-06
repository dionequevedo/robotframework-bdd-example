*** Settings ***

Resource          ../base.resource

*** Keywords ***

WHEN I enter the word ${item_name}

    Create ScreenShot before_item_insertion.png
    Insert ToDo Item               ${item_name}

AND press the ENTER key after typing ${item_name}

    Press ENTER

THEN an item ${item_name} should be added to the list

    Verify ToDo Item ${item_name} Exists        
    Create ScreenShot after_item_insertion.png
