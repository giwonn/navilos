# navilos
임베디드 OS

## 개발환경 접속 방법
1. docker-compose로 container 생성
```bash
docker compose -f docker-compose.dev.yml up --build -d
```
2. 생성한 container에 접근
```bash
docker exec -it navilos-container bash
```

## 개발환경 컨테이너 삭제
```bash
docker compose -f docker-compose.dev.yml down -v
```

## 명령어들
### arm-none-eabi
