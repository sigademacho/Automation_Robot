*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources_staging.robot

Suite Setup     log to console      Opening Browser
Suite Teardown      log to console      Closing Browser

Test Setup      log to console      Login to application
Test Teardown   log to console      Logout from application

*** Variables ***


*** Test Cases ***
Bet Placement Single
    [Tags]      regression      SingleBet
    gotoSportsbookEarly
    sleep       3
    wait until element is visible    ${Search}
    ${elements}=    Get WebElements    class:selection
    ${select_first_odds}=    Set Variable    ${elements}[2]
    sleep    6
    scroll element into view    ${select_first_odds}
    click element    ${select_first_odds}
    wait until element is visible    ${betSlipContainer}
    element should be visible    ${betSlipContainer}
    capture page screenshot         C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\EarlyBetSlip.png
    Capture Element Screenshot         ${myBetsContainer}   ${CaptureSaveURL}betSlipSection.png
    wait until element is visible    ${stake_field}
    ${"Stake"}      set variable    ${stake_field}
    element should be visible       ${"Stake"}
    input text    ${"Stake"}        92
    wait until element is visible    xpath=//div[@class='summary-details-item']
    ${TotaPotentialPayout}      get text    xpath=//div[@class='summary-details-item']
    log    ${TotaPotentialPayout}
    wait until element is visible    ${placebet-betslip-btn}
    click element    ${placebet-betslip-btn}
    wait until element is visible   ${BetAccepted}
    element should contain    ${BetAccepted}    Bet Accepted
    capture element screenshot    ${BetAccepted}        betAccepted.png
    wait until element is visible    ${my_bets_tab}
    click element    ${my_bets_tab}
    wait until element is visible    ${show_only_cash_out_bet_text}
    element should contain      ${show_only_cash_out_bet_text}        Show only cash out bets
    capture element screenshot    ${myBetsContainer}        myBetsContainer.png
    click element     ${bet_history}
    Wait Until Element Is Visible  ${bet_history_bet_item}
    Capture Element Screenshot       ${bet_history_container}    bethistoryContainer.png
    close browser

Bet Placement Parlay
    [Tags]      regression      ParlayBet
    gotoSportsbookEarly
    wait until element is visible    ${Search}
    ${elements}=    Get WebElements    class:selection
    ${first_odds}=    Set Variable    ${elements}[2]
    sleep    15
    Click Element    ${first_odds}
    wait until element is visible    ${first_odds}
    ${second_odds}=    Set Variable    ${elements}[15]
    Click Element    ${second_odds}
    wait until element is visible    ${second_odds}
    element should be visible    ${betSlipContainer}
    wait until element is visible    ${betSlipContainer}
    capture page screenshot         C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\EarlyBetSlip.png
    Capture Element Screenshot      ${betSlipContainer}    betSlipSection.png
    ${"ParlayStake"}      set variable    ${parlay_stake_field}
    wait until element is visible    ${"ParlayStake"}
    element should be visible         ${"ParlayStake"}
    input text      ${"ParlayStake"}         95
    wait until element is visible    ${placebet-betslip-btn}
    click element    ${placebet-betslip-btn}
    wait until element is visible    ${BetAccepted}
    element should contain    ${BetAccepted}    Bet Accepted
    capture element screenshot    ${BetAccepted}        betAccepted.png
    click element    ${my_bets_tab}
    wait until element is visible    ${show_only_cash_out_bet_text}
    element should contain      ${show_only_cash_out_bet_text}      Show only cash out bets
    capture element screenshot    ${myBetsContainer}        myBetsContainer.png
    wait until element is visible    ${bet_history}
    click element      ${bet_history}
    Wait Until Element Is Visible  ${Bet_History_Header_Right}
    wait until element is visible    ${bet_history}
    Capture Element Screenshot     ${bet_history}    betHistory.png
    Capture Element Screenshot       ${bet_history_container}    bethistoryContainer.png
    close browser

