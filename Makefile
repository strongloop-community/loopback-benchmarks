#
# Displays the help menu.
#
.PHONY: h help
h help:
	@echo 'Usage: make [target]'
	@echo 'Targets:'
	@echo '	h, help		Displays the help menu.'
	@echo '	i, install	Runs `npm install` for the `express` and `loopback` projects.'
	@echo '	b, benchmark	Performs 100 concurrent requests 10000 times.'
	@echo '	e, express	Runs `npm install` for the `express` project.'
	@echo '	l, loopback	Runs `npm install` for the `loopback` project.'

#
# Runs `npm install` for the `express` and `loopback` projects.
#
.PHONY: i install
i install: express loopback

#
# Runs `npm install` for the `express` project.
#
.PHONY: e express
e express:
	@cd $(CURDIR)/express && npm i

#
# Runs `npm install` for the `loopback` project.
#
.PHONY: l loopback
l loopback:
	@cd $(CURDIR)/loopback && npm i

#
# Performs 100 concurrent requests 10000 times.
#
.PHONY: b benchmark
b benchmark:
	ab -n 10000 -c 100 http://localhost:3000/api/messages/greet
