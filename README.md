# go + sam の docker環境

### build
```
docker-compose build
```

### start
```
docker-compose up
```

### 確認手順
```
sam init --runtime go1.x --name sam-golang 

make build
```