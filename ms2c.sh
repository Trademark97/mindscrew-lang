#!/bin/bash

VERSION="0.1.99"

# int vars
INT_0="int i0 = 0;"
INT_1="int i1 = 0;"
INT_2="int i2 = 0;"
INT_3="int i3 = 0;"
INT_4="int i4 = 0;"
INT_5="int i5 = 0;"
INT_6="int i6 = 0;"
INT_7="int i7 = 0;"
INT_8="int i8 = 0;"
INT_9="int i9 = 0;"
# int refs
REF_0="i0"
REF_1="i1"
REF_2="i2"
REF_3="i3"
REF_4="i4"
REF_5="i5"
REF_6="i6"
REF_7="i7"
REF_8="i8"
REF_9="i9"
# char vars
CHAR_a="char ca = 32;"
CHAR_b="char cb = 32;"
CHAR_c="char cc = 32;"
CHAR_d="char cd = 32;"
CHAR_e="char ce = 32;"
CHAR_f="char cf = 32;"
CHAR_g="char cg = 32;"
CHAR_h="char ch = 32;"
CHAR_i="char ci = 32;"
CHAR_j="char cj = 32;"
CHAR_k="char ck = 32;"
CHAR_l="char cl = 32;"
CHAR_m="char cm = 32;"
CHAR_n="char cn = 32;"
CHAR_o="char co = 32;"
CHAR_p="char cp = 32;"
CHAR_q="char cq = 32;"
CHAR_r="char cr = 32;"
CHAR_s="char cs = 32;"
CHAR_t="char ct = 32;"
CHAR_u="char cu = 32;"
CHAR_v="char cv = 32;"
CHAR_w="char cw = 32;"
CHAR_x="char cx = 32;"
CHAR_y="char cy = 32;"
CHAR_z="char cz = 32;"
# char refs
REF_a="ca";
REF_b="cb";
REF_c="cc";
REF_d="cd";
REF_e="ce";
REF_f="cf";
REF_g="cg";
REF_h="ch";
REF_i="ci";
REF_j="cj";
REF_k="ck";
REF_l="cl";
REF_m="cm";
REF_n="cn";
REF_o="co";
REF_p="cp";
REF_q="cq";
REF_r="cr";
REF_s="cs";
REF_t="ct";
REF_u="cu";
REF_v="cv";
REF_w="cw";
REF_x="cx";
REF_y="cy";
REF_z="cz";
# instructions
INST_INCR="++"
INST_DECR="--"
INST_PRNC="printf(\"%c\","
INST_PRNI="printf(\"%d\","
CUR_VAR=""
# if this char is encountered the processor stops
INST_TERM="."
# starting boilerplate
BOILER_TOP_L1="#include <stdio.h>"
BOILER_TOP_L2="int main() {"
# bottom boilerplate
BOILER_BOT_L1="return 0;"
BOILER_BOT_L2="}";
# helper functions
# calls c compiler to compile the generated code
compile_gencode() {
	echo "===> COMPILING \"${1}.c\""
	cc -Wall -O2 "${1}.c -o \"${1}.exe\""
	echo "===> \"${1}.c\" COMPILED"
}
# run binary
run_binary() {
	echo "===> RUNNING \"${1}.exe\""
	./"${1}.exe"
	echo "===> \"${1}.exe\" COMPLETED SUCCESSFULLY"
}
# insert starting boilerplate
ins_startboil() {
	echo "===> INSERTING STARTING BOILERPLATE INTO \"${1}.c\""
	echo "${BOILER_TOP_L1}" >> "${1}.c"
	echo "${BOILER_TOP_L2}" >> "${1}.c"
	echo "${INT_0}" >> "${1}.c"
	echo "${INT_1}" >> "${1}.c"
	echo "${INT_2}" >> "${1}.c"
	echo "${INT_3}" >> "${1}.c"
	echo "${INT_4}" >> "${1}.c"
	echo "${INT_5}" >> "${1}.c"
	echo "${INT_6}" >> "${1}.c"
	echo "${INT_7}" >> "${1}.c"
	echo "${INT_8}" >> "${1}.c"
	echo "${INT_9}" >> "${1}.c"
	echo "${CHAR_a}" >> "${1}.c"
	echo "${CHAR_b}" >> "${1}.c"
	echo "${CHAR_c}" >> "${1}.c"
	echo "${CHAR_d}" >> "${1}.c"
	echo "${CHAR_e}" >> "${1}.c"
	echo "${CHAR_f}" >> "${1}.c"
	echo "${CHAR_g}" >> "${1}.c"
	echo "${CHAR_h}" >> "${1}.c"
	echo "${CHAR_i}" >> "${1}.c"
	echo "${CHAR_j}" >> "${1}.c"
	echo "${CHAR_k}" >> "${1}.c"
	echo "${CHAR_l}" >> "${1}.c"
	echo "${CHAR_m}" >> "${1}.c"
	echo "${CHAR_n}" >> "${1}.c"
	echo "${CHAR_o}" >> "${1}.c"
	echo "${CHAR_p}" >> "${1}.c"
	echo "${CHAR_q}" >> "${1}.c"
	echo "${CHAR_r}" >> "${1}.c"
	echo "${CHAR_s}" >> "${1}.c"
	echo "${CHAR_t}" >> "${1}.c"
	echo "${CHAR_u}" >> "${1}.c"
	echo "${CHAR_v}" >> "${1}.c"
	echo "${CHAR_w}" >> "${1}.c"
	echo "${CHAR_x}" >> "${1}.c"
	echo "${CHAR_y}" >> "${1}.c"
	echo "${CHAR_z}" >> "${1}.c"
	echo "===> COMPLETED."
}
# insert ending boilerplate
ins_endboil() {
	echo "===> INSERTING ENDING BOILERPLATE INTO \"${1}.c\""
	echo "${BOILER_BOT_L1}" >> "${1}.c"
	echo "${BOILER_BOT_L2}" >> "${1}.c"
	echo "===> COMPLETED."
}
# show usage
usage() {
		echo -e "Usage: ms2c <sourcefile.ms> [-c -r]"
		echo -e "\tOptions:"
		echo -e "\t\t-c: Compile generated C source code"
		echo -e "\t\t-r: Run compiled binary"
		echo "ms2c version ${VERSION}"
}
# the parser
parse() {
	echo "===> PARSING \"${1}\""
	while read -n1 chr; do
		case "${chr}" in
			"a")
				CUR_VAR="${REF_a}"
				;;
			"b")
				CUR_VAR="${REF_b}"
				;;
			"c")
				CUR_VAR="${REF_c}"
				;;
			"d")
				CUR_VAR="${REF_d}"
				;;
			"e")
				CUR_VAR="${REF_e}"
				;;
			"f")
				CUR_VAR="${REF_f}"
				;;
			"g")
				CUR_VAR="${REF_g}"
				;;
			"h")
				CUR_VAR="${REF_h}"
				;;
			"i")
				CUR_VAR="${REF_i}"
				;;
			"j")
				CUR_VAR="${REF_j}"
				;;
			"k")
				CUR_VAR="${REF_k}"
				;;
			"l")
				CUR_VAR="${REF_l}"
				;;
			"m")
				CUR_VAR="${REF_m}"
				;;
			"n")
				CUR_VAR="${REF_n}"
				;;
			"o")
				CUR_VAR="${REF_o}"
				;;
			"p")
				CUR_VAR="${REF_p}"
				;;
			"q")
				CUR_VAR="${REF_q}"
				;;
			"r")
				CUR_VAR="${REF_r}"
				;;
			"s")
				CUR_VAR="${REF_s}"
				;;
			"t")
				CUR_VAR="${REF_t}"
				;;
			"u")
				CUR_VAR="${REF_u}"
				;;
			"v")
				CUR_VAR="${REF_v}"
				;;
			"w")
				CUR_VAR="${REF_w}"
				;;
			"x")
				CUR_VAR="${REF_x}"
				;;
			"y")
				CUR_VAR="${REF_y}"
				;;
			"z")
				CUR_VAR="${REF_z}"
				;;
			"+")
				echo -n "${CUR_VAR}++;" >> "${1}.c"
				;;
			"-")
				echo -n "${CUR_VAR}--;" >> "${1}.c"
				;;
			"C")
				echo -n "${INST_PRNC}${CUR_VAR});" >> "${1}.c"
				;;
			"I")
				echo -n "${INST_PRNI}${CUR_VAR});" >> "${1}.c"
				;;
			".")
				echo "===> TERMINATING PARSING"
				break 2
				;;
		esac
	done < <(cat "${1}")
	echo "===> PARSING COMPLETED"
}
# now some basic stuff
DO_COMPILE=""
DO_RUN=""
while getopts c:r: opt
do
	case "${opt}" in
		"c")
			DO_COMPILE="yes"
			;;
		"r")
			DO_RUN="yes"
			;;
		*)
			true
			;;
	esac
done
# check to make sure user gave us a file
if [ -n "${1}" ]; then
	if [ -f "${1}" ]; then
		echo "==> TRANSPILING \"${1}\" TO \"${1}.c\""
		ins_startboil "${1}"
		parse "${1}"
		ins_endboil "${1}"
		if [ "${DO_COMPILE}" = "yes" ]; then
			compile_gencode "${1}"
		fi
		if [ "${DO_RUN}" = "yes" ]; then
			run_binary "${1}"
		fi
		echo "==> TRANSPILER COMPLETED SUCCESSFULLY"
	else
		echo "==> !ERROR!"
		echo "==> \"${1}\" MUST BE A FILE"
		echo "==> SHOWING USAGE AND ABORTING"
		usage
	fi
else
	echo "==> !ERROR!"
	echo "==> AT LEAST ONE ARGUMENT MUST BE PROVIDED"
	echo "==> SHOWING USAGE AND ABORTING"
	usage
fi
