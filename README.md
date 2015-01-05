#loopback-benchmarks

```shell
make [REQ=1000] [CON=1]
```

- REQ = Number of requests to perform (equivalent to -n in `ab`)
- CON = Number of concurrent requests to perform (equivalent to -c in `ab`)

#results
```
#express
Requests per second:    3053.28 [#/sec] (mean)

#loopback
Requests per second:    1192.66 [#/sec] (mean)

#loopback-optimized
Requests per second:    1811.74 [#/sec] (mean)
```
