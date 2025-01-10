# alpine

# tips/guides/...etc

* install python3

```
FROM docker:25.0.5
RUN apk add --no-cache python3 py3-pip
```

* test

```
docker run -it --entrypoint "" docker:25.0.5-python3 sh
```