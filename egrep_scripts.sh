#!/usr/bin/env bash
# to run: ./egrep_scripts.sh

RED='\033[0;31m'
ORANGE='\033[0;33m'
NC='\033[0m' # No Color

TEXT_FILE='test_words.txt'
HTML_FILE='./test.html'

echo -e ${RED}********* br........ ************${NC}
echo -e ${ORANGE}1 - get gray or grey${NC}
egrep 'gr[ea]y' $TEXT_FILE
echo -e "${ORANGE}2 - get gray or grey (another way)${NC}"
egrep 'gr(a|e)y' $TEXT_FILE
echo -e "${ORANGE}3 - get gray or grey (another way)${NC}"
egrep 'gray|grey' $TEXT_FILE
echo -e ${ORANGE}4 - get first/1st street${NC}
egrep '([fF]ir|1)st.[sS]treet' $TEXT_FILE
echo -e ${ORANGE}or this:${NC}
egrep '([fF]irst|1st).[sS]treet' $TEXT_FILE
echo -e ${ORANGE}5 - matches From or Date or Subject${NC}
egrep -i '^(Subject|Date|From):.' $TEXT_FILE
echo -e ${ORANGE}6 - should find july 4, by using [?] symbol. ${NC}
egrep 'July?.(fourth|4(th)?)' $TEXT_FILE
echo -e ${ORANGE}7 - should find hr html tag with size.${NC}
egrep -i '<hr(.+size="[0-9]+")?.*>' $HTML_FILE
