wrk -t10 -c100 -d30s http://localhost:8000/

# In the command wrk -t12 -c400 -d30s http://localhost:80/, each argument has a specific meaning:

# -t12: Specifies the number of threads to use. In this case, 12 threads will be used to generate the load.
# -c400: Specifies the number of open connections to keep. Here, 400 connections will be maintained.
# -d30s: Specifies the duration of the test. The test will run for 30 seconds.
# http://localhost:80/: The URL of the server to test. In this case, it is the local server running on port 80.


# Results
# ======
## Simple GET JSON {"hello": "world"}
# Cpython
# Running 30s test @ http://localhost:8000/json
#   10 threads and 100 connections
#   Thread Stats   Avg      Stdev     Max   +/- Stdev
#     Latency    39.62ms    9.33ms 144.12ms   83.01%
#     Req/Sec   253.84     36.52   460.00     75.63%
#   75946 requests in 30.10s, 10.28MB read
# Requests/sec:   2523.11
# Transfer/sec:    349.89KB

# Pypy
# Running 30s test @ http://localhost:8000/json
#   10 threads and 100 connections
#   Thread Stats   Avg      Stdev     Max   +/- Stdev
#     Latency    34.67ms   11.32ms 138.36ms   86.29%
#     Req/Sec   291.48     60.61   424.00     63.96%
#   87126 requests in 30.10s, 11.80MB read
# Requests/sec:   2894.63
# Transfer/sec:    401.40KB



# ====== 
# Long run 
# Cython
# Running 30s test @ http://localhost:8000/
#   10 threads and 100 connections
#   Thread Stats   Avg      Stdev     Max   +/- Stdev
#     Latency     1.66s   443.07ms   1.99s    80.36%
#     Req/Sec     6.51      9.04    60.00     89.22%
#   953 requests in 30.07s, 168.84KB read
#   Socket errors: connect 0, read 0, write 0, timeout 897
# Requests/sec:     31.69
# Transfer/sec:      5.61KB

# Pypy
# Running 30s test @ http://localhost:8000/
#   10 threads and 100 connections
#   Thread Stats   Avg      Stdev     Max   +/- Stdev
#     Latency   284.97ms   46.11ms 543.12ms   78.77%
#     Req/Sec    36.55     17.45    90.00     66.59%
#   10490 requests in 30.07s, 1.83MB read
# Requests/sec:    348.87
# Transfer/sec:     62.19KB