; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "Kludget Engine"
!define PRODUCT_VERSION "1.0.0"
!define PRODUCT_PUBLISHER "MindHyve"
!define PRODUCT_WEB_SITE "http://kludgets.com"
!define PRODUCT_HOMEPAGE "http://search.kludgets.com"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\kludgets.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

SetCompressor lzma

RequestExecutionLevel admin

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\orange-install.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\orange-uninstall.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!define MUI_LICENSEPAGE_CHECKBOX
!insertmacro MUI_PAGE_LICENSE "distribute\license.txt"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
Function "SetHomePage"
WriteRegStr HKCU "Software\Microsoft\Internet Explorer\Main" "Start Page" "${PRODUCT_HOMEPAGE}"
FunctionEnd
!define MUI_FINISHPAGE_SHOWREADME_TEXT "Set Kludgets Search as your homepage."
!define MUI_FINISHPAGE_SHOWREADME_FUNCTION "SetHomePage"
!define MUI_FINISHPAGE_RUN "$INSTDIR\kludgets.exe"
!define MUI_FINISHPAGE_SHOWREADME "http://search.kludgets.com"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"

; Reserve files
!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "Setup.exe"
InstallDir "$PROGRAMFILES\Kludget Engine"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite try
  File "distribute\kludgets.exe"
  CreateDirectory "$SMPROGRAMS\Kludget Engine"
  CreateShortCut "$SMPROGRAMS\Kludget Engine\Kludget Engine.lnk" "$INSTDIR\kludgets.exe"
  CreateShortCut "$DESKTOP\Kludget Engine.lnk" "$INSTDIR\kludgets.exe"
  File "distribute\license.txt"
  File "distribute\phonon4.dll"
  SetOutPath "$INSTDIR\plugins\codecs"
  File "distribute\plugins\codecs\qcncodecs4.dll"
  File "distribute\plugins\codecs\qjpcodecs4.dll"
  File "distribute\plugins\codecs\qkrcodecs4.dll"
  File "distribute\plugins\codecs\qtwcodecs4.dll"
  SetOutPath "$INSTDIR\plugins\iconengines"
  File "distribute\plugins\iconengines\qsvgicon4.dll"
  SetOutPath "$INSTDIR\plugins\imageformats"
  File "distribute\plugins\imageformats\qgif4.dll"
  File "distribute\plugins\imageformats\qico4.dll"
  File "distribute\plugins\imageformats\qjpeg4.dll"
  File "distribute\plugins\imageformats\qmng4.dll"
  File "distribute\plugins\imageformats\qsvg4.dll"
  File "distribute\plugins\imageformats\qtiff4.dll"
  SetOutPath "$INSTDIR\plugins\phonon_backend"
  File "distribute\plugins\phonon_backend\phonon_ds94.dll"
  SetOutPath "$INSTDIR"
  File "distribute\*"
  ;File "distribute\QtCore4.dll"
  ;File "distribute\QtGui4.dll"
  ;File "distribute\QtNetwork4.dll"
  ;File "distribute\QtSvg4.dll"
  ;File "distribute\QtWebKit4.dll"
  ;File "distribute\QtXml4.dll"
  ;File "distribute\QtXmlPatterns4.dll"
  ;File "distribute\unzip.exe"
  SetOutPath "$INSTDIR\widgets"
  File "distribute\widgets\*"
  ;File "distribute\widgets\com.kludgets.calendar.zip"
  ;File "distribute\widgets\com.kludgets.clock.zip"
  ;File "distribute\widgets\com.kludgets.note.zip"
  ;File "distribute\widgets\com.kludgets.weather.zip"
  SetOutPath "$INSTDIR\widgets\resources\.parsers"
  File "distribute\widgets\resources\.parsers\ESPNParser.js"
  File "distribute\widgets\resources\.parsers\flightTrackerParser.js"
  File "distribute\widgets\resources\.parsers\moviesParser.js"
  File "distribute\widgets\resources\.parsers\phoneBookParser.js"
  File "distribute\widgets\resources\.parsers\skiReportParser.js"
  File "distribute\widgets\resources\.parsers\stocksParser.js"
  File "distribute\widgets\resources\.parsers\translationParser.js"
  File "distribute\widgets\resources\.parsers\unitConverterParser.js"
  File "distribute\widgets\resources\.parsers\weatherParser.js"
  File "distribute\widgets\resources\.parsers\whitePagesParser.js"
  SetOutPath "$INSTDIR\widgets\resources\AppleClasses"
  File "distribute\widgets\resources\AppleClasses\AppleAnimator.js"
  File "distribute\widgets\resources\AppleClasses\AppleButton.js"
  File "distribute\widgets\resources\AppleClasses\AppleInfoButton.js"
  File "distribute\widgets\resources\AppleClasses\AppleScrollArea.js"
  File "distribute\widgets\resources\AppleClasses\AppleScrollbar.js"
  File "distribute\widgets\resources\AppleClasses\AppleSlider.js"
  SetOutPath "$INSTDIR\widgets\resources\AppleClasses\Images"
  File "distribute\widgets\resources\AppleClasses\Images\scroll_thumb_hleft.png"
  File "distribute\widgets\resources\AppleClasses\Images\scroll_thumb_hmid.png"
  File "distribute\widgets\resources\AppleClasses\Images\scroll_thumb_hright.png"
  File "distribute\widgets\resources\AppleClasses\Images\scroll_thumb_vbottom.png"
  File "distribute\widgets\resources\AppleClasses\Images\scroll_thumb_vmid.png"
  File "distribute\widgets\resources\AppleClasses\Images\scroll_thumb_vtop.png"
  File "distribute\widgets\resources\AppleClasses\Images\scroll_track_hleft.png"
  File "distribute\widgets\resources\AppleClasses\Images\scroll_track_hmid.png"
  File "distribute\widgets\resources\AppleClasses\Images\scroll_track_hright.png"
  File "distribute\widgets\resources\AppleClasses\Images\scroll_track_vbottom.png"
  File "distribute\widgets\resources\AppleClasses\Images\scroll_track_vmid.png"
  File "distribute\widgets\resources\AppleClasses\Images\scroll_track_vtop.png"
  File "distribute\widgets\resources\AppleClasses\Images\slide_thumb.png"
  File "distribute\widgets\resources\AppleClasses\Images\slide_track_hleft.png"
  File "distribute\widgets\resources\AppleClasses\Images\slide_track_hmid.png"
  File "distribute\widgets\resources\AppleClasses\Images\slide_track_hright.png"
  File "distribute\widgets\resources\AppleClasses\Images\slide_track_vbottom.png"
  File "distribute\widgets\resources\AppleClasses\Images\slide_track_vmid.png"
  File "distribute\widgets\resources\AppleClasses\Images\slide_track_vtop.png"
  SetOutPath "$INSTDIR\widgets\resources\AppleParser"
  File "distribute\widgets\resources\AppleParser\AppleParser.js"
  SetOutPath "$INSTDIR\widgets\resources"
  File "distribute\widgets\resources\bg.png"
  File "distribute\widgets\resources\bgBlack.png"
  SetOutPath "$INSTDIR\widgets\resources\button"
  File "distribute\widgets\resources\button\genericButton.js"
  File "distribute\widgets\resources\button\glassbuttonleft.png"
  File "distribute\widgets\resources\button\glassbuttonleftclicked.png"
  File "distribute\widgets\resources\button\glassbuttonmiddle.png"
  File "distribute\widgets\resources\button\glassbuttonmiddleclicked.png"
  File "distribute\widgets\resources\button\glassbuttonright.png"
  File "distribute\widgets\resources\button\glassbuttonrightclicked.png"
  SetOutPath "$INSTDIR\widgets\resources"
  File "distribute\widgets\resources\engine.png"
  SetOutPath "$INSTDIR\widgets\resources\fonts"
  File "distribute\widgets\resources\fonts\ARNORG__.TTF"
  File "distribute\widgets\resources\fonts\Cookies.ttf"
  File "distribute\widgets\resources\fonts\Helvetica.ttf"
  File "distribute\widgets\resources\fonts\IHATCS__.TTF"
  File "distribute\widgets\resources\fonts\LucidaGrande.ttf"
  File "distribute\widgets\resources\fonts\MarkerFelt-Thin.ttf"
  SetOutPath "$INSTDIR\widgets\resources\ibutton"
  File "distribute\widgets\resources\ibutton\black_i.png"
  File "distribute\widgets\resources\ibutton\black_rollie.png"
  File "distribute\widgets\resources\ibutton\white_i.png"
  File "distribute\widgets\resources\ibutton\white_rollie.png"
  SetOutPath "$INSTDIR\widgets\resources"
  File "distribute\widgets\resources\kludget.png"
  File "distribute\widgets\resources\package.png"
  File "distribute\widgets\resources\resize.png"
  File "distribute\widgets\resources\titlegradient.png"
