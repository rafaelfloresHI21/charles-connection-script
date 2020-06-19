osascript SwitchSharing.scpt

echo '
scrub-anchor "com.apple/*"
nat-anchor "com.apple/*"
rdr-anchor "com.apple/*"
rdr pass on bridge100 inet proto tcp from any to any port 80 -> 127.0.0.1 port 8888
dummynet-anchor "com.apple/*"
anchor "com.apple/*"
load anchor "com.apple" from "/etc/pf.anchors/com.apple"
' | sudo pfctl -ef -

echo "
rdr pass on bridge100 inet proto tcp from any to any port http -> 127.0.0.1 port 8888
" | sudo pfctl -ef -

osascript SwitchSharing.scpt

sudo pfctl -s nat
