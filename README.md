#loopback-benchmarks

- [Express](https://github.com/strongloop/loopback-benchmarks#express)
- [LoopBack](https://github.com/strongloop/loopback-benchmarks#loopback)

#Express
```
Listening on http://0.0.0.0:3000
ab -r -n 10000 -c 10 http://localhost:3000/api/messages/greet
This is ApacheBench, Version 2.3 <$Revision: 1554214 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)
Completed 1000 requests
Completed 2000 requests
Completed 3000 requests
Completed 4000 requests
Completed 5000 requests
Completed 6000 requests
Completed 7000 requests
Completed 8000 requests
Completed 9000 requests
Completed 10000 requests
Finished 10000 requests


Server Software:
Server Hostname:        localhost
Server Port:            3000

Document Path:          /api/messages/greet
Document Length:        23 bytes

Concurrency Level:      10
Time taken for tests:   1.719 seconds
Complete requests:      10000
Failed requests:        0
Total transferred:      2110000 bytes
HTML transferred:       230000 bytes
Requests per second:    5817.20 [#/sec] (mean)
Time per request:       1.719 [ms] (mean)
Time per request:       0.172 [ms] (mean, across all concurrent requests)
Transfer rate:          1198.66 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     1    2   7.3      1     232
Waiting:        1    2   7.3      1     232
Total:          1    2   7.3      1     232

Percentage of the requests served within a certain time (ms)
  50%      1
  66%      1
  75%      1
  80%      2
  90%      2
  95%      2
  98%      3
  99%      4
 100%    232 (longest request)
```

#LoopBack
```
INFO strong-agent API key not found, StrongOps dashboard reporting disabled.
Generate configuration with:
    npm install -g strongloop
    slc strongops
See http://docs.strongloop.com/strong-agent for more information.
supervisor running without clustering (unsupervised)
Browse your REST API at http://0.0.0.0:3000/explorer
Web server listening at: http://0.0.0.0:3000/
ab -r -n 10000 -c 10 http://localhost:3000/api/messages/greet
This is ApacheBench, Version 2.3 <$Revision: 1554214 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)
Completed 1000 requests
Completed 2000 requests
Completed 3000 requests
Completed 4000 requests
Completed 5000 requests
Completed 6000 requests
Completed 7000 requests
Completed 8000 requests
Completed 9000 requests
Completed 10000 requests
Finished 10000 requests


Server Software:
Server Hostname:        localhost
Server Port:            3000

Document Path:          /api/messages/greet
Document Length:        23 bytes

Concurrency Level:      10
Time taken for tests:   6.048 seconds
Complete requests:      10000
Failed requests:        0
Total transferred:      2820000 bytes
HTML transferred:       230000 bytes
Requests per second:    1653.33 [#/sec] (mean)
Time per request:       6.048 [ms] (mean)
Time per request:       0.605 [ms] (mean, across all concurrent requests)
Transfer rate:          455.31 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     2    6  14.1      5     450
Waiting:        2    6  14.1      4     450
Total:          2    6  14.1      5     450

Percentage of the requests served within a certain time (ms)
  50%      5
  66%      5
  75%      6
  80%      7
  90%      8
  95%     10
  98%     12
  99%     13
 100%    450 (longest request)
```
