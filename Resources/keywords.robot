*** Keywords ***
Begin Web Test
    Open Browser                about:blank  ${BROWSER}

Go to Web Page
    Load Page
    Verify Page Loaded

Load Page
    Go to                       ${URL}


Verify Page Loaded
    Wait until page contains    Your Amazon.com

Search for Product
    [Arguments]                 ${search_term}  ${search_results}
    Enter Search Term           ${search_term}
    Submit Search
    Verify Search Completed     ${search_term}  ${search_results}

Enter Search Term
    [Arguments]                 ${search_term}
    Input Text                  id:twotabsearchtextbox  ${search_term}

Submit Search
    Click Button                xpath://*[@id="nav-search"]/form/div[2]/div/input

Verify Search Completed
    [Arguments]                 ${search_term}  ${search_results}
    ${results_text} =           Set variable  results for "${search_term}"
    Should Be Equal             ${results_text}  ${search_results}

End Web Test
    Close Browser


