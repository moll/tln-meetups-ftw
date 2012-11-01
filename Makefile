all: index.html meetups.html

watch:
	@echo Watching for changes... Press Ctrl-C to stop.
	@while true; do $(MAKE) -s; sleep 0.3; done

%.html : %.haml Makefile 
	@echo "Compiling $<..."
	@haml "$<" "$@"

.DEFAULT: all