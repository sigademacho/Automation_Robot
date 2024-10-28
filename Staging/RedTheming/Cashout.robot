*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources_staging.robot

Suite Setup     log to console      Opening Browser
Suite Teardown      log to console      Closing Browser

Test Setup      log to console      Login to application
Test Teardown   log to console      Logout from application

*** Variables ***


*** Test Cases ***
CashoutTesting
    [Tags]  regression  CashoutTesting
        gotoSportsbookEarly
        wait until element is visible    ${Search}
        PlacingSingleBet
        wait until element is visible   ${my_bets_tab}
        click element    ${my_bets_tab}
        wait until element is visible    ${show_only_cash_out_bet_text}
        element should contain      ${show_only_cash_out_bet_text}      Show only cash out bets
        capture element screenshot    ${myBetsContainer}        myBetsContainer.png
        click element      ${primary_btn_cashout_button}
        sleep    3
        wait until element is visible    ${myBetsContainer}
        capture element screenshot    ${myBetsContainer}        confirmCashout.png
        click element     ${confirm_cashout_button}
        wait until element is visible    ${CashOutSuccess}
        element should contain    ${CashOutSuccess}    Cashout Success
        capture element screenshot    ${CashOutSuccess}        cashoutSuccess.png
        sleep    3
        wait until element is visible    ${bet_history}
        click element      ${bet_history}
        Wait Until Element Is Visible  ${Bet_History_Header_Right}
        sleep       3
        Capture Element Screenshot     ${bet_history}    betHistory.png
        Capture Element Screenshot       ${bet_history_container}    bethistoryContainer.png
        click element       xpath=//span[@class="inactive"]
        sleep       3
        Capture Element Screenshot       ${bet_history_container}    settledTab.png
        close browser

*** Keywords ***






