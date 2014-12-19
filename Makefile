#
# Displays the help menu.
#
.PHONY: h help
h help:
	@echo 'Usage: make [target]'
	@echo 'Targets:'
	@echo '	be, benchmark-express	Performs 10 concurrent requests 10000 times on the Express project.'
	@echo '	bl, benchmark-loopback	Performs 10 concurrent requests 10000 times on the LoopBack project.'
	@echo '	e, express		Runs `npm install` for the `express` project.'
	@echo '	h, help			Displays the help menu.'
	@echo '	i, install		Runs `npm install` for the `express` and `loopback` projects.'
	@echo '	l, loopback		Runs `npm install` for the `loopback` project.'

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
# Performs 100 concurrent requests 10000 times on the LoopBack project.
#
.PHONY: bl benchmark-loopback
bl benchmark-loopback:
	@slc run loopback & echo $$! > benchmark.pid
	@sleep 2
	ab -r -n 10000 -c 10 http://localhost:3000/api/messages/greet
	@cat benchmark.pid | xargs kill
	@rm benchmark.pid

#
# Performs 100 concurrent requests 10000 times on the Express project.
#
.PHONY: bl benchmark-express
be benchmark-express:
	@node express & echo $$! > benchmark.pid
	@sleep 2
	ab -r -n 10000 -c 10 http://localhost:3000/api/messages/greet
	@cat benchmark.pid | xargs kill
	@rm benchmark.pid
