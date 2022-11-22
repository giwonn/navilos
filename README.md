# navilos
임베디드 OS

## 접속 방법
1. docker-compose로 container 생성
```bash
docker compose -f docker-compose.yml up --build -d
```
2. 생성한 container에 접근
```bash
docker exec -it container bash
```

## 컨테이너 삭제
```bash
docker compose -f docker-compose.yml down -v
```