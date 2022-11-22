## `qemu-system-arm -M realview-pb-a8 -kernel navilos.axf -S -gdb tcp::1234,ipv4`
에러 메세지 마지막에  
`gtk initialization failed`를 볼 수 있는데, 해당 에러는 리눅스에서 gui 관련 작업할 때 쓰인다.  
우리는 gui는 직접 다룰 일이 없으므로 해당 에러는 disabled 처리해도 된다.  

명령어 마지막에 `-display none`을 붙여주자.
### 수정한 명령어
`qemu-system-arm -M realview-pb-a8 -kernel navilos.axf -S -gdb tcp::1234,ipv4 -display none`