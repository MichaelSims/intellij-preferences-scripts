SHELL = /bin/sh

intellij-preferences-backup = $(DESTDIR)/usr/local/bin/intellij-preferences-backup
intellij-preferences-restore = $(DESTDIR)/usr/local/bin/intellij-preferences-restore
intellij-preferences-delete = $(DESTDIR)/usr/local/bin/intellij-preferences-delete

install: intellij-preferences-backup intellij-preferences-restore intellij-preferences-delete
	cp intellij-preferences-backup $(intellij-preferences-backup)
	chmod 755 $(intellij-preferences-backup)
	cp intellij-preferences-restore $(intellij-preferences-restore)
	chmod 755 $(intellij-preferences-restore)
	cp intellij-preferences-delete $(intellij-preferences-delete)
	chmod 755 $(intellij-preferences-delete)

uninstall:
	-rm -Rf $(intellij-preferences-backup) $(intellij-preferences-restore) $(intellij-preferences-delete)

.PHONY: install uninstall
