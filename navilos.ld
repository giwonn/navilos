ENTRY(vector_start)
SECTIONS
{
  . = 0x0;  /* 첫 번째 섹션이 메모리 주소 0x00000000에 위치함을 알려줌 */


  .text :
  {
    *(vector_start) /* 0x00000000에 리셋 벡터가 위치해야함으로 vector_start를 첫 번째로 지정) */
    *(.text .rodata)
  }
  /* 이어서 data, bss 섹션을 연속된 메모리에 배치 */
  .data :
  {
    *(.data)
  }
  .bss :
  {
    *(.bss)
  }
}