Bet Placement Multi Single
    [Tags]      regression      MultiSingle
    gotoSportsbookEarly
    sleep       3
    wait until element is visible    ${Search}
    ${elements}=    Get WebElements    class:selection
    ${first_odds}=    Set Variable    ${elements}[2]
    sleep    15
    Click Element    ${first_odds}
    wait until element is visible    ${first_odds}
    ${second_odds}=    Set Variable    ${elements}[15]
    Click Element    ${second_odds}
    wait until element is visible    ${second_odds}
    ${Third_odds}=    Set Variable    ${elements}[31]
    Click Element    ${Third_odds}
    wait until element is visible    ${Third_odds}
    element should be visible    ${betSlipContainer}
    wait until element is visible    ${Bet_slip_single_tab}
    click element    ${Bet_slip_single_tab}
    wait until element is visible    ${myBetsContainer}
    capture page screenshot         C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\EarlyBetSlip.png
    Capture Element Screenshot      ${myBetsContainer}    betSlipSection.png
    wait until element is visible    ${multi_single_stake_field}
    ${MultiSingleBet}   set variable    ${multi_single_stake_field}
    element should be visible         ${MultiSingleBet}
    input text      ${MultiSingleBet}         98
    wait until element is visible    ${placebet-betslip-btn}
    click element    ${placebet-betslip-btn}
    wait until element is visible    ${BetAccepted}
    element should contain    ${BetAccepted}    Bet Accepted
    capture element screenshot    ${BetAccepted}        betAccepted.png
    wait until element is visible    ${my_bets_tab}
    click element    ${my_bets_tab}
    wait until element is visible    ${show_only_cash_out_bet_text}
    element should contain      ${show_only_cash_out_bet_text}      Show only cash out bets
    wait until element is visible    ${myBetsContainer}
    capture element screenshot    ${myBetsContainer}        myBetsContainer.png
    wait until element is visible    ${bet_history}
    click element      ${bet_history}
    Wait Until Element Is Visible  ${Bet_History_Header_Right}
    Capture Element Screenshot     ${bet_history}    betHistory.png
    Capture Element Screenshot       ${bet_history_container}    bethistoryContainer.png
    close browser

Bet Placement Under Outrights
    [Tags]      regression      BetPlacementOutrights
    GotoOutrigthsPage
    wait until element is visible    ${Search}
    ${elements}=    Get WebElements    class:outrights-selection-container
    ${select_odds}=    Set Variable    ${elements}[2]
    Click Element    ${select_odds}
    wait until element is visible    ${stake_field}
    capture page screenshot         ${CaptureSaveURL}OutrightsPage.png
    ${"Stake"}      set variable    ${stake_field}
    element should be visible       ${"Stake"}
    input text    ${"Stake"}        94
    wait until element is visible    ${potential_payout_summary_details_item}
    ${TotaPotentialPayout}      get text    ${potential_payout_summary_details_item}
    log    ${TotaPotentialPayout}
    wait until element is visible    ${placebet-betslip-btn}
    click element    ${placebet-betslip-btn}
    wait until element is visible    ${BetAccepted}
    element should contain    ${BetAccepted}    Bet Accepted
    capture element screenshot    ${BetAccepted}        betAccepted.png
    wait until element is visible    ${my_bets_tab}
    click element    ${my_bets_tab}
    wait until element is visible    ${show_only_cash_out_bet_text}
    element should contain      ${show_only_cash_out_bet_text}      Show only cash out bets
    capture element screenshot    ${myBetsContainer}        myBetsContainer.png
    click element      ${bet_history}
    wait until element is visible    ${bet_history}
    Wait Until Element Is Visible  ${Bet_History_Header_Right}
    sleep       3
    Capture Element Screenshot     ${bet_history}    betHistory.png
    Capture Element Screenshot       ${bet_history_container}    bethistoryContainer.png
    close browser

*** Keywords ***


