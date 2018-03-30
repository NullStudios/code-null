REBLOG := "reblog"

all: clean build deploy

clean:
	git clean -X -q -f

RESUME_PDF_URL := $(shell curl -s 'https://api.github.com/repos/Nate-Wilkins/about/releases/latest' | jq --raw-output -c '.assets[] | .browser_download_url | select(contains("nate-wilkins_resume.pdf"))')

resume:
	curl $(RESUME_PDF_URL) --output assets/resume.pdf

build:
	$(MAKE) resume
	$(REBLOG) build --host "https://code-null.com"

deploy:
	$(REBLOG) deploy --provider firebase --arg token=$(FIREBASE_TOKEN)

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