SectionEnd

Section -AdditionalIcons
  SetOutPath $INSTDIR
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\Kludget Engine\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\Kludget Engine\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\kludgets.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\kludgets.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\widgets\resources\titlegradient.png"
  Delete "$INSTDIR\widgets\resources\resize.png"
  Delete "$INSTDIR\widgets\resources\package.png"
  Delete "$INSTDIR\widgets\resources\kludget.png"
  Delete "$INSTDIR\widgets\resources\ibutton\white_rollie.png"
  Delete "$INSTDIR\widgets\resources\ibutton\white_i.png"
  Delete "$INSTDIR\widgets\resources\ibutton\black_rollie.png"
  Delete "$INSTDIR\widgets\resources\ibutton\black_i.png"
  Delete "$INSTDIR\widgets\resources\fonts\MarkerFelt-Thin.ttf"
  Delete "$INSTDIR\widgets\resources\fonts\LucidaGrande.ttf"
  Delete "$INSTDIR\widgets\resources\fonts\IHATCS__.TTF"
  Delete "$INSTDIR\widgets\resources\fonts\Helvetica.ttf"
  Delete "$INSTDIR\widgets\resources\fonts\Cookies.ttf"
  Delete "$INSTDIR\widgets\resources\fonts\ARNORG__.TTF"
  Delete "$INSTDIR\widgets\resources\engine.png"
  Delete "$INSTDIR\widgets\resources\button\glassbuttonrightclicked.png"
  Delete "$INSTDIR\widgets\resources\button\glassbuttonright.png"
  Delete "$INSTDIR\widgets\resources\button\glassbuttonmiddleclicked.png"
  Delete "$INSTDIR\widgets\resources\button\glassbuttonmiddle.png"
  Delete "$INSTDIR\widgets\resources\button\glassbuttonleftclicked.png"
  Delete "$INSTDIR\widgets\resources\button\glassbuttonleft.png"
  Delete "$INSTDIR\widgets\resources\button\genericButton.js"
  Delete "$INSTDIR\widgets\resources\bgBlack.png"
  Delete "$INSTDIR\widgets\resources\bg.png"
  Delete "$INSTDIR\widgets\resources\AppleParser\AppleParser.js"
  Delete "$INSTDIR\widgets\resources\AppleClasses\Images\slide_track_vtop.png"
  Delete "$INSTDIR\widgets\resources\AppleClasses\Images\slide_track_vmid.png"
  Delete "$INSTDIR\widgets\resources\AppleClasses\Images\slide_track_vbottom.png"
  Delete "$INSTDIR\widgets\resources\AppleClasses\Images\slide_track_hright.png"
  Delete "$INSTDIR\widgets\resources\AppleClasses\Images\slide_track_hmid.png"
  Delete "$INSTDIR\widgets\resources\AppleClasses\Images\slide_track_hleft.png"
  Delete "$INSTDIR\widgets\resources\AppleClasses\Images\scroll_track_vtop.png"
  Delete "$INSTDIR\widgets\resources\AppleClasses\Images\scroll_track_vmid.png"
  Delete "$INSTDIR\widgets\resources\AppleClasses\Images\scroll_track_vbottom.png"
  Delete "$INSTDIR\widgets\resources\AppleClasses\Images\scroll_track_hright.png"
  Delete "$INSTDIR\widgets\resources\AppleClasses\Images\scroll_track_hmid.png"
  Delete "$INSTDIR\widgets\resources\AppleClasses\Images\scroll_track_hleft.png"
  Delete "$INSTDIR\widgets\resources\AppleClasses\Images\scroll_thumb_vtop.png"
  Delete "$INSTDIR\widgets\resources\AppleClasses\Images\scroll_thumb_vmid.png"
  Delete "$INSTDIR\widgets\resources\AppleClasses\Images\scroll_thumb_vbottom.png"
  Delete "$INSTDIR\widgets\resources\AppleClasses\Images\scroll_thumb_hright.png"
  Delete "$INSTDIR\widgets\resources\AppleClasses\Images\scroll_thumb_hmid.png"
  Delete "$INSTDIR\widgets\resources\AppleClasses\Images\scroll_thumb_hleft.png"
  Delete "$INSTDIR\widgets\resources\AppleClasses\AppleSlider.js"
  Delete "$INSTDIR\widgets\resources\AppleClasses\AppleScrollbar.js"
  Delete "$INSTDIR\widgets\resources\AppleClasses\AppleScrollArea.js"
  Delete "$INSTDIR\widgets\resources\AppleClasses\AppleInfoButton.js"
  Delete "$INSTDIR\widgets\resources\AppleClasses\AppleButton.js"
  Delete "$INSTDIR\widgets\resources\AppleClasses\AppleAnimator.js"
  Delete "$INSTDIR\widgets\resources\.parsers\whitePagesParser.js"
  Delete "$INSTDIR\widgets\resources\.parsers\weatherParser.js"
  Delete "$INSTDIR\widgets\resources\.parsers\unitConverterParser.js"
  Delete "$INSTDIR\widgets\resources\.parsers\translationParser.js"
  Delete "$INSTDIR\widgets\resources\.parsers\stocksParser.js"
  Delete "$INSTDIR\widgets\resources\.parsers\skiReportParser.js"
  Delete "$INSTDIR\widgets\resources\.parsers\phoneBookParser.js"
  Delete "$INSTDIR\widgets\resources\.parsers\moviesParser.js"
  Delete "$INSTDIR\widgets\resources\.parsers\flightTrackerParser.js"
  Delete "$INSTDIR\widgets\resources\.parsers\ESPNParser.js"
  Delete "$INSTDIR\widgets\*"
  ;Delete "$INSTDIR\widgets\com.kludgets.weather.zip"
  ;Delete "$INSTDIR\widgets\com.kludgets.note.zip"
  ;Delete "$INSTDIR\widgets\com.kludgets.clock.zip"
  ;Delete "$INSTDIR\widgets\com.kludgets.calendar.zip"
  ;Delete "$INSTDIR\unzip.exe"
  ;Delete "$INSTDIR\QtXmlPatterns4.dll"
  ;Delete "$INSTDIR\QtXml4.dll"
  ;Delete "$INSTDIR\QtWebKit4.dll"
  ;Delete "$INSTDIR\QtSvg4.dll"
  ;Delete "$INSTDIR\QtNetwork4.dll"
  ;Delete "$INSTDIR\QtGui4.dll"
  ;Delete "$INSTDIR\QtCore4.dll"
  Delete "$INSTDIR\*"
  Delete "$INSTDIR\plugins\phonon_backend\phonon_ds94.dll"
  Delete "$INSTDIR\plugins\imageformats\qtiff4.dll"
  Delete "$INSTDIR\plugins\imageformats\qsvg4.dll"
  Delete "$INSTDIR\plugins\imageformats\qmng4.dll"
  Delete "$INSTDIR\plugins\imageformats\qjpeg4.dll"
  Delete "$INSTDIR\plugins\imageformats\qico4.dll"
  Delete "$INSTDIR\plugins\imageformats\qgif4.dll"
  Delete "$INSTDIR\plugins\iconengines\qsvgicon4.dll"
  Delete "$INSTDIR\plugins\codecs\qtwcodecs4.dll"
  Delete "$INSTDIR\plugins\codecs\qkrcodecs4.dll"
  Delete "$INSTDIR\plugins\codecs\qjpcodecs4.dll"
  Delete "$INSTDIR\plugins\codecs\qcncodecs4.dll"
  Delete "$INSTDIR\phonon4.dll"
  Delete "$INSTDIR\license.txt"
  Delete "$INSTDIR\kludgets.exe"

  Delete "$SMPROGRAMS\Kludget Engine\Uninstall.lnk"
  Delete "$SMPROGRAMS\Kludget Engine\Website.lnk"
  Delete "$DESKTOP\Kludget Engine.lnk"
  Delete "$SMPROGRAMS\Kludget Engine\Kludget Engine.lnk"

  RMDir "$SMPROGRAMS\Kludget Engine"
  RMDir "$INSTDIR\widgets\resources\ibutton"
  RMDir "$INSTDIR\widgets\resources\fonts"
  RMDir "$INSTDIR\widgets\resources\button"
  RMDir "$INSTDIR\widgets\resources\AppleParser"
  RMDir "$INSTDIR\widgets\resources\AppleClasses\Images"
  RMDir "$INSTDIR\widgets\resources\AppleClasses"
  RMDir "$INSTDIR\widgets\resources\.parsers"
  RMDir "$INSTDIR\widgets\resources"
  RMDir "$INSTDIR\widgets"
  RMDir "$INSTDIR\plugins\phonon_backend"
  RMDir "$INSTDIR\plugins\imageformats"
  RMDir "$INSTDIR\plugins\iconengines"
  RMDir "$INSTDIR\plugins\codecs"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd