oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/arkanvongothic.omp.json" | Invoke-Expression

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

Import-Module -Name Terminal-Icons

$host.ui.RawUI.WindowTitle = "𝓐𝓻𝓴𝓪𝓷 𝓥𝓸𝓷 𝓖𝓸𝓽𝓱𝓲𝓬"
clear -x

Write-Host -ForegroundColor DarkMagenta "_____________________________________________________________________________________________________________"
Write-Host -ForegroundColor DarkMagenta "    __                                     _    _                        __"
Write-Host -ForegroundColor DarkMagenta "    / |            /                       |   /                       /    )                 /      ,"
Write-Host -ForegroundColor DarkMagenta "---/__|----)__----/-__-----__-----__-------|--/------__-----__--------/----------__---_/_----/__----------__-"
Write-Host -ForegroundColor DarkMagenta  "  /   |   /   )  /(      /   )  /   )      | /     /   )  /   )      /  --,    /   )  /     /   )  /    /   '"
Write-Host -ForegroundColor DarkMagenta "_/____|__/______/___\___(___(__/___/_______|/_____(___/__/___/______(____/____(___/__(_ ___/___/__/____(___ _"
"`n"
