*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter is set to 10 the value is 10
    Go To  ${HOME_URL}
    Click  button >> text=Paina
    Fill Text  input[name="value"]  10
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 10 kertaa

When counter is set and button is pressed the counter continues from the set value
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  10
    Click  button >> text=Aseta
    Click  button >> text=Paina
    Get Text  body  *=  nappia painettu 11 kertaa
