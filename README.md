# LOAF_TV AND EMERGENCYDISPATCH INTEGRATION

DE: Das ist eine Erklärung wie man EmergencyDispatch mit Loaf_tv verknüpft um den Alarmmonitor benutzen zu können.\
EN: This is an explanation of how to link EmergencyDispatch with Loaf_tv to use the alarm monitor.

## STEP 1:
- DE: Lade dir alle Dateien runter auf deinem Computer
- EN: Download all files to your computer
## STEP 2:
- DE: Öffne die "main.lua" und kopiere dir den Text.
- EN: Open "main.lua" and copy the text.
## STEP 3:
- DE: Füge den Text in client/main.lua über den Code unten ein und speichere die Datei. Du kannst den Command beliebig ändern.
```
TriggerEvent("chat:addSuggestion", "/play", "watch twitch / youtube in-game", {
    {name="website", help="the website to use, youtube or twitch"},
    {name="video/channel", help="the youtube video id or twitch channel to watch"}
})
```
- EN: Paste the text into client/main.lua using the code below and save the file. You can change the command as you wish.
```
TriggerEvent("chat:addSuggestion", "/play", "watch twitch / youtube in-game", {
    {name="website", help="the website to use, youtube or twitch"},
    {name="video/channel", help="the youtube video id or twitch channel to watch"}
})
```
## STEP 4:
- DE: Lade dir die config.lua runter und füge sie ein. Du kannst "bf" austauschen zu dem was du willst. Füge danach deinen Alarmmonitor Link ein.
- EN: Download the config.lua and insert it. You can change “bf” to whatever you want. Then add your alarm monitor link.
> [!WARNING]
> DE: Der Wachennamen darf keine Leerzeichen beeinhalten sonst wird es zu Fehlern von loaf_tv kommen!\
> EN: The guard name must not contain any spaces, otherwise loaf_tv will generate errors!

## COMMANDS DE:
- /emd-display bf
  - emd-display = Der Name in der client/main.lua
  - bf = Der Name mit dem Alarmmontior Link in der config.lua
 
## COMMANDS EN:
- /emd-display bf
  - emd-display = The name in the client/main.lua
  - bf = The name with the alarm monitor link in the config.lua
