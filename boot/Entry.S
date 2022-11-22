.text
  .code 32

  /* .global = export와 같은 역할 */
  .global vector_start
  .global vector_end

  
  vector_start:
    @ MOV    R0, R1  /* MOVE R1 -> R0 (R1 레지스터의 값을 R0에 넣음) */
    LDR R0, =0x10000000  /* R0에 0x10000000이라는 상수를 적재 */
    LDR R1, [R0]  /* R0에 적재된 값을 메모리주소로 인식하여 해당 메모리주소에서 값을 꺼내어 R1에 적재 */
  vector_end:
    .space 1024, 0  /* 해당 위치부터 1024바이트만큼 0으로 채워라 */
.end
