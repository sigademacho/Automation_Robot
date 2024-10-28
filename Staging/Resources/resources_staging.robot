*** Settings ***
Library     SeleniumLibrary


*** Variables ***
#Aldrin
${browser}      chrome
${url}      https://preprod-platform.jmj.bet/?clientId=71BBE7D8-FD04-459C-6D8B-08D9354E5B64&operatorToken=BAA4AF30-3FF5-40C9-A198-0AE0F3F396C6&userId=5F5F5097-8467-40B9-1A9B-08D9E484781D&languageCode=EN&currencyCode=INR&theme=red

#Back Office Locators
${bo_Url}                           https://preprod-bo.song88.com/login
${username_field}                   //input[@id='username']
${password_field}                   //input[@id='password']
${Selections_Options}               //div[@class='d-flex justify-content-between']
${bo_login}                         //button[@name='action' and @value='login']
${bo_admin_selection}               //div[contains(@class, 'access-item')][1]
${bo_sportsbook_clients_selection}      //div[contains(@class, 'access-item')][2]
${go_to_sportsbook_client_page}     //a[@href='/dashboard' and contains(@class, 'text-decoration-none')]
${bo_navigation_pane}               //nav[contains(@class, 'flex-column')]
${odds_engine_button}               //span[@class='nav-menu-text' and text()='Odds Engine']
${odds_engine_selection}            //span[@class='nav-menu-text' and text()='Asia']
${price_boost_nav_button}           //span[text()='Price Boost']
${price_boost_sub_container}       //ul[@class='sub-menu-container rounded mt-2']
${manage_boost_option}               //a[@class='sub-header-link text-decoration-none ps-2 pe-3 d-block']
${manage_boost_title}           //h4[text()='Manage Boost']
${add_boosted_odds_button}          //a[@class='btn btn-boosted-odds px-3']
${add_boosted_odds_modal_body}       //div[@class='modal-body']
${add_boosted_select_sports}        //select[@id='sportSelect']
${boosted_odds_modal_next_button}    //button[@class='btn modal-btn modal-save']
${qawstaket_odds}       //tr[@scope='row'][31]//td[@b-p4odlfmzbd='']/input
${add_boosted_oods_save_button}     //button[@class='btn modal-btn modal-save']

##Search Locators
${CaptureSaveURL}       C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\
${Search}       //div[@class="search-input-container"]
${Search_Input_Field}       xpath=//input[@class="search-input-field"]
${Search_Icon}     xpath=//span[@class="s88-icon icon-search"]
${Search_close_Button}      xpath=//button[@class="s88-icon icon-close"]
${search_results_container}     //div[@class="search-results-container"]
${search-result-item}       //div[@class="search-result-item"][1]

##Bet History Locators
${bet_history}    //div[@class="header-button bet-history"]
${Bet_History_Icon}     //span[@class='s88-icon icon-bet-history']
${Bet_History_Text_Label}       //span[text()='Bet History']
${Bet_History_Header_Right}     //div[@class="bet-history-header"]
${bet_history_container}        //div[@id="bethistory-container-desktop"]
${bet_history_bet_item_header}  //div[@class="bet-history-bet-item-header"]//span
${bet_history_icon}         //span[@class='s88-icon icon-bet-history']
${bet_history_title_name}     //span[@class='label' and text()='Bet History']
${bet_history_close_Icon}     //span[@class='s88-icon icon-close']
${bet_history_pending_tab}     //span[@class='active' and text()='PENDING']
${bet_history_settled_tab}     //span[@class='inactive' and text()='SETTLED']
${date_picker}      //div[@class='date-picker-label-container']
${s88_icon_search}    //span[@class='s88-icon icon-search']
${bet_history_search_icon_close}    //span[@class='s88-icon icon-close']
${bet_history_icon_filter_status}       //span[@class='s88-icon icon-filter-status']
${filter_options_container}     //div[@class='filter-options-container']
${bet_history_info_alert_container}     //div[@class="bet-history-info-alert-container"]
${bet_history_infor_alert_i}        //span[@class='bet-history-info-alert-icon']
${bet_history_infor_alert_message}  //span[@class='bet-history-info-alert-message' and text()='Contains settled bets in the last 30 days and all pending bets']
${bet_history_info_alert_close_button}      //*[@id="bethistory-container-desktop"]/div/div[4]/span
${bet_history_bet_item}      //div[@class="bet-history-bet-item"]
${bet_history_bet_item_bet_type_freebet_container}      //div[@class="bet-history-bet-item-bet-type-freebet-container"]
${bet_history_s88_icon_angle_arrow_down}     //div[@class="bet-history-bet-item-header"]//span
${bet_history_bet_item_selection_name_container}     //div[@class="bet-history-bet-item-selection-name-container"]
${bet_history_bet_item_selection_name}     //span[@class="bet-history-bet-item-selection-name "]
${bet_history_bet_item_market_name}     //div[@class="bet-history-bet-item-market-name"]
${bet_history_bet_item_status_odds_container}     //div[@class="bet-history-bet-item-odds"]
${bet_history_bet_item_status_running}      //div[@class="bet-history-bet-item-status running"]
${bet_history_stake_label}      //span[@class='label' and text()='Stake']
${bet_history_payout_label}     //span[@class='label' and text()='Payout']
${bet_history_bet_item_transaction_container_single}    //div[@class="bet-history-bet-item-transaction-container single"]
${bet_id_icon_copy}     //span[contains(@class, 's88-icon') and contains(@class, 'icon-copy-text')]
${bet_history_button}    //div[@class="app-header-button-container-desktop"]
${bet_history_container}        //div[@id="bethistory-container-desktop"]
${bet_history_bet_item}      //div[@class="bet-history-bet-item"]

#Early Page Locators
${earlyPresetdates}     //div[@class="early-preset-date-container"]

#My Bets Locators
${myBetsContainer}          //div[@class="bets-section-content desktop"]
${betSlipContainer}     //div[@class="bets-section-content desktop"]
${my_bets_tab}      //div[@class="tab-header "]
${show_only_cash_out_bet_text}      //span[@class="show-cashout-text"]
${parlay_stake_field}       //input[@id="betslip-input-stake-parlay-total"]

#Cashout Locators
${CashoutButton}        //div[@class="cashout-button "]
${CashOutSuccess}       //span[@class="betslip-message success"]
${confirm_cashout_button}     //div[@class="primary-btn confirm-cashout-button"]
${primary_btn_cashout_button}     //div[@class="my-bets-cashout-button-container"]

#Result Page Locators
${result_button}    //span[text()='Results']
${result_title_name}     //span[text()='Results']
${result_page_content}      //div[@class="container container-main container-full-height-flex-auto"]

#Wallet Balance Locators
${Wallet_Balance_Container}     //div[@class="balance-container"]
${Wallet_Balance_Currency_Label}    //span[@class="currency-code"]
${vertical_ellipsis}     //span[@class="vertical-ellipsis"]
${icon_user_avatar}     //span[@class="s88-icon icon-user-avatar"]
${user_id_text}         //span[@class="user-id-text"]
${full_user_info_close_button}     //div[@class="app-header-container-small desktop"]//span[@class="s88-icon icon-close"]
${apps_header_container_small_desktop}      //div[@class="app-header-container-small desktop"]

#Betting Rules
${betting_rules}    xpath=//div[@class="betting-rules-list"]

#Language Dropdpwn Locators
${lang_dropdown_Container}        //div[@class="language-dropdown-container"]
${Language_dropdown_button}     //span[@class="label"]
${lang_dropdown_options}    //div[@class="language-dropdown-label"][2]
#${select_second_lang_in_list}   //div[@class='language-dropdown-container']//span[@class="s88-icon icon-angle-arrow-down"][1]
${select_second_lang_in_list}   //span[@class="s88-icon icon-angle-arrow-down"][1]
${language_option}        //div[@class="language-dropdown-label"]
${select_language_one}      //img[@class='language-flag-icon' and @src='images/flags/30.svg']
${country_list}     //div[@class='language-dropdown-container']
${chinese_name}    //span[@class='label' and text()='简体中文']

