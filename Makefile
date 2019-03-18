.git/hooks/pre-commit:
	rm $@ || true
	ln -sf ../../script/pre-commit $@
	chmod +x $@
