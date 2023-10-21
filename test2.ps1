

$new = [Environment]::NewLine
$testarray = @(
@("2","issue",'"http://bugzilla.uniwill.com.tw/bugzilla/describecomponents.cgi?product=IDL%20GX4MRXL%20Intel"',"eip issue 	IDL GX4MRXL Intel"),

@("1","VBox",'"C:\Program Files\Oracle\VirtualBox\VirtualBox.exe"',"Oracle VM VirtualBox"),
@("1","firefox",'"C:\Program Files\Mozilla Firefox\firefox.exe"',"firefox Browser"),
@("1","edge",'"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"',"msedge Browser"),
@("1","qq",'"C:\Program Files (x86)\Tencent\QQ\Bin\qq.exe"',"qq"),
@("1","wechat",'"C:\Program Files (x86)\Tencent\WeChat\wechat.exe"',"Î¢ÐÅ")
@("2","EIP",'"http://eip.tongfangpc.com/WebAgenda/index.jsp"',"Í¬·½EIPµÇÂ¼ÍøÖ·"),
@("2","godbolt",'"https://godbolt.org/"',"compiler explorer online website")
@("2","learnc",'"https://www.learncpp.com/"',"www.learncpp.com "),
@("2","cppref",'"https://zh.cppreference.com/w/%E9%A6%96%E9%A1%B5"',"zh.cppreference.com "),
@("2","fanyi",'"https://fanyi.caiyunapp.com/#/"',"²ÊÔÆ·­ÒëÍøÖ·"),
@("2","tfgit",'"http://10.100.160.245:8080/"',"Í¬·½gitlib"),
@("2","hotfix",'"https://learn.microsoft.com/zh-cn/windows/release-health/windows11-release-information"',"Î¢Èíwin11 hotfix"),
@("2","ufiot",'"https://www.ufoit.com/"',"¼Æ½³Íø"),
@("2","juejin",'"https://juejin.cn/"',"Ï¡ÍÁ¾ò½ð"),
@("2","tuling",'"https://www.ituring.com.cn/"',"Í¼ÁéÉçÇø"),
@("1","ru",'"C:\Program Files\VS Revo Group\Revo Uninstaller Pro\RevoUninPro.exe"',"RevoUninPro Ç¿Á¦Ð¶ÔØ"),
@("1","adobepdf",'"C:\Program Files (x86)\Adobe\Reader 11.0\Reader\AcroRd32.exe"',"AdobeReader XI pdf"),
@("1","Foxit",'"C:\Program Files (x86)\Foxit Software\Foxit Reader\FoxitReader.exe"',"¸£ê¿pdfÔÄ¶ÁÆ÷"),
@("1","ebios",'"C:\Aptio_5.x_TOOLS_46_1\VisualeBios\VisualeBios.exe"',"Vissualebios.exe"),
@("1","fbios",'"D:\ProgramFiles\EZP_XPro_EN\EZP_XPro.lnk"',"flash bios tool"),
@("1","ite",'"D:\ProgramFiles\ITE_NewWinECU_D2EC_V4.0.0.7\ITE_NewWinECU_D2EC.exe"',"ITE EC TOOL"),
@("1","arec",'"D:\ProgramFiles\ApowerREC\ApowerREC.exe"',"Apower REC"),
@("1","tfmail",'"C:\Program Files\Microsoft Office\Office16\OUTLOOK.EXE"',"outlook 2016 tongfang mail"),
@("1","locate",'"C:\Program Files\Everything\Everything.exe"',"everything"),
@("1","potplayer",'"D:\ProgramFiles\PotPlayer64\PotPlayerMini64.exe"',"video potplayer"),
@("1","ftprush",'"D:\ProgramFiles\FTPRush\FTPRush.exe"',"ftp rush"),
@("1","typora",'"C:\Program Files\Typora\Typora.lnk"',"typora"),
@("1","BCompare",'"C:\Program Files\Beyond Compare 4\BCompare.exe"',"Beyond Compare 4"),
@("1","si4",'"D:\ProgramFiles\Source Insight 4.0\sourceinsight4.exe"',"Sourice Insight4 ")


)


echo "Set-Alias -Name open -Value Invoke-Item" >> demo.ps1

for ($var = 0; $var -lt  $testarray.Length; ++ $var) {

    if($($testarray[$var][0]) -eq "1")
    {
       
        echo "function $($testarray[$var][1]){$new  open   $($testarray[$var][2])  $new }" >> demo.ps1
       
    }
     if($($testarray[$var][0]) -eq "2")
    {
    echo "function $($testarray[$var][1]){$new  start   ""C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe $($testarray[$var][2])""   $new }" >> demo.ps1
    }
}

echo "function myapp{$new " >> demo.ps1
for ($var = 0; $var -lt  $testarray.Length; ++ $var) {
       echo "echo  ""$($testarray[$var][1])£º$($testarray[$var][3])""" >> demo.ps1
}
echo  "$new }" >> demo.ps1

if([System.IO.File]::Exists("$HOME/demo.ps1")){
 Remove-Item  $HOME/demo.ps1
}

Move-Item -force C:\Users\shoucheng.mi\Desktop\demo.ps1 C:\Users\shoucheng.mi\demo.ps1