#Bet Slip tabs
${Show_Betslip_Label}     //div[@class="sidebar_showbetslip_label"]
${bet_slip_tabs}        //div[@class="bets-section-tabs"]
${BetSlip_Empty_message}    //span[@class='message-common empty-betslip' and text()='Your betslip is empty']
${My_Bets_tab}      //span[text()='My Bets']
${Show_cashout_text_label}        //span[@class="show-cashout-text"]
${bets_section_content_desktop}     //div[@class="bets-section-content desktop"]
${BetAccepted}      //span[@class="betslip-message success"]
${StakeValue}      //div[@class="summary-details-item"]
${placebet-betslip-btn}     //div[@class="placebet-betslip-btn primary-btn "]
${stake_field}      //div[@class='singlebet-odds-container']//input
${Bet_slip_single_tab}      //div[text()='Single']
${multi_single_stake_field}     //input[@id="betslip-input-stake-single-total"]
${potential_payout_summary_details_item}    //div[@class="summary-details-item"]

#Bet Recommendation Locators
${bet_recommendation}      //div[@id='bet-recommendation']
${s88_icon_triangle_right}  //i[@class="s88-icon icon-triangle-right"]
${s88_icon_triangle_left}   //i[@class='s88-icon icon-triangle-left']


#Bet Builder
${betBuilderIcon}       //div[@class='market-group-text']

#Sports Tree Locators
${sports_tree_container}        //div[@class="sports-tree-container"]
${s88_iconicon_all_sports}     //span[@class='s88-icon icon-all-sports']
${All_sports_Title}     //span[@class='title' and text()='All Sports']
${s88_icon_circle_arrow_up}     //span[@class='s88-icon icon-circle-arrow-up']
${88_icon_circle_arrow_down}    //span[@class='s88-icon icon-circle-arrow-down']
${segment_sport_tree_item_sport_active}     //div[@class="sport-tree-item sport-active"]
${sidebar_content}      //div[@class="sidebar-content"]
${segment_sport_tree_item-icon_s88_icon_icon_soccer}    //span[@class='sport-tree-item-icon s88-icon icon-soccer']
${segment_Soccer_Sports_Name}       //span[@class='sportname' and text()='Soccer']
${segment_sport_count}      //span[@class='sport-count']
${Segment_Arrow_Up}     //span[@class='s88-icon icon-angle-arrow-up']
${Segment_Arrow_Down}     //span[@class='s88-icon icon-angle-arrow-down']
${league_Flag_Icon}     //img[@src='/images/flags/69.svg']
${league_Country_Name}  //span[@class='segmentname']
${league_icon_angle_arrow_down}     //span[@class='s88-icon icon-angle-arrow-down']
${league_Item_title}        //span[@class='league-item-title']

#Carousel locators
${Carousel_Container}       //div[@class="sports-carousel-container desktop"]
${sport_carousel_item_3D_icon}      //img[@src='images/3D-sport-icons/soccer.png']
${Carousel_Sports_Name}     //span[@class='sport-name']
${carousel_icon_triangle_right}        //div[@id='sports-carousel-arrow-right']
${carousel_icon_triangle_left}        //div[@id='sports-carousel-arrow-left']
${Carousel_inactive_sports}     //div[contains(@class, 'sport-item') and contains(@class, 'inactive')][15]


${bet_recomm_icon_triangle_right}        //i[@class="s88-icon icon-triangle-right"]
${bet_recomm_icon_triangle_left}        //i[@clasas="s88-icon icon-triangle-left"]

