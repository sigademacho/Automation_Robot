*** Settings ***
Library   SeleniumLibrary
Resource   ../Resources/resources_staging.robot

Suite Setup     log to console      Opening Browser
Suite Teardown      log to console      Closing Browser

Test Setup      log to console      Login to application
Test Teardown   log to console      Logout from application

*** Variables ***

*** Test Cases ***
1 Assert Search Elements
        [Tags]  regression      Search
        launchSportsbookUrl
        sleep    6
        wait until element is visible    ${Search}
        Wait Until Element Is Visible   ${Search_Icon}
        Wait Until Element Is Visible   ${Search_Input_Field}
        Wait Until Element Is Visible   ${Search_close_Button}
        click element      ${Search_Input_Field}
        input text   ${Search_Input_Field}      NBA
        Capture Element Screenshot     ${Search}    Search.png
        wait until element is visible    ${search_results_container}
        element should be visible    ${search_results_container}
        capture element screenshot    ${search_results_container}
        click element    ${search-result-item}
        sleep       20
        close browser

2 Assert Bet History button and Bet History Container Elements
       [Tags]  regression   BetHistory
       launchSportsbookUrl
       sleep    3
       Wait Until Element Is Visible    ${Bet_History_Icon}
       Wait Until Element Is Visible   ${bet_history}
       Wait Until Element Is Visible  ${Bet_History_Text_Label}
       click element      ${bet_history}
       Wait Until Element Is Visible  ${Bet_History_Header_Right}
       Capture Element Screenshot      ${bet_history}    betHistory.png
       Capture Element Screenshot       ${bet_history_container}    bethistoryContainer.png
       element should be visible    ${bet_history_icon}
       capture element screenshot    ${bet_history_icon}
       element should be visible    ${bet_history_title_name}
       capture element screenshot    ${bet_history_title_name}
       element should be visible    ${bet_history_close_Icon}
       capture element screenshot    ${bet_history_close_Icon}
       element should be visible    ${bet_history_pending_tab}
       capture element screenshot    ${bet_history_pending_tab}
       element should be visible    ${bet_history_settled_tab}
       capture element screenshot    ${bet_history_settled_tab}
       element should be visible    ${date_picker}
       capture element screenshot    ${date_picker}
       element should be visible    ${s88_icon_search}
       capture element screenshot    ${s88_icon_search}
       element should be visible    ${bet_history_search_icon_close}
       capture element screenshot    ${bet_history_search_icon_close}
       element should be visible    ${bet_history_icon_filter_status}
       capture element screenshot    ${bet_history_icon_filter_status}
       click element                 ${bet_history_icon_filter_status}
       wait until element is visible    ${filter_options_container}
       element should be visible    ${filter_options_container}
       capture element screenshot    ${filter_options_container}
       click element                 ${bet_history_icon_filter_status}
       sleep    2
       element should be visible    ${bet_history_info_alert_container}
       capture element screenshot    ${bet_history_info_alert_container}
       element should be visible    ${bet_history_infor_alert_i}
       capture element screenshot    ${bet_history_infor_alert_i}
       element should be visible    ${bet_history_infor_alert_message}
       capture element screenshot    ${bet_history_infor_alert_message}
       element should be visible    ${bet_history_info_alert_close_button}
       capture element screenshot    ${bet_history_info_alert_close_button}
       element should be visible    ${bet_history_bet_item}
       capture element screenshot    ${bet_history_bet_item}
       element should be visible    ${bet_history_bet_item_bet_type_freebet_container}
       capture element screenshot    ${bet_history_bet_item_bet_type_freebet_container}
       element should be visible    ${bet_history_s88_icon_angle_arrow_down}
       capture element screenshot    ${bet_history_s88_icon_angle_arrow_down}
       element should be visible    ${bet_history_bet_item_selection_name_container}
       capture element screenshot    ${bet_history_bet_item_selection_name_container}
       element should be visible    ${bet_history_bet_item_selection_name}
       capture element screenshot    ${bet_history_bet_item_selection_name}
       element should be visible    ${bet_history_bet_item_market_name}
       capture element screenshot    ${bet_history_bet_item_market_name}
       element should be visible    ${bet_history_bet_item_status_odds_container}
       capture element screenshot    ${bet_history_bet_item_status_odds_container}
       element should be visible    ${bet_history_bet_item_status_running}
       capture element screenshot    ${bet_history_bet_item_status_running}
       element should be visible    ${bet_history_stake_label}
       capture element screenshot    ${bet_history_stake_label}
       element should be visible    ${bet_history_payout_label}
       capture element screenshot    ${bet_history_payout_label}
       click element                ${bet_history_s88_icon_angle_arrow_down}
       close browser

