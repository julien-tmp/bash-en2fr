install: en2fr_ui-ru.mo
	install en2fr en2fr_ui /usr/local/bin
	which gdialog >/dev/null 2>&1 || install gdialog /usr/local/bin
	grep -q "`cat en2fr.services`" /etc/services || cat en2fr.services >> /etc/services
	install en2fr.xinetd /etc/xinetd.d/en2fr
	ln -sf /usr/local/bin/en2fr_ui /usr/local/bin/nen2fr_ui
	install en2fr_ui-ru.mo /usr/share/locale/ru/LC_MESSAGES/en2fr_ui.mo

en2fr_ui.pot: en2fr_ui
	xgettext -o en2fr_ui.pot -L Shell en2fr_ui

en2fr_ui-ru.mo: en2fr_ui-ru.po
	msgfmt -o en2fr_ui-ru.mo en2fr_ui-ru.po

clone:
	git clone https://github.com/krz37/bash-en2fr.git

download:
	git pull

upload:
	git add -A
	git commit
	git push origin 

tags:
	git push origin --tags