#Virtual Sports
${OutRights}        //div[@class='tab-item scope ' and text()='OUTRIGHTS']
${VirtualSoccer}        //span[@class='sportname' and text()='Virtual Soccer']
${virtual_sports_segment}       //span[@class='segmentname'and text()='Virtual Soccer']
${VirtualDogs}           //span[@class='sportname' and text()='Virtual Dogs']
@{virtualSoccerLeague}      //span[@class='league-item-title' and text()='Virtual Soccer Asian Cup']    //span[@class='league-item-title' and text()='Virtual Soccer Bundesliga']   Virtual Soccer Champions Cup    Virtual Soccer English League   Virtual Soccer Euro Cup  Virtual Soccer League Mode   Virtual Soccer Nations Cup    Virtual Soccer World Cup

#Price Boost
${outrights_selection_container_boosted_selection}    //div[@class="outrights-selection-container boosted-selection"]
${Price_Boost_button}      //div[@class="icon-header-favorite "]
${selection_odds_price_boost}       //div[@class="outrights-selection-container boosted-selection"]

#Announcements Locators
${announcements_icon_container}        //div[@class="announcements-icon-container "]
${s88_icon_announcements}     //span[@class='s88-icon icon-announcements']
${announcements_icon_count}        //div[@class="announcements-icon-count"]
${announcements_text_desktop}        //div[@class="announcements-text desktop"]
${announcements_banner}     //div[@class="announcements-banner"]
${announcements_close}        //div[@class='announcements-modal-header']/span[@class='s88-icon icon-close']

*** Keywords ***
#Aldrin
launchSportsbookUrl
      open browser          ${url}    ${browser}
      ${default_page}=    get location
      log to console      ${default_page}
      maximize browser window

GetLeaguesListItemsofVirtualSoccer
      Log    The first league of virtual soccer is: ${virtualSoccerLeague}[0]    # Access the first item
      Log    The second league of virtual soccer is: ${virtualSoccerLeague}[1]   # Access the second item
      Log    The third league of virtual soccer is: ${virtualSoccerLeague}[2]    # Access the first item
      Log    The fourth league of virtual soccer is: ${virtualSoccerLeague}[3]   # Access the second item
      #Log    The fifth league of virtual soccer is: ${virtualSoccerLeague}[4]    # Access the first item
      #Log    The sixth league of virtual soccer is: ${virtualSoccerLeague}[5]   # Access the second item
      #Log    The sevent league of virtual soccer is: ${virtualSoccerLeague}[6]    # Access the first item
      #Log    The eight league of virtual soccer is: ${virtualSoccerLeague}[7]   # Access the second item
      #${last_virtualSoccerLeague}=    get List Items    @{virtualSoccerLeague}    -1   # Access the last item
      #Log    The last league of virtual soccer is: ${last_virtualSoccerLeague}
      #${virtualSoccerLeague_count}=    Get Length    ${virtualSoccerLeague}   # Get the length of the list
      #Log    The total number of fruits is: ${virtualSoccerLeague_count}

gotoSportsbookEarly
      open browser          ${url}    ${browser}
      ${default_page}=    get location
      log to console      ${default_page}
      sleep       6
      maximize browser window
      sleep       3
      click element       xpath=//div[@class='tab-item scope ' and text()='EARLY']
      sleep       3
      Wait Until Element Is Visible       xpath=//div[@class="early-preset-date-container"]

SportsbookToday
      open browser          ${url}    ${browser}
      ${default_page}=    get location
      log to console      ${default_page}
      sleep       6
      maximize browser window
      sleep       3
      #click element       xpath=//div[@class='tab-item scope ' and text()='TODAY']
      #sleep       3
      #Wait Until Element Is Visible       xpath=//div[@class="early-preset-date-container"]

GotoPriceBoostPage
    open browser          ${url}    ${browser}
    ${default_page}=    get location
    log to console      ${default_page}
    sleep       6
    maximize browser window
    sleep       3
    element should be visible       class:icon-header-favorite :nth-child(1)
    sleep       3
    click element    class:icon-header-favorite :nth-child(1)
    sleep       6
    capture page screenshot         ${CaptureSaveURL}priceBoostPage.png
    sleep       3