3 Assert Result Page
       [Tags]       regression      ResultPage
       launchSportsbookUrl
       sleep    3
       Wait Until Element Is Visible   ${result_button}
       click element                   ${result_button}
       sleep  3
       Capture Element Screenshot     ${result_button}    Resultpage.png
       open browser     https://ls.sir.sportradar.com/fc1/      chrome
       wait until element is visible    ${result_page_content}
       Capture Element Screenshot   ${result_page _content}     resultPageContent.png
       close browser

4 Assert Wallet Balance Container
      [Tags]  regression    WalletBalance
      launchSportsbookUrl
      sleep   3
      Wait Until Element Is Visible    ${Wallet_Balance_Container}
      capture element screenshot    ${apps_header_container_small_desktop}
      Capture Element Screenshot    ${Wallet_Balance_Container}   Walletbalance.png
      Wait Until Element Is Visible    ${Wallet_Balance_Currency_Label}
      Capture Element Screenshot    ${Wallet_Balance_Currency_Label}   WalletBalanceCurrency.png
      element should be visible    ${vertical_ellipsis}
      click element                ${vertical_ellipsis}
      wait until element is visible    ${icon_user_avatar}
      element should be visible    ${icon_user_avatar}
      capture element screenshot    ${icon_user_avatar}
      element should be visible    ${user_id_text}
      capture element screenshot    ${user_id_text}
      element should be visible    ${full_user_info_close_button}
      capture element screenshot    ${full_user_info_close_button}
      capture element screenshot    ${apps_header_container_small_desktop}
      click element    ${full_user_info_close_button}
      sleep     3
      element should not be visible    ${icon_user_avatar}
      capture element screenshot    ${apps_header_container_small_desktop}
      close browser

5 Assert Language Dropdown
      [Tags]     regression   LangDropdown
      launchSportsbookUrl
      wait until element is visible    ${lang_dropdown_Container}
      click element                   ${Language_dropdown_button}
      sleep    3
      Capture Element Screenshot    ${lang_dropdown_Container}    Langdropdown.png
      #Chinese
      click element                   //img[@class='language-flag-icon' and @src='images/flags/30.svg']
      wait until element is visible      ${lang_dropdown_Container}
      sleep    3
      capture page screenshot    C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\chinesePage.png
      #Japanese
      click element                   ${Language_dropdown_button}
      sleep     3
      wait until element is visible    ${Language_dropdown_button}
      click element                   //img[@class='language-flag-icon' and @src='images/flags/71.svg']
      sleep    3
      wait until element is visible      ${lang_dropdown_Container}
      capture page screenshot    C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\JapanPage.png
      #Korea
      click element                   ${Language_dropdown_button}
      sleep     3
      wait until element is visible    ${Language_dropdown_button}
      click element                   //img[@class='language-flag-icon' and @src='images/flags/75.svg']
      sleep    3
      wait until element is visible      ${lang_dropdown_Container}
      capture page screenshot    C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\KoreaPage.png
      #indonesia
      click element                   ${Language_dropdown_button}
      sleep     3
      wait until element is visible    ${Language_dropdown_button}
      click element                   //img[@class='language-flag-icon' and @src='images/flags/64.svg']
      sleep    3
      wait until element is visible      ${lang_dropdown_Container}
      capture page screenshot    C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\indoPage.png
      #Vietnam
      click element                   ${Language_dropdown_button}
      sleep     3
      wait until element is visible    ${Language_dropdown_button}
      click element                   //img[@class='language-flag-icon' and @src='images/flags/155.svg']
      sleep    3
      wait until element is visible      ${lang_dropdown_Container}
      capture page screenshot    C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\vietnamPage.png
      #Thailand
      click element                   ${Language_dropdown_button}
      sleep     3
      wait until element is visible    ${Language_dropdown_button}
      click element                   //img[@class='language-flag-icon' and @src='images/flags/141.svg']
      sleep    3
      wait until element is visible      ${lang_dropdown_Container}
      #capture page screenshot    C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\thaiPage.png
      #Puturguese
      click element                   ${Language_dropdown_button}
      sleep     3
      wait until element is visible    ${Language_dropdown_button}
      click element                   //img[@class='language-flag-icon' and @src='images/flags/117.svg']
      sleep    3
      wait until element is visible      ${lang_dropdown_Container}
      capture page screenshot    C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\ptPage.png
      #Spain
      click element                   ${Language_dropdown_button}
      sleep     3
      wait until element is visible    ${Language_dropdown_button}
      click element                   //img[@class='language-flag-icon' and @src='images/flags/133.svg']
      sleep    3
      wait until element is visible      ${lang_dropdown_Container}
      capture page screenshot    C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\spainPage.png
      #Brazil
      click element                   ${Language_dropdown_button}
      sleep     3
      wait until element is visible    ${Language_dropdown_button}
      click element                   //img[@class='language-flag-icon' and @src='images/flags/22.svg']
      sleep    3
      wait until element is visible      ${lang_dropdown_Container}
      capture page screenshot    C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\brazilPage.png
      #Turkey
      click element                   ${Language_dropdown_button}
      sleep     3
      wait until element is visible    ${Language_dropdown_button}
      click element                   //img[@class='language-flag-icon' and @src='images/flags/145.svg']
      sleep    3
      wait until element is visible      ${lang_dropdown_Container}
      capture page screenshot    C:\Users\adelarea_flyingcocka\PycharmProjects\StandaloneProject\TurkeyPage.png
      close browser

