tell application "System Preferences" to set current pane to pane "com.apple.preferences.sharing"
delay 1
tell application "System Events" to tell process "System Preferences"
    click checkbox 1 of row 7 of table 1 of scroll area 1 of group 1 of window "Sharing" -- change to row 10 if you are using anything before Snow Leopard
    delay 1
    if (exists button "Start" of sheet 1) then
        click button "Start" of sheet 1
        delay 1
    end if
end tell
ignoring application responses
    tell application "System Preferences" to quit
end ignoring