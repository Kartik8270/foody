$signature = @'
using System;
using System.Runtime.InteropServices;
public class Win32 {
  [DllImport("user32.dll")]
  public static extern bool SetForegroundWindow(IntPtr hWnd);
  [DllImport("user32.dll")]
  public static extern bool ShowWindowAsync(IntPtr hWnd, int nCmdShow);
}
'@
Add-Type $signature
$p = Get-Process | Where-Object { $_.MainWindowTitle -like '*Medium_Phone*' -or $_.MainWindowTitle -like '*Android Emulator*' } | Select-Object -First 1
if ($p -ne $null) {
  [Win32]::ShowWindowAsync($p.MainWindowHandle,5) | Out-Null
  [Win32]::SetForegroundWindow($p.MainWindowHandle) | Out-Null
  Write-Output 'Emulator brought to front'
} else {
  Write-Output 'No emulator window found'
}
