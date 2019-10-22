NAME:=$(notdir ${CURDIR})
TEXs:=$(shell echo *.tex)
all:${NAME}.pdf
	open ${NAME}.pdf
${NAME}.pdf:${TEXs}
	lualatex --shell-escape ${NAME}

biber:
	biber ${NAME}
	lualatex --shell-escape ${NAME}
	lualatex --shell-escape ${NAME}

title:
	grep \\\\tit ${NAME}.tex | tail -n +3 | nl -v0

