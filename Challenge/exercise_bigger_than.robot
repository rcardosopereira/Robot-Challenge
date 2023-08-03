*** Settings ***
Library    Collections
Library    OperatingSystem

*** Test Cases ***
Find Two Largest Numbers Test
    ${numbers}    Create List    10    5    20    8    15   58  70
    ${largest_numbers}    Find Two Largest Numbers    ${numbers}
    Log To Console    The two largest numbers are: ${largest_numbers}


*** Keywords ***
Find Two Largest Numbers
    [Arguments]    @{numbers}
    ${flattened_numbers}    Evaluate    [item for sublist in ${numbers} for item in sublist]
    ${sorted_numbers}    Evaluate    sorted(${flattened_numbers}, key=int, reverse=True)
    ${largest_numbers}    Set Variable    ${sorted_numbers}[0:2]
    [Return]    ${largest_numbers}
