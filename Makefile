ifndef REQ
	REQ=1000
endif
ifndef CON
	CON=1
endif

.PHONY: default
default: install benchmark

# install targets

.PHONY: install
install: express loopback loopback-optimized

.PHONY: express
express:
	@cd $(CURDIR)/express && npm i --silent

.PHONY: loopback
loopback:
	@cd $(CURDIR)/loopback && npm i --silent

.PHONY: loopback-optimized
loopback-optimized:
	@cd $(CURDIR)/loopback-optimized && npm i --silent

# benchmark targets

.PHONY: benchmark
benchmark:
	@node express & echo $$! > benchmark.pid
	@sleep 2
	@echo '#express' > results.log
	@ab -r -n $(REQ) -c $(CON) http://127.0.0.1:3000/api/messages/greet|grep "Requests per second:" >> results.log
	@cat benchmark.pid | xargs kill
	@node loopback & echo $$! > benchmark.pid
	@sleep 2
	@echo '\n#loopback' >> results.log
	@ab -r -n $(REQ) -c $(CON) http://127.0.0.1:3000/api/messages/greet|grep "Requests per second:" >> results.log
	@cat benchmark.pid | xargs kill
	@node loopback-optimized & echo $$! > benchmark.pid
	@sleep 2
	@echo '\n#loopback-optimized' >> results.log
	@ab -r -n $(REQ) -c $(CON) http://127.0.0.1:3000/api/messages/greet|grep "Requests per second:" >> results.log
	@cat benchmark.pid | xargs kill
	@cat results.log
