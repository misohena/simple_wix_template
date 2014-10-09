このディレクトリにあるファイルはWiX Toolsetのソースコードを改編したものです。

改編したソースコードと改編点は次の通りです。

- MyExitDialog.wxs  => wix39/src/ext/UIExtension/ExitDialog.wxs
  - チェックボックスを二つ表示できるようにした
  - チェックボックスの背景がグレーにならないようにした
    (透過するようにした。ただし、テキストを押しても反応しなくなった)
- MyInstallDirDlg.wxs  => wix39/src/ext/UIExtension/InstallDirDlg.wxs
  - デスクトップにショートカットを作成するチェックボックスを追加した
- MyUI_InstallDir.wxs  => wix39/src/ext/UIExtension/WixUI_InstallDir.wxs
  - 上の改編したダイアログを使うようにした