GotoOutrigthsPage
    open browser          ${url}    ${browser}
    ${default_page}=    get location
    log to console      ${default_page}
    sleep       6
    maximize browser window
    Wait Until Element Is Visible       xpath=//div[@class='tab-item scope ' and text()='OUTRIGHTS']
    click element       xpath=//div[@class='tab-item scope ' and text()='OUTRIGHTS']
    sleep       3
    capture page screenshot         C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\OutrightsPage.png

GotoVirtualSoccer
    open browser          ${url}    ${browser}
      ${default_page}=    get location
      log to console      ${default_page}
      sleep       6
      maximize browser window
      sleep       3
      scroll element into view    ${VirtualDogs}

AddPriceBoostInBoAdmin
    [Tags]      BO
    open browser    ${bo_Url}       ${browser}
    ${default_page}=    get location
    log to console      ${default_page}
    wait until element is visible    ${username_field}
    element should be visible    ${username_field}
    element should be visible    ${password_field}
    element should be visible    ${bo_login}
    maximize browser window
    capture page screenshot    C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\logoutView.png
    input text    ${username_field}     Automation
    input text    ${password_field}     P@ssw0rd
    click element    ${bo_login}
    wait until element is visible    ${Selections_Options}
    capture element screenshot    ${Selections_Options}
    click element    ${go_to_sportsbook_client_page}
    wait until element is visible   ${bo_navigation_pane}
    element should be visible    ${bo_navigation_pane}
    capture page screenshot    C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\loginView.png
    click element    ${odds_engine_button}
    wait until element is visible    //span[@class='nav-menu-text' and text()='Asia']
    click element    //span[@class='nav-menu-text' and text()='Asia']
    wait until element is visible    ${price_boost_nav_button}
    capture page screenshot         C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\OddsEngine.png
    click element       ${price_boost_nav_button}
    wait until element is visible    ${price_boost_sub_container}
    click element    ${manage_boost_option}
    capture page screenshot         C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\priceBoostOption.png
    wait until element is visible    ${manage_boost_title}
    click element    ${add_boosted_odds_button}
    wait until element is visible    ${add_boosted_odds_modal_body}
    capture element screenshot    ${add_boosted_odds_modal_body}        modalbody.png
    click element    ${add_boosted_select_sports}
    sleep       6
    select from list by label    sportSelect        Boxing
    capture element screenshot    ${add_boosted_odds_modal_body}        sportsSelected.png
    sleep       3
    click element       ${boosted_odds_modal_next_button}
    wait until element is visible    ${qawstaket_odds}
    scroll element into view    ${qawstaket_odds}
    capture element screenshot    ${add_boosted_odds_modal_body}        oddsEdited.png
    input text    ${qawstaket_odds}     2.09
    wait until element is visible    ${add_boosted_oods_save_button}
    click element    ${add_boosted_oods_save_button}
    capture page screenshot         C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\priceBoostsave.png
    close browser

