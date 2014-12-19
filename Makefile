.PHONY: i install
i install: express loopback

.PHONY: express
express:
	cd $(CURDIR)/express && npm i

.PHONY: loopback
loopback:
	cd $(CURDIR)/loopback && npm i
