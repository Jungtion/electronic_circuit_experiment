# Lab 09

## 실습 내용

### **IR 컨트롤러 제작 **

#### **Submodule 1(ir_rx)** : 리모컨으로부터 오는 신호를 받음
##### - assign으로  ir_rx를 반전시켜 시뮬레이션을 돌리고 나서 보기에 좋게 만든다.
##### - cnt_h와 cnt_l로 count signal이 high인지 low인지 확인한다.
##### - 그리고 각 신호가 들어올 때 경우를 분리하여 ir_rx가 상승하면 cnt_h와 cnt_l을 초기화(00) 시킨다.
##### -  state를 알기 위해 IDLE로 시작하여 시작점을 규정하고, LEADCODE가 시작되고 일정시간이 지나면 충분히 코드가 들어왔다고 가정하고 DATACODE로 넘어간다. seq_rx가 1이 되어 datacode로 넘어왔음이 확인되면 마찬가지로 적당한 시간을 주어 적당히 low신호가 들어오면 끝으로 인식한다. 끝나면 다시 IDLE로 넘어가 대기한다.
##### - DATACODE에서 [32-]

#### **Submodule 2** : 0~59의 값을 갖는 6bit 입력 신호를 받아 십의 자리 수와 일의 자리 수를 각각 4bit으로 출력

#### **Top Module** : 저번 시간에 만든 second counter  및 Submodule 1/2를 이용하여 실습 장비의 LED에 맞는 Display Module 설계

### FPGA 실습 : 리모컨의 버튼을 누르면 LED에 각 버튼에 해당하는 시그널이 디스플레이 되도록 한다.

: NCO(Numerical Controlled Oscillator) 입력 바꿔서 4초 간격으로 증가하는 코드 테스트

## 퀴즈

### 아래 코드 일부를 수정하여 다음을 구하시오 

```verilog
  wire  [41:0] six_digit_seg;
  assign       six_digit_seg = { 4{7'b0000000}, seg_left, seg_right };
```  

 > Q1 - 고정 LED (왼쪽 4개) AAAA 출력 : `AA_AA_00`, `AA_AA_01`, `AA_AA_02`, … 순으로 LED 변경
 
 ```verilog
 wire  [41:0] six_digit_seg	;
 assign	six_digit_seg = {4{7'b1110111}, seg_left, seg_right}  ;
```
 

> Q2 - 고정 LED 없이 2개의 LED 단위로 1초 Counter 값 표시 : `00_00_00`, `01_01_01`, `02_02_02`, … 순으로 LED 변경

```verilog
wire	[41:0] six_digit_seg	;
assign	six_digit_seg = { seg_left, seg_right,  seg_left, seg_right,  seg_left, seg_right}  ;
```

## 결과 

### **Top Module 의 DUT/TestBench Code 및 Waveform 검증**

![](https://github.com/Jungtion/electronic_circuit_experiment/blob/master/Practice05/image/02.PNG)

### **FPGA 동작 사진 (3개- 일반, Q1, Q2)**

![](https://github.com/Jungtion/electronic_circuit_experiment/blob/master/Practice05/image/IMG_7285.JPG)

![](https://github.com/Jungtion/electronic_circuit_experiment/blob/master/Practice05/image/IMG_7286.JPG)

![](https://github.com/Jungtion/electronic_circuit_experiment/blob/master/Practice05/image/IMG_7287.JPG)

![](https://github.com/Jungtion/electronic_circuit_experiment/blob/master/Practice05/image/IMG_7288.JPG)

![](https://github.com/Jungtion/electronic_circuit_experiment/blob/master/Practice05/image/IMG_7289.JPG)

![](https://github.com/Jungtion/electronic_circuit_experiment/blob/master/Practice05/image/IMG_7290.JPG)

> Written with [StackEdit](https://stackedit.io/).

<!--stackedit_data:
eyJoaXN0b3J5IjpbNTUzNTgyOTYsNzk4NTIyNzM1LC05NzUyOT
E0ODgsMTczMzI5MDk4M119
-->