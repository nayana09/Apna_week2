*** Settings ***
Library     AppiumLibrary


*** Test Cases ***
user should be able to search in Apna application
    Launch the Apna Application

User need to login and get otp 
    OTPs and phone number should be generated randomly for staging environment

User need to create their profile
    Positive Scenarios on User Registration Feilds

User need to create there work experience 
    User work experience as fresher 

User Need to give his/her edu details
    User educ details 

User need to upload photo from Gallery
    Upload photo from gallery

User need to upload photo from Camera
    Upload from Camera

User need to Capturing toast messages on Selecting the Job Categories more than 4 groups
    Capturing toast messages on Selecting the Job Categories more than 4 groups

User need to Connect with Friends, Overlay screens
    Connect with Friends, Overlay screens
    





*** Keywords ***
Launch the Apna Application
    Open Application  ${mir_server}  platformName=${platformName}  platformVersion=${platformVersion}  deviceName=${deviceName}   appActivity=${app_activity}  appPackage=${app_package}  noReset=true
  
OTPs and phone number should be generated randomly for staging environment
    Wait Until Page Contains Element  ${Login}  timeout=30s
    Sleep  3s
    Input Text  ${Login}  7456677885
    sleep  3s 
    Capture Page Screenshot  Login.png
    sleep  3s 
    Click Element  ${send}  
    Sleep  3s
    Wait Until Element Is Visible  ${enter_otp}  timeout=30s
    Input Text  ${otp1}  3
    Input Text  ${otp2}  1
    Input Text  ${otp3}  3
    Input Text  ${otp4}  4 
    Sleep  3s
    Capture Page Screenshot  otp.png
    #User should be able to choose there language 
    sleep  5s
    Click Element  xpath=//android.widget.TextView[@text="English"]
    sleep  5s
    Click Element  id=com.apnatime.debug:id/btn_continue
    sleep  5s
    Click Element  xpath=//android.widget.Button[@text="Let’s go!"]
    sleep  5s
Positive Scenarios on User Registration Feilds
    Input Text  ${name}  Nayana K
    Click Element  id=com.apnatime.debug:id/act_profile_info_et_city
    sleep  5s
    Click Element  xpath=//android.widget.TextView[@text="Bengaluru"]
    #selecting location
    sleep  5s
    Click Element  id=com.apnatime.debug:id/act_profile_info_et_location
    sleep  5s
    Click Element  xpath=//android.widget.TextView[@text="Acharya College"]  
    #selecting gender
    sleep  5s
    Click Element  id=com.apnatime.debug:id/btn_gender_female
    sleep  5s
    Click Element  id=com.apnatime.debug:id/act_profile_info_btn_continue
  
User work experience as fresher 
    sleep  5s
    Click Element  id=com.apnatime.debug:id/act_education_btn_fresher
    sleep  5s 
    Click Element  id=com.apnatime.debug:id/act_education_btn_continue

User educ details 
    sleep  5s
    Click Element  id=com.apnatime.debug:id/et_education
    Click Element  id=com.apnatime.debug:id/tv_education_detail_info
    sleep  5s
    Click Element  id=com.apnatime.debug:id/act_education_btn_continue

#Users can use these many types of jobs 
    sleep  3s
    Click Element  xpath=//android.widget.TextView[@text="Delivery Person"]
    Click Element  xpath=//android.widget.TextView[@text="Maid"]
    Click Element  xpath=//android.widget.TextView[@text="Telecaller / BPO"]
    sleep  3s
    Click Element  id=com.apnatime.debug:id/btn_save



Upload photo from gallery
    sleep  3s 
    Click Element  id=com.apnatime.debug:id/tv_chose_from_gallery
    sleep  3s 
    Click Element  id=com.android.permissioncontroller:id/permission_allow_button
    sleep  3s
    Click Element  id=com.google.android.apps.photos:id/image
    sleep  3s 
    Click Element  accessibility_id=Photo taken on Dec 2, 2021 11:32:59 PM
    sleep  3s
    Click Element  id=com.apnatime.debug:id/ucrop_btn_crop
    sleep  3s
    Click Element  id=com.apnatime.debug:id/tv_change_photo
   

Upload from Camera
    sleep  3s 
    Click Element  id=com.apnatime.debug:id/btm_sheet_img_pick_tvTakePhotoFromCamera
    sleep  3s 
    Click Element  id=com.android.permissioncontroller:id/permission_allow_foreground_only_button
    sleep  3s 
    Click Element  id=com.android.camera2:id/shutter_button
    sleep  3s 
    Click Element  id=com.android.camera2:id/done_button
    sleep  3s 
    Click Element  id=com.apnatime.debug:id/ucrop_btn_crop
    sleep  3s
    Click Element  id=com.apnatime.debug:id/act_profile_info_btn_continue


Capturing toast messages on Selecting the Job Categories more than 4 groups
    sleep  3s 
    Click Element  id=com.apnatime.debug:id/tvSeeJobs
    sleep  10s
    Click Element  id=com.apnatime.debug:id/action_in_app_groups
    sleep  3s
    Click Element  id=com.apnatime.debug:id/ic_move_next
    sleep  3s 
    Click Element  id=com.apnatime.debug:id/ic_move_next
    sleep  3s
    Click Element  id=com.apnatime.debug:id/tv_done
    sleep  3s
    Click Element  id=com.apnatime.debug:id/tv_change_group
    sleep  3s
    Click Element  xpath=//android.widget.TextView[@text="JOIN"]
    sleep  3s 
    Click Element  xpath=//android.widget.TextView[@text="JOIN"]
    sleep  3s 
    Click Element  xpath=//android.widget.TextView[@text="JOIN"]
    sleep  3s 
    Click Element  xpath=//android.widget.TextView[@text="JOIN"]
    sleep  3s 
    Click Element  xpath=//android.widget.TextView[@text="JOIN"]
    Capture Page Screenshot  toast_message.png
    sleep  3s 
    Click Element  xpath=//android.widget.TextView[@text="JOIN"]
    Capture Page Screenshot  toast_message1.png
    Capture Page Screenshot  toast_message2.png
    sleep  3s 
    Click Element  id=com.apnatime.debug:id/iv_back
    sleep  3s  

Connect with Friends, Overlay screens
    sleep  3s 
    Click Element  id=com.apnatime.debug:id/action_view_friends
    sleep  3s 
    Click Element  id=com.apnatime.debug:id/ic_move_next
    sleep  3s 
    Click Element  id=com.apnatime.debug:id/ic_move_next
    sleep  3s 
    Click Element  id=com.apnatime.debug:id/tv_done
    sleep  3s 
    Capture Page Screenshot  overlay_screen.png
    sleep  3s 
    Click Element  xpath=//android.widget.TextView[@text="Connect"]
    



*** Variables ***
${mir_server} =  http://localhost:4723/wd/hub
${platformName} =  Android
${platformVersion} =  11.0
${deviceName} =  emulator-5554
${app_activity} =  com.apnatime.activities.splash.SplashActivity
${app_package} =  com.apnatime.debug

${Login} =  id=com.apnatime.debug:id/et_login_number
${send} =  id=com.apnatime.debug:id/btn_send

${enter_otp} =  id=com.apnatime.debug:id/tv_title

${otp1} =  id=com.apnatime.debug:id/et_otp1
${otp2} =  id=com.apnatime.debug:id/et_otp2
${otp3} =  id=com.apnatime.debug:id/et_otp3
${otp4} =  id=com.apnatime.debug:id/et_otp4

${name} =  id=com.apnatime.debug:id/act_profile_info_et_full_name







