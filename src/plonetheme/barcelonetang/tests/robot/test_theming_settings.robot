*** Settings ***

Resource  keywords.robot

Suite Setup  Setup
Suite Teardown  Teardown


*** Test cases ***

Capture Plone Theming Settings Screenshots

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Capture page screenshot  spirit_plone_theming_overview.png


    # Show how to enable the debug mode

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select Checkbox  css=#form-widgets-debug-0
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-debug--activated.png
    ...  css=#spirit_plone_theming_diazo_snippets
    ...  css=#content-header
    ...  css=#above-content-wrapper

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Unselect Checkbox  css=#form-widgets-debug-0
    Click button  css=#form-buttons-save


    # Show how to change the header options

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select From List  id=form-widgets-header_option  header-default
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-header_option--header-default.png
    ...  css=#content-header
    ...  css=#above-content-wrapper

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select From List  id=form-widgets-header_option  --NOVALUE--
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-header_option--default.png
    ...  css=#content-header
    ...  css=#above-content-wrapper


    # Show how to change the footer options

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select From List  id=form-widgets-footer_option  footer-default
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-footer_option--footer-default.png
    ...  css=#portal-footer-wrapper

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select From List  id=form-widgets-footer_option  --NOVALUE--
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-footer_option--default.png
    ...  css=#portal-footer-wrapper


    # Show how to change the color options

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select From List  id=form-widgets-color_option  aqua
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-color_option--aqua.png
    ...  css=#main-wrapper

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select From List  id=form-widgets-color_option  blue
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-color_option--blue.png
    ...  css=#main-wrapper

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select From List  id=form-widgets-color_option  brown
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-color_option--brown.png
    ...  css=#main-wrapper

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select From List  id=form-widgets-color_option  green
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-color_option--green.png
    ...  css=#main-wrapper

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select From List  id=form-widgets-color_option  orange
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-color_option--orange.png
    ...  css=#main-wrapper

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select From List  id=form-widgets-color_option  red
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-color_option--red.png
    ...  css=#main-wrapper

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select From List  id=form-widgets-color_option  purple
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-color_option--purple.png
    ...  css=#main-wrapper

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select From List  id=form-widgets-color_option  --NOVALUE--
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-color_option--default.png
    ...  css=#main-wrapper


    # Show how to change the pattern options

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select From List  id=form-widgets-pattern_option  none
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-pattern_option--none.png
    ...  css=#main-wrapper

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select From List  id=form-widgets-pattern_option  --NOVALUE--
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-pattern_option--default.png
    ...  css=#main-wrapper


    # Show how to change the layout options

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select From List  id=form-widgets-layout_option  boxed
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-layout_option--boxed.png
    ...  css=body

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select From List  id=form-widgets-layout_option  wide
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-layout_option--wide.png
    ...  css=body

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select From List  id=form-widgets-layout_option  --NOVALUE--
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-layout_option--default.png
    ...  css=body


    # Show how to change the slogan

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Input text  id=form-widgets-slogan  <h1>This is our site slogan</h1>
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-slogan--activated.png
    ...  css=#content-header
    ...  css=#above-content-wrapper

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Clear Element Text  id=form-widgets-slogan
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-slogan--deactivated.png
    ...  css=#content-header
    ...  css=#above-content-wrapper


    # Show how to change the phone number

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Input text  id=form-widgets-phone_number  +1-234-567-890
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-phone_number--activated.png
    ...  css=#content-header
    ...  css=#above-content-wrapper

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Clear Element Text  id=form-widgets-phone_number
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-phone_number--deactivated.png
    ...  css=#content-header
    ...  css=#above-content-wrapper


    # Show how to change the e-mail address

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Input text  id=form-widgets-email  info@example.com
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-email--activated.png
    ...  css=#content-header
    ...  css=#above-content-wrapper

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Clear Element Text  id=form-widgets-email
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-email--deactivated.png
    ...  css=#content-header
    ...  css=#above-content-wrapper


    # Show how to hide the search box

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select Checkbox  css=#form-widgets-hide_searchbox-0
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-hide_searchbox--activated.png
    ...  css=#content-header
    ...  css=#above-content-wrapper

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Unselect Checkbox  css=#form-widgets-hide_searchbox-0
    Click button  css=#form-buttons-save


    # Show how to change the footer text

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Input text  id=form-widgets-footer_text  <p>&copy; Copyright 2009-{year} Your Company Name</p>
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}

    Highlight  css=#portal-footer-wrapper .copyright
    Capture and crop page screenshot
    ...  settings-footer_text--activated.png
    ...  css=#portal-footer-wrapper

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Clear Element Text  id=form-widgets-footer_text
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Highlight  css=#portal-footer-wrapper .copyright
    Capture and crop page screenshot
    ...  settings-footer_text--deactivated.png
    ...  css=#portal-footer-wrapper


    # Show how to hide the footer

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select Checkbox  css=#form-widgets-hide_footer-0
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-hide_footer--activated.png
    ...  css=#portal-footer-wrapper

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Unselect Checkbox  css=#form-widgets-hide_footer-0
    Click button  css=#form-buttons-save


    # Show how to change the colophon text

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Input text  id=form-widgets-colophon_text  <p>Powered by Plone, Python & <a href="{portal_url}">Your Company Name</a></p>
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Highlight  css=#portal-footer-wrapper .colophon
    Capture and crop page screenshot
    ...  settings-colophon_text--activated.png
    ...  css=#portal-footer-wrapper

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Clear Element Text  id=form-widgets-colophon_text
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Highlight  css=#portal-footer-wrapper .colophon
    Capture and crop page screenshot
    ...  settings-colophon_text--deactivated.png
    ...  css=#portal-footer-wrapper


    # Show how to hide the colophon

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Select Checkbox  css=#form-widgets-hide_colophon-0
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-hide_colophon--activated.png
    ...  css=#portal-footer-wrapper

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Unselect Checkbox  css=#form-widgets-hide_colophon-0
    Click button  css=#form-buttons-save
