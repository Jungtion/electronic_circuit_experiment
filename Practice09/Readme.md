# Lab 09

## 실습 내용

### **IR 컨트롤러 제작 **

#### **Submodule 1(ir_rx)** : 리모컨으로부터 오는 신호를 받음
##### - assign으로  ir_rx를 반전시켜 시뮬레이션을 돌리고 나서 보기에 좋게 만든다.
##### - cnt_h와 cnt_l로 count signal이 high인지 low인지 확인한다.
##### - 그리고 각 신호가 들어올 때 경우를 분리하여 ir_rx가 상승하면 cnt_h와 cnt_l을 초기화(00) 시킨다.
##### -  state를 알기 위해 IDLE로 시작하여 시작점을 규정하고, LEADCODE가 시작되고 일정시간이 지나면 충분히 코드가 들어왔다고 가정하고 DATACODE로 넘어간다. seq_rx가 1이 되어 datacode로 넘어왔음이 확인되면 마찬가지로 적당한 시간을 주어 적당히 low신호가 들어오면 끝으로 인식한다. 끝나면 다시 IDLE로 넘어가 대기한다.
##### - DATACODE에서 [32-cnt32]를 이용하여 상위 24개의 bit 중에 상위 bit부터 하나씩 나열하도록 한다.

#### **Submodule 2(led_disp)** : 0이 나오는 것을 디폴트로 하여 0~59의 값을 갖는 6bit 입력 신호를 받아 각 자리의 수를 각각 4bit으로 출력

#### **Submodule 3(fnd_dec) : 0~9의 값을 갖는 4bit 입력 신호를 받아 7bit FND segment 값 출력

#### **Top Module** : 실습장비의  led와 디스플레이 순서에 맞는 디스플레이모듈을 설계

### FPGA 실습 : 리모컨의 버튼을 누르면 LED에 각 버튼에 해당하는 시그널이 디스플레이 되도록 한다.

: NCO(Numerical Controlled Oscillator) 입력 바꿔서 4초 간격으로 증가하는 코드 테스트

## 실습 결과 사진

#### 01: 실습결과

![](https://github.com/Jungtion/electronic_circuit_experiment/blob/master/Practice09/01.PNG)

#### 02: 0이 9ms동안 들어온 후 1로 시그널이 바뀐 순간이다.

#### 03: ir_rx가 0에서 1로 바뀌는 부분으로 cnt_l과 cnt_h가 초기화된 모습이다

#### 04: 32개의 데이터가 들어온 순간이다.(cnt32 신호 확인) 그래서 o_data가 이 이전에는 빨간줄로 시그널이 안나다가 이 이후에 신호가 1로 바뀐다.

#### 05: 실습장비의 led부분을 찍은 사진이다.

<!--stackedit_data:
eyJoaXN0b3J5IjpbMTI1OTM5NTU3LDIwMDM1Njg1MzNdfQ==
-->