6 Assert Betslip Section Tabs
      [Tags]     regression     BetslipSectionTab
      launchSportsbookUrl
      sleep     3
      Wait Until Element Is Visible     ${bet_slip_tabs}
      wait until element is visible    ${BetSlip_Empty_message}
      Capture Element Screenshot    ${bet_slip_tabs}       betSlipTabs.png
      click element     ${My_Bets_tab}
      sleep    3
      wait until element is visible    ${Show_cashout_text_label}
      element should contain   ${Show_cashout_text_label}      Show only cash out bets
      capture element screenshot    ${bets_section_content_desktop}     myBetsContainer.png
      close browser

7 Assert Bet Recommendation Container
      [Tags]     regression     BetRecomm
      launchSportsbookUrl
      sleep    3
      Wait Until Element Is Visible     ${bet_recommendation}
      element should be visible    ${bet_recommendation}
      Capture Element Screenshot    ${bet_recommendation}       betRecomm.png
      element should be visible     ${s88_icon_triangle_right}
      capture element screenshot    ${s88_icon_triangle_right}
      click element    ${s88_icon_triangle_right}
      click element    ${s88_icon_triangle_right}
      sleep    3
      wait until element is visible    ${s88_icon_triangle_left}
      element should be visible    ${s88_icon_triangle_left}
      capture element screenshot    ${s88_icon_triangle_left}
      close browser

8 Assert Sports Tree Container
      [Tags]     regression     SportsTree
      launchSportsbookUrl
      sleep     3
      Wait Until Element Is Visible     ${sports_tree_container}
      element should be visible    ${sports_tree_container}
      element should be visible    ${s88_iconicon_all_sports}
      element should be visible    ${All_sports_Title}
      element should be visible    ${s88_icon_circle_arrow_up}
      Capture Element Screenshot        ${sports_tree_container}    sprtsTree.png
      click element    ${s88_icon_circle_arrow_up}
      sleep    3
      element should not be visible    ${segment_sport_tree_item_sport_active}
      capture element screenshot    ${sidebar_content}
      click element    ${88_icon_circle_arrow_down}
      wait until element is visible    ${segment_sport_tree_item_sport_active}
      element should be visible    ${segment_sport_tree_item_sport_active}
      capture element screenshot    ${sidebar_content}
      element should be visible     ${segment_sport_tree_item-icon_s88_icon_icon_soccer}
      capture element screenshot    ${segment_sport_tree_item-icon_s88_icon_icon_soccer}
      element should be visible    ${segment_Soccer_Sports_Name}
      capture element screenshot    ${segment_Soccer_Sports_Name}
      element should be visible    ${segment_sport_count}
      capture element screenshot    ${segment_sport_count}
      element should be visible      ${Segment_Arrow_Up}
      capture element screenshot    ${Segment_Arrow_Up}
      click element    ${Segment_Arrow_Up}
      sleep     3
      capture element screenshot    ${sidebar_content}
      click element     ${Segment_Arrow_Down}
      wait until element is visible    ${league_Flag_Icon}
      capture element screenshot    ${sidebar_content}
      element should be visible    ${league_Flag_Icon}
      element should be visible    ${league_Country_Name}
      element should be visible    ${league_icon_angle_arrow_down}
      click element        ${league_icon_angle_arrow_down}
      wait until element is visible    ${league_Item_title}
      capture element screenshot    ${sidebar_content}
      close browser

9 Assert Carousel Container
      [Tags]     regression     Carousel
      launchSportsbookUrl
      sleep     3
      Wait Until Element Is Visible          ${Carousel_Container}
      Capture Element Screenshot        ${Carousel_Container}     carouselContainer.png
      element should be visible    ${sport_carousel_item_3D_icon}
      capture element screenshot   ${sport_carousel_item_3D_icon}
      element should be visible    ${Carousel_Sports_Name}
      capture element screenshot    ${Carousel_Sports_Name}
      element should be visible    ${carousel_icon_triangle_right}
      capture element screenshot    ${carousel_icon_triangle_right}
      click element    ${carousel_icon_triangle_right}
      click element    ${carousel_icon_triangle_right}
      sleep     3
      wait until element is visible    ${carousel_icon_triangle_left}
      element should be visible    ${carousel_icon_triangle_left}
      capture element screenshot    ${carousel_icon_triangle_left}
      click element     ${Carousel_inactive_sports}
      sleep     3
      capture element screenshot    ${Carousel_Container}
      close browser


*** Keywords ***