GotoBoAdmin
    [Tags]      BO      regression
    open browser    ${bo_Url}       ${browser}
    ${default_page}=    get location
    log to console      ${default_page}
    wait until element is visible    ${username_field}
    element should be visible    ${username_field}
    element should be visible    ${password_field}
    element should be visible    ${bo_login}
    maximize browser window
    capture page screenshot    C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\logoutView.png
    input text    ${username_field}     Automation
    input text    ${password_field}     P@ssw0rd
    click element    ${bo_login}
    wait until element is visible    ${Selections_Options}
    capture element screenshot    ${Selections_Options}
    click element    ${go_to_sportsbook_client_page}
    wait until element is visible   ${bo_navigation_pane}
    element should be visible    ${bo_navigation_pane}
    capture page screenshot    C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\loginView.png
    click element    ${odds_engine_button}
    wait until element is visible    //span[@class='nav-menu-text' and text()='Asia']
    click element    //span[@class='nav-menu-text' and text()='Asia']
    wait until element is visible    ${price_boost_nav_button}
    capture page screenshot         C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\OddsEngine.png
    click element       ${price_boost_nav_button}
    wait until element is visible    ${price_boost_sub_container}
    click element    ${manage_boost_option}
    capture page screenshot         C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\priceBoostOption.png
    wait until element is visible    ${manage_boost_title}
    click element    ${add_boosted_odds_button}
    wait until element is visible    ${add_boosted_odds_modal_body}
    capture element screenshot    ${add_boosted_odds_modal_body}        modalbody.png
    click element    ${add_boosted_select_sports}
    sleep       6
    select from list by label    sportSelect        Soccer
    capture element screenshot    ${add_boosted_odds_modal_body}        sportsSelected.png
    sleep       3
    click element       ${boosted_odds_modal_next_button}
    wait until element is visible    ${qawstaket_odds}
    scroll element into view    ${qawstaket_odds}
    capture element screenshot    ${add_boosted_odds_modal_body}        oddsEdited.png
    input text    ${qawstaket_odds}     2.09
    wait until element is visible    ${add_boosted_oods_save_button}
    click element    ${add_boosted_oods_save_button}
    capture page screenshot         C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\priceBoostsave.png
    close browser

PlacingSingleBet
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
    sleep    6
    wait until element is visible   ${BetAccepted}
    element should contain    ${BetAccepted}    Bet Accepted
    capture element screenshot    ${BetAccepted}        betAccepted.png

Bet Placement Virtual Sports
    [Tags]      regression      BetPlacementVirtualSoccer
    GotoVirtualSoccer
    Wait Until Element Is Enabled    ${VirtualSoccer}
    click element   ${VirtualSoccer}
    sleep       2
    capture page screenshot         C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\VsoccerSportstree.png
    Element Should Contain    xpath=//span[@class='segmentname']        Virtual Soccer
    click element    ${virtual_sports_segment}
    sleep       6
    ${elements}=    Get WebElements    class:selection
    ${first_element}=    Set Variable    ${elements}[10]
    Wait Until Page Contains Element    ${first_element}    timeout=60
    #Log    The element is now present on the page.
    Click Element    ${first_element}
    sleep    3
    wait until element is visible    ${myBetsContainer}
    element should be visible    ${myBetsContainer}
    capture page screenshot         C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\VSsoccer.png
    Capture Element Screenshot      ${myBetsContainer}    ${CaptureSaveURL}betSlipSection.png
    Wait Until Element Is Enabled    ${stake_field}    timeout=15
    ${"Stake"}      set variable    ${stake_field}
    element should be visible       ${"Stake"}
    input text    ${"Stake"}        92
    Wait Until Element Is Enabled    xpath=//div[@class='summary-details-item']    timeout=15
    ${TotaPotentialPayout}      get text    xpath=//div[@class='summary-details-item']
    log    ${TotaPotentialPayout}
    sleep    3
    click element    ${placebet-betslip-btn}
    wait until element is visible    ${BetAccepted}
    element should contain    ${BetAccepted}    Bet Accepted
    capture element screenshot    ${BetAccepted}        betAccepted.png
    capture page screenshot         C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\VirtualSoccerPage.png
    sleep       3
    click element    xpath=//div[@class="tab-header "]
    sleep       3
    element should contain      //span[@class="show-cashout-text"]      Show only cash out bets
    sleep       3
    capture element screenshot    ${myBetsContainer}        myBetsContainer.png
    sleep       3
    click element      ${bet_history_button}
    sleep       3
    Wait Until Element Is Visible  xpath=//div[@class="bet-history-header"]
    sleep       3
    Capture Element Screenshot     ${bet_history}    betHistory.png
    Capture Element Screenshot       ${bet_history_container}    bethistoryContainer.png
    close browser







