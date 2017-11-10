*** Settings ***

Resource  keywords.robot

Suite Setup  Setup
Suite Teardown  Teardown


*** Test cases ***

Capture Plone Theming Settings Screenshot

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Capture page screenshot  spirit_plone_theming_overview.png


Show how to enable the debug mode

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


Show how to change the header options

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


Show how to change the footer options

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


Show how to change the color options

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
    Select From List  id=form-widgets-color_option  red
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-color_option--red.png
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
    Select From List  id=form-widgets-color_option  --NOVALUE--
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-color_option--default.png
    ...  css=#main-wrapper


Show how to change the pattern options

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


Show how to change the layout options

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


Show how to change the slogan

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Input text  id=form-widgets-slogan  <h1>This is our site slogan</h1>
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-slogan--activated.png
    ...  css=body

    Enable autologin as  Manager
    Go To  ${PLONE_URL}/@@plone-theming-settings
    Clear Element Text  id=form-widgets-slogan
    Click button  css=#form-buttons-save
    Disable autologin
    Go To  ${PLONE_URL}
    Capture and crop page screenshot
    ...  settings-slogan--deactivated.png
    ...  css=body
