#!/usr/bin/env bash

###
# some bash library helpers
# @author Thais Ribeiro
###

# Colors
ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_RED=$ESC_SEQ"31;01m"
COL_GREEN=$ESC_SEQ"32;01m"
COL_YELLOW=$ESC_SEQ"33;01m"

function ok() {
    echo -e "$COL_GREEN[ok]$COL_RESET $1"
}

function bot() {
    echo -e "\n$COL_GREEN(っ◕‿◕)っ$COL_RESET - $1"
}

function running() {
    echo -en "$COL_YELLOW ⇒ $COL_RESET $1: "
}

function action() {
    echo -e "\n$COL_YELLOW[action]:$COL_RESET\n ⇒ $1..."
}

function warn() {
    echo -e "$COL_YELLOW[warning]$COL_RESET $1"
}

function error() {
    echo -e "$COL_RED[error]$COL_RESET $1"
}

function awesome_header() {
echo -en "\n$COL_RED ssssssssssssoooooooooooooooooooooo++++osyhhhysyyhhdddmmmmmmmmNNNNNNNNNNNNNNNNNNNNNNNmmmmmdddddhhhhyy $COL_RESET"
echo -en "\n$COL_RED sssoossssoosooooooooooooooooooooo+++++oyhdmddmmmhmdmNdmdmmmmmNMMMMNNNNNNNNNNNNNNNNNmmmmmmddddhhhyyyy $COL_RESET"
echo -en "\n$COL_RED ssooossssooooooooooooooooooooooo++++++oydNMNmNNMMNNMMMMNmmNmNNNNMNNNNNNNNNNNNNNNNNNmmmmddddhhhhyyyyy $COL_RESET"
echo -en "\n$COL_RED ssooooooooooooooooooooooooooooo+++++ooyhdmNNhsosooosshdmNNmdmNNMMNNNNNNNNNNNNNNNNNNmmmmddddhhhhyyyyy $COL_RESET"
echo -en "\n$COL_RED oooooooooooooooooooooooooooooo+++++oymdhdmo/::---------:+hddmmNNMNNNNNNNNNNNNNNNNNNmmddddddhhhhyyyyy $COL_RESET"
echo -en "\n$COL_RED ooooooooooooooooooooooooooooo++++++smNdNd/:--..........--:oyhdmNNNNNNmmNmmNNNNNNNNNdmddddddhhhhyyyyy $COL_RESET"
echo -en "\n$COL_RED ooosooooooooooooooooooooooo++++++++odNdd+::--...........--/+sdNMMMNNNmmmNmNNNNNNNNNddddddddhhhhyyyyy $COL_RESET"
echo -en "\n$COL_RED ooooooooooooooooooooooooo+++++++++++sMNy/:--......-////----:shMNNNNNmNNmmNNNNNNNNNmmdddddddhhhhyyyyy $COL_RESET"
echo -en "\n$COL_RED oooooooooooooooooooooooo+++++++++++++hMh:oso+--`.://---:----/ymNmNmmmmmmmmmmmmmmmmdddddddhhhyyyyyyss $COL_RESET"
echo -en "\n$COL_RED oooooooooooooooooooooooo++++++++++++++dho:-----`.--+o+/-..--:ohs+/ymmdmdmddmmmmdmdddddddhhhhhyyyyyyy $COL_RESET"
echo -en "\n$COL_RED oooooooooooooooooooooo++++++++++++++++od-+ss---......``.`..-:od/-:-NNNNNNNNNNNNNNNmddddddhhhhhhhhyyy $COL_RESET"
echo -en "\n$COL_RED oooooooooooooooooooooo+++++++++++++++++m--...-..:..`````...--:o-:.+NmmmNNNNNNNNNNNNdddddddhhhhhhhyhy $COL_RESET"
echo -en "\n$COL_RED ooooooooooooooooooooo++++++++++++++++++h:-.../::/::```.....--:/:-.hmmmmmmmmmmNNNNNNdddddddhhyyyyyyyy $COL_RESET"
echo -en "\n$COL_RED oooooooooooooooooooo+++++++++++++++++++s+:--.-o/++-..`......-:+//hmmddddddmmmmNNNNNdddddddyyyhhmNNNN $COL_RESET"
echo -en "\n$COL_RED ooooooooooooooooooooo++++++++++++++++++oo::-/hyoosssss-.....-/oNMNmmdddddddddmmNNNNdddddddyyhyymMMMN $COL_RESET"
echo -en "\n$COL_RED ooooooooooooooooooooo++++++++++++++++++os/::h+ssso//:.:-:---/++NNmmmddddddddmmmNNNNddddhhhyyyyhNMMMN $COL_RESET"
echo -en "\n$COL_RED ooooooooooooooooooooo++++++++++++++/+++ooo///:/oyyh-..../o::+/+mNmmmmddddddddmmNNNNddddhhysyyyhNNNNm $COL_RESET"
echo -en "\n$COL_RED ooooooooooooooooooooo++++++++++++++++++oooooo:-+yo/:-../oo+/--/NMNNmmddddddmmmmNNNNdddhhhyssyyhNmmmd $COL_RESET"
echo -en "\n$COL_RED oooooooooooooooooooooo+++++++++++++++++oooyyyy+soo+++oss/-::.-ymNMNNNmmdddddmmmNNNNdddhhyysssyhNdddh $COL_RESET"
echo -en "\n$COL_RED oooooooooooooooooooooo+++++++++++++++++oymMNNyyyyyysso/:---.-hdmNMmNNNmdmddmdmmNNNNdddhhyysssyhNdddd $COL_RESET"
echo -en "\n$COL_RED oooooooooooooooooooooo++++++++++++++++sdMMmdMNNms::-....--.:hddmNMNmmmmNmmmmmNNNNNNddhhyyysssshmdddd $COL_RESET"
echo -en "\n$COL_RED oooooooooooooooooooooooo+++++++++++osdmNmNmNMNNmdmy+-..--:sdmNmmmNmmmmmdmmNmNNNNNNNNmddhyyosssymdhhh $COL_RESET"
echo -en "\n$COL_RED oooooooooooooooooooooooooo++++osyhdNNmmmmmmmmNmNNmNdho:-smmmMMMMNmmmmmmmmmNNmNmNNmNNNmmmhyoooosmdhyy $COL_RESET"
echo -en "\n$COL_RED oooooooooooooooooooooooooo+oyhdddmNNNNmNNmmmdmMNmddddmdhNydmNNNNNmmmmmNmmMMmmNNMNmNNmmNNNyooo/+ddhoo $COL_RESET"
echo -en "\n$COL_RED oooooooooooooooooooooooosydmhddmNmmNNNNmNNNmdmmNmmdhdhhhhNmmmmmNmdmmmNNmNMNmNNNMmNNNNmNNNmooo/+ddhoo $COL_RESET"
echo -en "\n$COL_RED oooooooooooooooooooooooommmmmdmNmNmNNNNNmmmddddmdmmmmmhhdmmmmmmNmdmmmNmmNNNmNNmNmNNNNNNNNNhoo++ddhss $COL_RESET"
echo -en "\n$COL_RED ooooooooooooooooooooooohNNmmmNmNmMmmNNNNNNNmdddmdddmmhdhNmmmmmmmddmmmmmmNNmNNmNmNNmmNNNNNMNso++mdhss $COL_RESET"
echo -en "\n$COL_RED oooooooooooooooooooooosNNmmmmNNmmNNmmmmmNNNmmdddmddddmhhmmmmmmmmdmmmmmNNNmmNmNNNMNNNNNNNNMNms+omdhss $COL_RESET"
echo -en "\n$COL_RED oooooooooooooooooooooodNNNNmmmNNmNNmmmmmmmmmmmddmddmhdhhdddmmmmmmmmmmmmmmmNmNmNMMNNmNNNNNMMNs++mdhss $COL_RESET"
echo -en "\n$COL_RED ooooooooooooooooooooosNNNNNNNNNNNNNNmmmmmmmmmmmmdmddhhhddddmmmmmmmmmmmmmmmNNNNNMNNNNNNNNNNNMh++ddhoo $COL_RESET"
echo -en "\n$COL_RED ooooooooooooooooooooohNNNNNmmmNNMNMNNmmdmmmmmmmmmmdmhhhhdddNmmmmmmmmmmmmmNNNNNNMMNNmmNNMMMMMN+/ddh++ $COL_RESET"
echo -en "\n$COL_RED oooooooooooooooooooosdNNNNNmmNNNMMNNMNmmmmmmmmmmmmmmhhhhdhdNmmmmmmmmmmmmmNNNNNMh+mmhhNNNNNNNm/:ddh// $COL_RESET"
echo -en "\n$COL_RED ooooooooooooooooooossmNNNNNNNNNNNMMNNNmmmmmmmmmmmmmmhddhddhmmmmmmmmmmmmmNNNNMd/:+/:/ydNNNNNNd+/dmh++ $COL_RESET"
echo -en "\n$COL_RED ooooooooooooooooooossNNNNNNNNNNNNNNMNMmmNmmmmmmmmmmNdddddhdmmmmmmmmmmmNmMNNNs::.-/o+::yNNNNmdyhNdhyh $COL_RESET"
echo -en "\n$COL_RED oooooooooooooooooossyNNNmmmNNNNNNNNMMMNNNNNNNNNNNNNNmddddhdmmmmmmmmmmNmMMN+:.::-::+yyMMmmMNNdhdNmddd $COL_RESET"
echo -en "\n$COL_RED oooooooooooooooooossyNmmmmNNNNNNNNNNMMMMMMNNNNNNNNNNmddhdddmmmmNNmmmNmNMmso:osshmNNNNNNNNNMmhhdNmddd $COL_RESET"
echo -en "\n$COL_RED ooooooooooooooooooosyNNNNNNNmNNNNNNNNMMMMMMNddydmNNmmmmdmdmNNNNNNNNNmmmmmNNNNNNmmmmmmmmNNMNmhydNmddd $COL_RESET"
echo -en "\n"
}