mkdir output
mkdir output\DISK1

candle hoge.wxs -o output/hoge.wixobj
candle myui/MyExitDialog.wxs -o output/MyExitDialog.wixobj
candle myui/MyInstallDirDlg.wxs -o output/MyInstallDirDlg.wixobj
candle myui/MyUI_InstallDir.wxs -o output/MyUI_InstallDir.wixobj

light output/hoge.wixobj ^
  output/MyExitDialog.wixobj ^
  output/MyInstallDirDlg.wixobj ^
  output/MyUI_InstallDir.wixobj ^
  -ext WixUIExtension ^
  -ext WixUtilExtension ^
  -o output/DISK1/hoge.msi ^
  -pdbout output/hoge.wixpdb ^
  -cultures:ja-jp
