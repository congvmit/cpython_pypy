from fastapi import FastAPI
import time

app = FastAPI()


@app.get("/")
def read_root():
    t1 = time.time()
    nums = range(1_000_000)
    sum = 0
    for k in nums:
        sum = sum + k
    t2 = time.time()
    return {"Hello": sum, "Elapsed time": t2 - t1}


@app.get("/json")
def read_json():
    return {"Hello": "World"}