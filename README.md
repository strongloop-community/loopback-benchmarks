#loopback-benchmarks

```shell
make [REQ=1000 CON=1]
```

REQ = Number of requests to perform (equivalent to -n in `ab`)
CON = Number of concurrent requests to perform (equivalent to -c in `ab`)

#results
##express
Requests per second:    3010.87 [#/sec] (mean)

##loopback
Requests per second:    1181.24 [#/sec] (mean)

##loopback
Requests per second:    1700.03 [#/sec] (mean)
