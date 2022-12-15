# navilos
임베디드 OS

## 개발환경 접속 방법
1. docker-compose로 container 생성
```bash
docker compose -f docker-compose.yml up --build -d
```
2. 생성한 container에 접근
```bash
docker exec -it navilos-container bash
```

## 개발환경 컨테이너 삭제
```bash
docker compose -f docker-compose.yml down -v
```

## 구조
### hal (Hardware Abstraction Layer)
- `HalUart.h, HalIR.h, ...` : 임베디드 공용 인터페이스
- `hal/rvpb` : 실제 임베디드 하드웨어 (인터페이스 include해서 구현체를 만드는 곳)

## qemu-system-arm (가상머신)
### 실행법
```
qemu-system-arm -M realview-pb-a8 -kernel navilos.axf -S -gdb tcp::1234,ipv4
```
- `-M realview-pb-a8`: realview-pb-a8 머신을 사용함
- `-kernal navilos.axf`: 실행할 파일을 지정
- `-S`: QEMU가 동작하자마자 바로 일시정지 되도록 함
- `-gdb tcp::1234,ipv4`: gdb와 연결하는 소켓 포트 지정


## Error Debugging
### `qemu-system-arm -M realview-pb-a8 -kernel navilos.axf -S -gdb tcp::1234,ipv4` 

에러 메세지 마지막에 `gtk initialization failed`를 볼 수 있는데, 해당 에러는 리눅스에서 gui 관련 작업할 때 쓰인다.  
우리는 gui는 직접 다룰 일이 없으므로 해당 에러는 disabled 처리해도 된다.

명령어 마지막에 -display none을 붙여주자.

**수정한 명령어** : `qemu-system-arm -M realview-pb-a8 -kernel navilos.axf -S -gdb tcp::1234,ipv4 -display none`
