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

## arm-none-eabi

## qemu-system-arm (가상머신)
### 실행법
```
qemu-system-arm -M realview-pb-a8 -kernel navilos.axf -S -gdb tcp::1234,ipv4
```
- `-M realview-pb-a8`: realview-pb-a8 머신을 사용함
- `-kernal navilos.axf`: 실행할 파일을 지정
- `-S`: QEMU가 동작하자마자 바로 일시정지 되도록 함
- `-gdb tcp::1234,ipv4`: gdb와 연결하는 소켓 포트 지정