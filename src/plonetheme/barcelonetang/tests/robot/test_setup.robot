*** Settings ***

Resource  keywords.robot

Suite Setup  Setup
Suite Teardown  Teardown


*** Test cases ***

Capture Setup Screenshots

    # Show how to activate the add-on

    Enable autologin as  Manager
    Go to  ${PLONE_URL}/prefs_install_products_form

    Page should contain element  xpath=//*[@value='plonetheme.barcelonetang']
    Assign id to element
    ...  xpath=//*[@value='plonetheme.barcelonetang']/ancestor::li
    ...  addons-addon
    Assign id to element
    ...  xpath=//*[@value='plonetheme.barcelonetang']/ancestor::ul/parent::*/parent::*
    ...  addons-enabled

    Highlight  addons-addon
    Capture and crop page screenshot
    ...  setup_select_add_on.png
    ...  id=addons-enabled

    Click button  xpath=//*[@value='plonetheme.barcelonetang']/ancestor::form//input[@type='submit']

    Page should contain element  xpath=//*[@value='plonetheme.barcelonetang']

    Assign id to element
    ...  xpath=//*[@value='plonetheme.barcelonetang']/ancestor::li
    ...  addons-addon
    Assign id to element
    ...  xpath=//*[@value='plonetheme.barcelonetang']/ancestor::ul/parent::*/parent::*
    ...  addons-enabled

    Highlight  addons-addon
    Capture and crop page screenshot
    ...  setup_select_add_on_installable.png
    ...  id=addons-enabled


    # Show how to upload as zip file

    Enable autologin as  Manager
    Go to  ${PLONE_URL}/@@theming-controlpanel

    Page should contain element  xpath=//a[@href='#overlay-upload']

    Assign id to element
    ...  xpath=//a[@href='#overlay-upload']
    ...  upload_btn

    Highlight  upload_btn
    Capture and crop page screenshot
    ...  theming_upload_btn.png
    ...  css=nav.autotoc-nav
    ...  css=.plone-btn-group

    Click link  id=upload_btn
    Wait until element is visible  css=.plone-modal-content

    Capture and crop page screenshot
    ...  theming_upload_dialog.png
    ...  css=.plone-modal-content
