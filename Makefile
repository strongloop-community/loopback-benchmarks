.PHONY: i install
i install: express loopback

.PHONY: e express
e express:
	cd $(CURDIR)/express && npm i

.PHONY: l loopback
l loopback:
	cd $(CURDIR)/loopback && npm i
