REBLOG ?= "reblog"

all: clean build deploy

clean:
	git clean -X -q -f

LATEST_RESUME_VERSION := $(shell git ls-remote --tags 'git://github.com/Nate-Wilkins/about.git' | sort -r -t '/' -k 3 -V | awk -F/ '{ print $$3 }' | grep -E 'v([^\^]+)$$' | head -1)
resume:
	cd assets && \
		curl -L "https://github.com/Nate-Wilkins/about/releases/download/$(LATEST_RESUME_VERSION)/nate-wilkins_resume.pdf" -O

build:
	$(MAKE) resume
	$(REBLOG) build --host "https://code-null.com"

deploy:
	firebase deploy --token $(FIREBASE_TOKEN)
# TODO: provider not picking up firebase.
# $(REBLOG) deploy --provider firebase --arg token=$(FIREBASE_TOKEN)

help:
	@echo 'Makefile build automation                    '
	@echo '                                             '
	@echo 'Usage                                        '
	@echo '   make all        clean, build              '
	@echo '   make clean      clean out temporary files '
	@echo '   make resume     update resume to latest   '
	@echo '   make build      builds the site           '
	@echo '   make deploy     deploys the site          '
	@echo '   make help       displays this help text   '
	@echo '                                             '
	@echo 'DEFAULT:                                     '
	@echo '   make all                                  '
	@echo '                                             '

.PHONY: all clean resume build deploy help
