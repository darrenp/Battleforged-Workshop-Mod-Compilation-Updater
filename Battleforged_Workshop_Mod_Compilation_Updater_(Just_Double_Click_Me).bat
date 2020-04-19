powershell.exe -command "Clear-Host;if([System.Environment]::OSVersion.Version.Major -lt 10){write-host 'Sorry, the Battleforged Workshop Mod Compilation Updater only works on Windows 10 or newer. Windows 7 is long out of Securty Support, for the love of the Manperor, update! Windows 8/8.1 is soon to leave Security Support. I know, it sucks, but you will need to update soon anyway. Please download and manually install The Battleforged Workshop Mod Compilation from https://github.com/BigSig/Battleforged-Workshop-Mod-Compilation'}else{Clear-Host;write-host '';write-host '=][= Angron did nothing wrong. =][=';write-host '';write-host 'Please subscribe to the following collection and watching the following videos before asking any questions:';write-host 'Collection: shorturl.at/cvBEV';write-host 'Videos: shorturl.at/klxN9';write-host '';write-host 'Downloading the Battleforged Workshop Mod Compilation...';$currentGlobalPreference = $global:ProgressPreference;$global:ProgressPreference = 'Continue';$url='https://github.com/BigSig/Battleforged-Workshop-Mod-Compilation/raw/master/battleforged_workshop_mod_compilation.zip';$downloadTemp =  [System.Environment]::GetEnvironmentVariable('TEMP','Machine')+'\Battleforged-Workshop-Mod-Compilation.zip';$extractTemp =  [System.Environment]::GetEnvironmentVariable('TEMP','Machine')+'\Saves';$url2='https://github.com/BaconCatBug/Battleforged-Workshop-Mod-Compilation-Updater/raw/master/Battleforged_Workshop_Mod_Compilation_Updater_(Just_Double_Click_Me).bat';$downloadTemp2 =  [System.Environment]::GetEnvironmentVariable('TEMP','Machine')+'\Battleforged_Workshop_Mod_Compilation_Updater_(Just_Double_Click_Me).bat';$checkSuccess = $false;Start-BitsTransfer -Source $url2 -Destination $downloadTemp2 -Priority Foreground;Start-BitsTransfer -Source $url -Destination $downloadTemp -Priority Foreground;$currentDirectory = (Get-Item -Path '.\').FullName;Copy-Item $downloadTemp2 -Destination $currentDirectory;$pathtosaves = [environment]::getfolderpath('mydocuments')+'\My Games\Tabletop Simulator';Microsoft.PowerShell.Archive\expand-archive -force -path $downloadTemp -destinationpath $extractTemp;Copy-Item -Path $extractTemp -Destination $pathtosaves -Recurse -Force;if($? -eq $false){write-host 'Something went wrong, please try again. If this error persists please download and manually install The Battleforged Workshop Mod Compilation from https://github.com/BigSig/Battleforged-Workshop-Mod-Compilation'}else{write-host 'The Battleforged Workshop Mod Compilation should now be successfully installed! If it does not show up, please install it manually.'}};$global:ProgressPreference = $currentGlobalPreference;write-host 'Press any key to exit...';[void][System.Console]::ReadKey($true);"