# 32 位微控制器

# KF32F330

# 数据手册

# 芯片特征

# ● CPU

32 位高性能 KungFu32 内核； 

工作频率最高为 72MHz，可软件调节； 

基于16位/32位混合指令的高效指令集； 

3 级流水线； 

32×32单周期乘法，32÷32硬件除法； 

支持中断优先级处理，实现自动中断堆栈； 

13 个 32 位通用寄存器 R0~R12； 

链接寄存器（R13）； 

堆栈指针寄存器（R14）； 

程序计数器（R15）； 

24位系统节拍定时器； 

# 存储器

最高 512KByte FLASH，带 ECC 校验； 

最高 96KByteRAM，其中 32KByte 带 ECC 校验； 

2 个 256Byte 双端口 RAM，带 ECC 校验； 

1 个 512Byte 双端口 RAM，带 ECC 校验； 

16KByte 引导 ROM； 

FLASH 可经受 100 000 次写操作； 

# 特殊功能

内嵌上电复位电路； 

低电压检测及低电压复位； 

可编程电压检测； 

硬件双看门狗； 

系统时钟6种时钟源可选； 

支持两线串行编程/在线调试； 

# ● I/O 口配置

LQFP-100 封装有 85 个通用 I/O； 

LQFP-64 封装有 53 个通用 I/O； 

LQFP-48 封装有 39 个通用 I/O； 

支持输入输出口设置； 

支持内置上拉/下拉功能； 

支持推挽输出和开漏输出模式； 

支持数字/模拟引脚设置； 

支持引脚功能重映射； 

施密特电平输入； 

# 定时器/计数器

定时器5/6/9/10为高级定时器，其中定时器 5/6 支持 ECCP5；定时器 9/10 支持 ECCP9 

定时器 0/1/2/3/4/18/19/22 为通用定时器，其 中 定 时 器 0/1/2/3/4/18/19/22 支 持 ； 

CCP0/1/2/3/4/18/19/22； 

定时器14/15：基本定时器； 

定时器 7/8 支持 QEI0/QEI1； 

# 其它外设

2 个 7 通道 DMA； 

1 个硬件 CRC32 模块； 

4 个SPI总线模块（兼容 I2S）； 

4 个 I2C 总线模块（兼容 SMBUS/PMBUS）； 

8 个 USART 模块（兼容 7816/LIN/IRDA 功 能）； 

2 个 CAN2.0B 模块； 

1 个 USB； 

1 个兼容 8080 模式的 EXIC 模块； 

1 个独立的RTC（万年历）； 

3 个12位ADC 模块，支持最多 42个通道； 

2 个 12 位 DAC 模块； 

2 个CMP 比较器模块； 

# 功耗管理

3 种功耗模式：正常运行模式、普通休眠模 式、停止模式； 

# 工作条件

工作电压： 1.8V～3.6V； 

工作温度范围：-40～85℃（默认）； 

*T：-40～105℃； 

# 目 录

# 芯片特征.

# 目 录 ...

# 1 芯片资源 ....

1.1 产品订购信息 KF32F330 .. . 6 

1.2 KF32F330xQS（LQFP48） 

1.3 KF32F330xQT（LQFP64） .. 8 

1.4 KF32F330xQV（LQFP100） 9 

# 2 系统概述 .. .10

2.1 系统概述.. .10 

2.2 指令集.. .10 

2.3 在线编程和调试. 

2.3.1 ISP 模式.. 11 

2.3.2 DPI 模式 . 11 

2.4 系统框图.. .12 

2.5 KF32F330 外设资源对照表 . .13 

2.6 芯片引脚图. .14 

2.6.1 LQFP48.. .14 

2.6.2 LQFP64.. .15 

2.6.3 LQFP100.. .. 16 

2.7 电源引脚说明.. 17 

# 3 振荡器（OSC） ...... .18

3.1 概述.. .18 

3.2 振荡器结构框图. .19 

# 4 存储器（memory） ....... .20

4.1 概述.. .20 

4.2 存储器空间映射. .20 

# 5 I/O 端口介绍... .22

5.1 概述.. .22 

5.2 引脚重映射说明（数字功能） .23 

5.3 引脚重映射说明（系统以及模拟功能） .27 

5.4 引脚重映射表-外部唤醒引脚、侵入检测和时间戳引脚映射. .31 

5.5 CCP 引脚资源. .31 

# 6 资源介绍 .... .33

6.1 DMA .. .33 

6.2 节拍定时器（SYSTICK） .33 

6.3 基本定时/计数器(T14/T15).. .33 

6.4 通用定时/计数器(T0/1/2/3/4/18/19/22).. .34 

6.5 高级定时/计数器（T5/T6/T9/T10） .34 

6.6 通用捕捉/比较/PWM 模块（CCP0/1/2/3/4/18/19/22） .34 

6.7 增强型捕捉/比较/PWM 模块(ECCP5/9) . .35 

6.8 正交编码脉冲电路（QEI0/1） .35 

6.9 模数转换模块（A/D） .36 

6.10 数模转换器模块（D/A） .36 

6.11 拟比较器模块（CMP） . 36 

6.12 通用全/半双工收发器（USART） .37 

6.13 串行外设接口（SPI） .37 

6.14 内部集成电路接口（I2C） .37 

6.15 EXIC 接口 ..... .38 

6.16 实时时钟（RTC） .38 

6.17 控制器局域网总线（CAN） .38 

6.18 独立看门狗（IWDT） .39 

6.19 窗口看门狗（WWDT） .39 

6.20 USB 模块（USB） .39 

6.21 CFGL 模块（CFGL） .. 40 

6.22 复位（RESET） .. 40 

6.23 外设模块时钟使能模块(CLK_EN).. .41 

6.24 循环冗余校验单元（CRC） .41 

# 7 电气特性 .. .. 42

7.1 概述... .42 

7.1.1 最大值和最小值说明.. .42 

7.1.2 典型值. .. 42 

7.2 最大承受范围.. .42 

7.3 运行条件.. .. 44 

7.3.1 常规运行条件.. .. 44 

7.3.2 上电/掉电的运行条件. .. 44 

7.3.3 复位和电源控制模块特性 BOR,PVD. .45 

7.3.4 BAT PVD.. .. 46 

7.3.5 电源电流特性. .. 46 

7.3.6 内核电源 VREG. .. 49 

7.4 时钟源特性. .50 

7.4.1 HSE .. .. 50 

7.4.2 LSE.. .50 

7.4.3 HSI . .51 

7.4.4 LP4M . .51 

7.4.5 LSI.. .51 

7.4.6 PLL. .52 

7.5 IO 端口特性 .53 

7.5.1 静态特性. .53 

7.5.2 IO 输出特性.. .. 53 

7.5.3 IO AC 特性. .. 53 

7.5.4 NRST 管脚特性. .54 

7.5.5 外部中断特性. .54 

# 7.6 外设... .. 55

7.6.1 ADC 12BIT 特性.. .55 

7.6.2 DAC 12 BIT 转换特性. .56 

7.6.3 电压参考 VREFREG 特性. .. 58 

7.6.4 比较器特性. .. 58 

7.6.5 运算放大器. .59 

7.6.6 USB 全低速收发器模块电气特性. .59 

# 7.7 功耗特性. .60

7.7.1 程序运行在FLASH时的静态功耗特性. .60 

7.7.2 程序运行在SRAM时的静态功耗特性. .60 

7.7.3 休眠功耗特性. .. 61 

7.7.4 低功耗模式特性 .. 61 

# 8 封装信息 .... .62

8.1 LQFP48 封装. . 62 

8.2 LQFP64 封装. .62 

8.3 LQFP100 封装.. .63 

# 9 KF32 产品标识体系.. .64

10 RoHS 认证 .. .65 

11 声明及销售网络.... ... 66 

12 版本更新记录 .... .67 

# 1 芯片资源


1.1 产品订购信息 KF32F330


<table><tr><td rowspan="2">型号</td><td rowspan="2">订货号</td><td rowspan="2">封装</td><td rowspan="2">GPIO</td><td rowspan="2">FLASH(KB)</td><td rowspan="2">RAM(KB)</td><td rowspan="2">频率(Hz)</td><td colspan="3">16位定时器</td><td rowspan="2">CCP</td><td rowspan="2">ECCP</td><td rowspan="2">QEI</td><td rowspan="2">EXIC</td><td rowspan="2">SPI</td><td rowspan="2">I2C</td><td rowspan="2">USART</td><td rowspan="2">CAN</td><td rowspan="2">USB</td><td rowspan="2">12位ADC</td><td rowspan="2">12位DAC</td><td rowspan="2">比较器</td><td rowspan="2">RTC</td><td rowspan="2">CFGL</td><td rowspan="2">CRC</td><td rowspan="2">工作电压(V)</td></tr><tr><td>基本</td><td>通用</td><td>高级</td></tr><tr><td rowspan="9">KF32F330</td><td>KF32F330GQS</td><td>LQFP48</td><td>39</td><td>64</td><td>32</td><td>72M</td><td>2</td><td>4</td><td>2</td><td>4</td><td>1X8ch</td><td>1</td><td>N</td><td>2</td><td>2</td><td>3</td><td>1</td><td>1</td><td>2(22)</td><td>N</td><td>2</td><td>Y</td><td>Y</td><td>Y</td><td>1.8~3.6V</td></tr><tr><td>KF32F330IQS</td><td>LQFP48</td><td>39</td><td>128</td><td>32</td><td>72M</td><td>2</td><td>4</td><td>2</td><td>4</td><td>1X8ch</td><td>1</td><td>N</td><td>2</td><td>2</td><td>3</td><td>1</td><td>1</td><td>2(22)</td><td>N</td><td>2</td><td>Y</td><td>Y</td><td>Y</td><td>1.8~3.6V</td></tr><tr><td>KF32F330IQT</td><td>LQFP64</td><td>53</td><td>128</td><td>32</td><td>72M</td><td>2</td><td>4</td><td>4</td><td>4</td><td>2X8ch</td><td>2</td><td>N</td><td>2</td><td>2</td><td>3</td><td>2</td><td>1</td><td>2(31)</td><td>2</td><td>2</td><td>Y</td><td>Y</td><td>Y</td><td>1.8~3.6V</td></tr><tr><td>KF32F330KQT</td><td>LQFP64</td><td>53</td><td>256</td><td>96</td><td>72M</td><td>2</td><td>8</td><td>4</td><td>8</td><td>2X8ch</td><td>2</td><td>N</td><td>4</td><td>3</td><td>8</td><td>2</td><td>1</td><td>2(31)</td><td>2</td><td>2</td><td>Y</td><td>Y</td><td>Y</td><td>1.8~3.6V</td></tr><tr><td>KF32F330KQTA[1]</td><td>LQFP64</td><td>53</td><td>256</td><td>96</td><td>72M</td><td>2</td><td>8</td><td>4</td><td>8</td><td>2X8ch</td><td>2</td><td>N</td><td>4</td><td>3</td><td>8</td><td>2</td><td>1</td><td>2(31)</td><td>2</td><td>2</td><td>Y</td><td>Y</td><td>Y</td><td>1.8~3.6V</td></tr><tr><td>KF32F330MQT</td><td>LQFP64</td><td>53</td><td>512</td><td>96</td><td>72M</td><td>2</td><td>8</td><td>4</td><td>8</td><td>2X8ch</td><td>2</td><td>N</td><td>4</td><td>3</td><td>8</td><td>2</td><td>1</td><td>2(31)</td><td>2</td><td>2</td><td>Y</td><td>Y</td><td>Y</td><td>1.8~3.6V</td></tr><tr><td>KF32F330IQV</td><td>LQFP100</td><td>85</td><td>128</td><td>32</td><td>72M</td><td>2</td><td>4</td><td>4</td><td>4</td><td>2X8ch</td><td>2</td><td>Y</td><td>4</td><td>4</td><td>8</td><td>2</td><td>1</td><td>3(42)</td><td>2</td><td>2</td><td>Y</td><td>Y</td><td>Y</td><td>1.8~3.6V</td></tr><tr><td>KF32F330KQV</td><td>LQFP100</td><td>85</td><td>256</td><td>96</td><td>72M</td><td>2</td><td>8</td><td>4</td><td>8</td><td>2X8ch</td><td>2</td><td>Y</td><td>4</td><td>4</td><td>8</td><td>2</td><td>1</td><td>3(42)</td><td>2</td><td>2</td><td>Y</td><td>Y</td><td>Y</td><td>1.8~3.6V</td></tr><tr><td>KF32F330MQV</td><td>LQFP100</td><td>85</td><td>512</td><td>96</td><td>72M</td><td>2</td><td>8</td><td>4</td><td>8</td><td>2X8ch</td><td>2</td><td>Y</td><td>4</td><td>4</td><td>8</td><td>2</td><td>1</td><td>3(42)</td><td>2</td><td>2</td><td>Y</td><td>Y</td><td>Y</td><td>1.8~3.6V</td></tr></table>

# 1.2 KF32F330xQS（LQFP48）


表 1-1 KF32F330 48 封装资源表


<table><tr><td>型号</td><td colspan="4">KF32F330</td></tr><tr><td>订货号</td><td>KF32F330GQS</td><td>KF32F330GQST</td><td>KF32F330IQS</td><td>KF32F330IQST</td></tr><tr><td>封装</td><td colspan="4">LQFP48</td></tr><tr><td>GPIO</td><td colspan="4">39</td></tr><tr><td>FLASH</td><td colspan="2">64 Kbyte,带 ECC 校验</td><td colspan="2">128Kbyte,带 ECC 校验</td></tr><tr><td>RAM</td><td colspan="4">32Kbyte,带 ECC 校验</td></tr><tr><td>ROM</td><td colspan="4">16 Kbyte</td></tr><tr><td rowspan="3">16 位 Timer</td><td colspan="4">2 个高级定时器(T5/T6),支持 1 个增强型 ECCP5</td></tr><tr><td colspan="4">4 个通用定时器,支持 4 个通用 CCP</td></tr><tr><td colspan="4">2 个基本定时器(T14/T15)</td></tr><tr><td>QEI</td><td colspan="4">1</td></tr><tr><td>12 位 ADC</td><td colspan="4">2*22</td></tr><tr><td>CMP</td><td colspan="4">2</td></tr><tr><td>USB2.0</td><td colspan="4">Y</td></tr><tr><td>USART</td><td colspan="4">3</td></tr><tr><td>I2C</td><td colspan="4">2</td></tr><tr><td>SPI</td><td colspan="4">2</td></tr><tr><td>CAN2.0</td><td colspan="4">1</td></tr><tr><td>DMA</td><td colspan="4">2x7</td></tr><tr><td>CFGL</td><td colspan="4">Y</td></tr><tr><td>RTC</td><td colspan="4">Y</td></tr><tr><td>CRC</td><td colspan="4">Y</td></tr><tr><td>内部高频振荡器</td><td colspan="4">16MHz</td></tr><tr><td>内部低频振荡器</td><td colspan="4">32KHz</td></tr><tr><td>外部高频时钟</td><td colspan="4">4~32MHz</td></tr><tr><td>外部低频时钟</td><td colspan="4">32.768KHz</td></tr><tr><td>内部参考</td><td colspan="4">1.5/2/2.5/3V</td></tr><tr><td>器件 ID 号</td><td colspan="4">含出厂版本号等</td></tr><tr><td>指令系统</td><td colspan="4">V0</td></tr><tr><td>工作电压</td><td colspan="4">1.8V ~ 3.6V</td></tr><tr><td>工作温度</td><td>-40 ~ 85°C</td><td>-40 ~ 105°C</td><td>-40 ~ 85°C</td><td>-40 ~ 105°C</td></tr></table>

# 1.3 KF32F330xQT（LQFP64）


表 1-2 KF32F330 64 封装资源表


<table><tr><td>型号</td><td colspan="7">KF32F330</td></tr><tr><td>订货号</td><td>KF32F330IQT</td><td>KF32F330IQTT</td><td>KF32F330KQT</td><td>KF32F330KQTA</td><td>KF32F330KQTT</td><td>KF32F330MQT</td><td>KF32F330MQTT</td></tr><tr><td>封装</td><td colspan="7">LQFP64</td></tr><tr><td>GPIO</td><td colspan="7">53</td></tr><tr><td>FLASH</td><td colspan="2">128Kbyte,带ECC校验</td><td colspan="3">256Kbyte,带ECC校验</td><td colspan="2">512Kbyte,带ECC校验</td></tr><tr><td>RAM</td><td colspan="2">32Kbyte,带ECC校验</td><td colspan="5">96Kbyte,带ECC校验</td></tr><tr><td>ROM</td><td colspan="7">16 Kbyte</td></tr><tr><td rowspan="4">16位Timer</td><td colspan="7">4个高级定时器(T5/T6/T9/T10),支持2个增强型ECCP5/ECCP9</td></tr><tr><td colspan="2">4个通用定时器,支持4个通用CCP</td><td colspan="5">8个通用定时器,支持8个通用CCP</td></tr><tr><td colspan="7">2个基本定时器(T14/T15)</td></tr><tr><td colspan="7">无低功耗通用定时器</td></tr><tr><td>QEI</td><td colspan="7">2</td></tr><tr><td>12位ADC</td><td colspan="7">2*31</td></tr><tr><td>CMP</td><td colspan="7">2</td></tr><tr><td>DAC</td><td colspan="2">2</td><td colspan="5">2</td></tr><tr><td>USART</td><td colspan="2">3</td><td colspan="5">8</td></tr><tr><td>I2C</td><td colspan="2">2</td><td colspan="5">3</td></tr><tr><td>SPI</td><td colspan="2">3</td><td colspan="5">4</td></tr><tr><td>CAN2.0</td><td colspan="7">2</td></tr><tr><td>USB2.0</td><td colspan="7">Y</td></tr><tr><td>DMA</td><td colspan="7">2x7</td></tr><tr><td>CFGL</td><td colspan="7">Y</td></tr><tr><td>RTC</td><td colspan="7">Y</td></tr><tr><td>CRC</td><td colspan="7">Y</td></tr><tr><td>内部高频振荡器</td><td colspan="7">16MHz</td></tr><tr><td>内部低频振荡器</td><td colspan="7">32KHz</td></tr><tr><td>外部高频时钟</td><td colspan="7">4~32MHz</td></tr><tr><td>外部低频时钟</td><td colspan="7">32.768KHz</td></tr><tr><td>内部参考</td><td colspan="7">1.5/2/2.5/3V</td></tr><tr><td>器件ID号</td><td colspan="7">含出厂版本号等</td></tr><tr><td>指令系统</td><td colspan="7">V0</td></tr><tr><td>工作电压</td><td colspan="7">1.8V~3.6V</td></tr><tr><td>工作温度</td><td>-40~85°C</td><td>-40~105°C</td><td>-40~85°C</td><td>-40~85°C</td><td>-40~105°C</td><td>-40~85°C</td><td>-40~105°C</td></tr></table>

# 1.4 KF32F330xQV（LQFP100）


表 1-3 KF32F330 100 封装资源表


<table><tr><td>型号</td><td colspan="6">KF32F330</td></tr><tr><td>订货号</td><td>KF32F330IQV</td><td>KF32F330IQVT</td><td>KF32F330KQV</td><td>KF32F330KQVT</td><td>KF32F330MQV</td><td>KF32F330MQVT</td></tr><tr><td>封装</td><td colspan="6">LQFP100</td></tr><tr><td>GPIO</td><td colspan="6">85</td></tr><tr><td>FLASH</td><td colspan="2">128Kbyte,带ECC校验</td><td colspan="2">256Kbyte,带ECC校验</td><td colspan="2">512Kbyte,带ECC校验</td></tr><tr><td>RAM</td><td colspan="2">32Kbyte,带ECC校验</td><td colspan="4">96Kbyte,带ECC校验</td></tr><tr><td>ROM</td><td colspan="6">16 Kbyte</td></tr><tr><td rowspan="4">16位Timer</td><td colspan="6">4个高级定时器(T5/T6/T9/T10),支持2个增强型ECCP5/ECCP9</td></tr><tr><td colspan="2">4个通用定时器,支持4个通用CCP</td><td colspan="4">8个通用定时器,支持8个通用CCP</td></tr><tr><td colspan="6">2个基本定时器(T14/T15)</td></tr><tr><td colspan="6">无低功耗通用定时器</td></tr><tr><td>QEI</td><td colspan="6">2</td></tr><tr><td>12位ADC</td><td colspan="6">3*42</td></tr><tr><td>CMP</td><td colspan="6">2</td></tr><tr><td>DAC</td><td colspan="6">2</td></tr><tr><td>USB2.0</td><td colspan="6">Y</td></tr><tr><td>USART</td><td colspan="6">8</td></tr><tr><td>I2C</td><td colspan="6">4</td></tr><tr><td>SPI</td><td colspan="6">4</td></tr><tr><td>CAN2.0</td><td colspan="6">2</td></tr><tr><td>DMA</td><td colspan="6">2x7</td></tr><tr><td>CFGL</td><td colspan="6">Y</td></tr><tr><td>RTC</td><td colspan="6">Y</td></tr><tr><td>EXIC</td><td colspan="6">Y</td></tr><tr><td>CRC</td><td colspan="6">Y</td></tr><tr><td>内部高频振荡器</td><td colspan="6">16MHz</td></tr><tr><td>内部低频振荡器</td><td colspan="6">32KHz</td></tr><tr><td>外部高频时钟</td><td colspan="6">4~32MHz</td></tr><tr><td>外部低频时钟</td><td colspan="6">32.768KHz</td></tr><tr><td>内部参考</td><td colspan="6">1.5/2/2.5/3V</td></tr><tr><td>器件ID号</td><td colspan="6">含出厂版本号等</td></tr><tr><td>指令系统</td><td colspan="6">V0</td></tr><tr><td>工作电压</td><td colspan="6">1.8V~3.6V</td></tr><tr><td>工作温度</td><td>-40~85°C</td><td>40~105°C</td><td>40~85°C</td><td>40~105°C</td><td>40~85°C</td><td>40~105°C</td></tr></table>

# 2 系统概述

# 2.1 系统概述

KF32F330 系列单片机是基于 KF32 内核架构开发的单片机。KF32 为32 位三级流水线 结构的高性能处理器内核，KF32内核具有以下特点： 

三级流水线结构 

基于 16 位/32位混合指令的高效指令集 

支持 13 个 32 位通用寄存器（R0~R12），1 个链接寄存器（R13），1 个堆栈指 针寄存器（R14），1个程序计数器（R15） 

支持 32×32 单周期硬件乘法 

支持 32/32 硬件除法 

支持 8/16/32 位数据访存操作，支持 8/16/32/64 位数据处理 

支持加减移位和逻辑运算 

支持相对/绝对跳转，支持条件跳转 

具有统一的存储空间，32 位地址位宽，支持 4GB 存储空间 

支持最多 58+16 个中断请求和16 个中断优先级 

支持多种休眠模式 

支持 24 位系统节拍定时器 

提供了可编程存储器访问权限控制 

支持多种操作系统（OS）特性 

# 2.2 指令集

KF32F330 系列单片机拥有基于 16 位/32 位混合指令的高效指令集，拥有多种操作模 式。 

# 2.3 在线编程和调试

开发人员和用户可以使用未编程的单片机来制造电路板，然后对其在线编程，调试等。 只要有电脑、USB下载线和编程器，即可在任何时候，任何地点，对电路板上的单片机程 序进行更新。 

可以通过下列方式实现对单片机的编程或调试： 

ISP 模式进行编程 

DPI模式进行调试或编程 

# 2.3.1 ISP 模式

在 ROM 启动模式中可以直接通过串口实现对芯片的编程。该模式接口连接如下图所 示。 

![](images/56a345c96b02fbe59f18ea3769b3cd384bfb49c9f84d29566ae0ce9a6ff7a33e.jpg)



图 2-1 ISP 模式编程接口


# 2.3.2 DPI 模式

DPI（Debug/Program Interface）模式通过 KF32DP 编程器对芯片进行调试或编程。该 模式接口连接如下图所示。 

![](images/6725e70bc84d88ff1eba493edfc1249f23f9abd34d35c318885fd9c07ec127b9.jpg)


图 2-2 DPI模式编程接口 

# 2.4 系统框图

![](images/dbaa0e34322d6858b13a9f8db0a61b7880fcf0961681d58b6ef9ba795c74fdbd.jpg)



图2-3 系统结构框图


# 2.5 KF32F330 外设资源对照表


表 2-1 KF32F330 外设资源对照表


<table><tr><td>型号</td><td colspan="8">KF32F330</td></tr><tr><td>订货号</td><td>KF32F330GQS</td><td>KF32F330IQS</td><td>KF32F330IQT</td><td>KF32F330KQT</td><td>KF32F330MQT</td><td>KF32F330IQV</td><td>KF32F330KQV</td><td>KF32F330MQV</td></tr><tr><td>封装</td><td>LQFP48</td><td>LQFP48</td><td>LQFP64</td><td>LQFP64</td><td>LQFP64</td><td>LQFP100</td><td>LQFP100</td><td>LQFP100</td></tr><tr><td>GPIO</td><td>39</td><td>39</td><td>53</td><td>53</td><td>53</td><td>85</td><td>85</td><td>85</td></tr><tr><td>FLASH</td><td>64KB</td><td>128KB</td><td>128KB</td><td>256KB</td><td>512KB</td><td>128KB</td><td>256KB</td><td>512KB</td></tr><tr><td>RAM</td><td>32KB</td><td>32KB</td><td>32KB</td><td>48KB</td><td>48KB</td><td>32KB</td><td>48KB</td><td>48KB</td></tr><tr><td>ROM</td><td>16KB</td><td>16KB</td><td>16KB</td><td>16KB</td><td>16KB</td><td>16KB</td><td>16KB</td><td>16KB</td></tr><tr><td>频率(Hz)</td><td>72M</td><td>72M</td><td>72M</td><td>72M</td><td>72M</td><td>72M</td><td>72M</td><td>72M</td></tr><tr><td>16位基本定时器</td><td>T14/15</td><td>T14/15</td><td>T14/15</td><td>T14/15</td><td>T14/15</td><td>T14/15</td><td>T14/15</td><td>T14/15</td></tr><tr><td>16位通用定时器</td><td>T0/1/2/3</td><td>T0/1/2/3</td><td>T0/1/2/3</td><td>T0/1/2/3/4/18/19/22</td><td>T0/1/2/3/4/18/19/22</td><td>T0/1/2/3</td><td>T0/1/2/3/4/18/19/22</td><td>T0/1/2/3/4/18/19/22</td></tr><tr><td>16位高级定时器</td><td>T5/6</td><td>T5/6</td><td>T5/6/9/10</td><td>T5/6/9/10</td><td>T5/6/9/10</td><td>T5/6/9/10</td><td>T5/6/9/10</td><td>T5/6/9/10</td></tr><tr><td>QEI</td><td>QEIO</td><td>QEIO</td><td>QEIO/1</td><td>QEIO/1</td><td>QEIO/1</td><td>QEIO/1</td><td>QEIO/1</td><td>QEIO/1</td></tr><tr><td>12位ADC</td><td>ADC0/1</td><td>ADC0/1</td><td>ADC0/1</td><td>ADC0/1</td><td>ADC0/1</td><td>ADC0/1</td><td>ADC0/1</td><td>ADC0/1</td></tr><tr><td>DAC</td><td>N</td><td>N</td><td>DAC0/1</td><td>DAC0/1</td><td>DAC0/1</td><td>DAC0/1</td><td>DAC0/1</td><td>DAC0/1</td></tr><tr><td>CMP</td><td>CMP0/1</td><td>CMP0/1</td><td>CMP0/1</td><td>CMP0/1</td><td>CMP0/1</td><td>CMP0/1</td><td>CMP0/1</td><td>CMP0/1</td></tr><tr><td>USART</td><td>USART0/1/2</td><td>USART0/1/2</td><td>USART0/1/2</td><td>USART0/1/2/3/4/5/6/7</td><td>USART0/1/2/3/4/5/6/7</td><td>USART0/1/2/3/4/5/6/7</td><td>USART0/1/2/3/4/5/6/7</td><td>USART0/1/2/3/4/5/6/7</td></tr><tr><td>I2C</td><td>I2C0/1</td><td>I2C0/1</td><td>I2C0/1</td><td>I2C0/1/2</td><td>I2C0/1/2</td><td>I2C0/1/2/3</td><td>I2C0/1/2/3</td><td>I2C0/1/2/3</td></tr><tr><td>SPI</td><td>SPI0/1</td><td>SPI0/1</td><td>SPI0/1</td><td>SPI0/1/2/3</td><td>SPI0/1/2/3</td><td>SPI0/1/2/3</td><td>SPI0/1/2/3</td><td>SPI0/1/2/3</td></tr><tr><td>CAN2.0</td><td>CAN0</td><td>CAN0</td><td>CAN0/1</td><td>CAN0/1</td><td>CAN0/1</td><td>CAN0/1</td><td>CAN0/1</td><td>CAN0/1</td></tr><tr><td>CFGL</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>RTC</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>DMA</td><td>DMA0/1</td><td>DMA0/1</td><td>DMA0/1</td><td>DMA0/1</td><td>DMA0/1</td><td>DMA0/1</td><td>DMA0/1</td><td>DMA0/1</td></tr><tr><td>USB2.0</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CRC</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td><td>Y</td></tr></table>

# 2.6 芯片引脚图

# 2.6.1 LQFP48

图 2-4 LQFP48 

# 2.6.2 LQFP64

# 2.6.3 LQFP100

# 2.7 电源引脚说明


表 2-2 电源引脚连接说明


<table><tr><td>引脚名称</td><td>功能说明</td></tr><tr><td>VDD/VSS</td><td>供电电源/地引脚,所有 VDD、VSS 须在外围分别连接,需要接 4.7uF 电容和稳压二极管,靠近 VDD/VSS;每组电源地之间,还需要接一个 100nF 的电容,方式参考下图。<img src="bff8c8b6ffa326379fee64c4f02a7296c056406e1830b9d11e664836230e8cd2.jpg"/></td></tr><tr><td>VDDA/VSSA</td><td>模拟电源/地引脚。VDDA 须和 VDD 外围连接,VSSA 须和 VSS 外围连接,需要接 1uF+100nF 电容,靠近 VDDA/VSSA。方式参考下图。<img src="76a210c49a4df2e1f47b126523231efdefb28da20b0196364d71c09fc3a2b82f.jpg"/></td></tr><tr><td>VREF+/VREF-</td><td>AD 参考电源/地脚,使用 VREF-引脚功能时需要接地,需要接 1uF+100nF 电容,靠近 VREF+/-;方式参考下图。注意:1.使用内部参考电压模块时,VREF+/VREF-将被占用;因此,当使用外部参考电压时,请勿使能内部参考电压模块。2.部分封装该引脚位于通用 IO 口。<img src="55fa7a5123df1efcb484f850f486e6d61852b4fed2c251acc8cf33484b7f2e3f.jpg"/></td></tr><tr><td>VREG</td><td>1.2V 外接电容脚,必须外接 2.2uF 电容。<img src="edea240302fcc6042e963f366bf8d6c686b49a87094b397409d14f52dbc61be5.jpg"/></td></tr><tr><td>VBAT</td><td>电池脚,使用时建议接电容 1uF。</td></tr></table>

# 3 振荡器（OSC）

# 3.1 概述

单片机提供 6 种基础时钟振荡器选择，分别为内部高频（INTHF）、内部低频（INTLF）、 外部高频（EXTHF）、外部低频（EXTLF）、内部的 PLL 和低功耗 4M 时钟 LP4M。内部 的 PLL 可以将内部高频（INTHF）和外部高频（EXTHF）的输出时钟倍频，提供更高频率 的工作时钟选择，作为系统和外设工作需要的基础时钟。通过寄存器配置，可以从 6 种振荡 器中得到 4 种系统和外设运行时需要的时钟源：系统主时钟（SCLK）、低频外设时钟 （LFCLK）、高频外设时钟（HFCLK）和 48MHz时钟（CK48M）满足不同的需要。此外， 内部低频振荡器还可以直接用于看门狗定时器、时钟故障检测或是其他低功耗外设的时钟。 

系统复位后，INTHF 振荡器被选为系统时钟，当系统时钟需要切换时，只有当目标时 钟源准备就绪（时钟源稳定，延迟标志位置 1），才会发生时钟源的切换。 

振荡器模块具有以下特征： 

提供6种振荡源选择 

➢ 内部高频振荡器 INTHF（16MHz） 

➢ 内部低频振荡器 INTLF（32KHz） 

➢ 外接高频振荡器 EXTHF（4~32MHz） 

➢ 外部低频振荡器 EXTLF（32.768KHz 的晶振） 

➢ 内部 PLL（最高 400MHz） 

➢ 内部低功耗振荡器 LP4M（4MHz） 

可产生 4 种时钟源 

➢ 系统主时钟 SCLK 

由内部高频（INTHF）、内部低频（INTLF）、外部高频（EXTHF）、外部低 频（EXTLF）、PLL倍频或内部 4M振荡器（LP4M）产生。 

➢ 高频外设时钟HFCLK 

由内部高频（INTHF）、外部高频（EXTHF）、PLL 倍频或内部 4M 振荡器 （LP4M）产生。 

➢ 低频外设时钟 LFCLK 

由内部低频（INTLF）或外部低频（EXTLF）产生。 

➢ USB 时钟 CK48M 

由内部高频（INTHF）、外部高频（EXTHF）经由PLL倍频产生，实际USB 需要使用 48MHz 时钟。 

外部时钟启动/切换保障 

带时钟同步功能 

带时钟故障检测功能 

# 3.2 振荡器结构框图

![](images/cacda1b2da752eee229f123e67eca6666911896252bbe84c3dec26bf6c4ed18b.jpg)



图3-1振荡器结构框图


注 1：内部低频可直接用于时钟故障检测、看门狗、上电复位延迟定时器（PWRT）以及低 功耗外设。 

注 2：当任意时钟源选择 EXTHF 作为时钟源或软件使能时 EXTHF_EN 使能。 

注3：当任意时钟源选择EXTLF作为时钟源或软件使能时 EXTLF_EN 使能。 

# 4 存储器（memory）

# 4.1 概述

芯片为统一线性编址。芯片采用小端存储格式，低字节为最低有效位，高字节为最高有 效位。 

# 4.2 存储器空间映射

![](images/46b17067fc6c96ebd13f43415265c1ab3cd5e84b4eebeba768ee16129f49c687.jpg)



图4-1 存储空间映射


注意，上图中的外设为 KF32F 系列单片机的所有外设汇总，具体订货号所带资源，请 参见芯片资源章节和外设资源对照表。最左边的系统的 FLASH/RAM/ROM地址为各型号的预 留空间。 


表4-1存储器预留空间分配示意


<table><tr><td>地址</td><td>模块</td></tr><tr><td>0x0000 0000 - 0x0007 FFFF</td><td>FLASH 空间,带 ECC 校验</td></tr><tr><td>0x1000 0000 - 0x1000 7FFF</td><td>单端口 SRAM 空间,带 ECC 校验</td></tr><tr><td>0x1000 8000 - 0x1001 7FFF</td><td>单端口 SRAM 空间</td></tr><tr><td>0x1FFE F800 - 0x1FFE F9FF</td><td>双端口 SRAM 空间,带 ECC 校验</td></tr><tr><td>0x1FFF 0000 - 0x1FFF 3FFF</td><td>ROM 空间</td></tr><tr><td>0x4000 0000 - 0x4007 FFFF</td><td>外设</td></tr><tr><td>0x4020 0000 - 0x4020 0FFF</td><td>内核外设</td></tr><tr><td>0x5000 0000 - 0x501F FFFF</td><td>GPIO</td></tr></table>


表4-2不同型号对应 Flash存储器空间


<table><tr><td>FLASH 大小</td><td>有效地址</td><td>对应产品订货号</td></tr><tr><td>512KB</td><td>0x0000 0000 - 0x0007 FFFF</td><td>KF32F330MQT/MQV</td></tr><tr><td>256KB</td><td>0x0000 0000 - 0x0003 FFFF</td><td>KF32F330KQT/KQV</td></tr><tr><td>128KB</td><td>0x0000 0000 - 0x0001 FFFF</td><td>KF32F330IQV/IQS/IQT</td></tr><tr><td>64KB</td><td>0x0000 0000 - 0x0000 FFFF</td><td>KF32F330GQS</td></tr></table>

# 5 I/O 端口介绍

# 5.1 概述

单片机有不同的管脚封装，分别是 LQFP48、LQFP64、LQFP100。 

单片机最多支持 100个引脚，包括PA口、PB口、PC 口、PD 口、PE 口、PF口、PG 口、PH 口和电源等特殊引脚。每个 Px（x=A,B,C,D,E,F,G,H）最多有 16 个引脚。 

端口特性如下： 

数字输入 

数字输出 

➢ 推挽式输出 

➢ 开漏输出 

➢ 浮空输出 

模拟输入设置 

独立端口上/下拉控制 

注：浮空输出为部分重映射功能 

# 5.2 引脚重映射说明（数字功能）

# 引脚的数字重映射功能说明：

对于不同封装所开放的模块资源不同，具体参考“表 2-1 KF32F330外设资源对照表”； 

各模块的功能引脚开放情况，参考本章节的“引脚重映射表”，以该表实际封装出的映射为准。 


表 5-1引脚重映射表_数字功能


<table><tr><td colspan="3">KF32F330</td><td>GPIO</td><td>AF0</td><td>AF1</td><td>AF2</td><td>AF3</td><td>AF4</td><td>AF5</td><td>AF6</td><td>AF7</td><td>AF8</td><td>AF9</td><td>AF10</td><td>AF11</td><td>AF12</td><td>AF13</td><td>AF14</td></tr><tr><td>LQFP100</td><td>LQFP64</td><td>LQFP48</td><td>GPIO</td><td>SYSTEM</td><td>T0/1/2/3/4</td><td>T5/6/9/10</td><td>QEII</td><td>T14/T15/18/19/22/QEI0</td><td>USART0/1/2</td><td>USART3/4/5/6/7</td><td>SPI0/1/2/3</td><td>I2C0/1/2/3</td><td>CAN0/CAN1/FLT0/FLT1</td><td>额外提供</td><td>额外提供</td><td>CFGL</td><td>额外提供</td><td>额外提供</td></tr><tr><td>25</td><td>16</td><td></td><td>PH13</td><td></td><td>CCP2CH3</td><td>ECCP5CH3H</td><td></td><td></td><td>USART2_TX0</td><td></td><td></td><td>I2C1_SDA</td><td></td><td></td><td></td><td>CFGL1_IN0</td><td></td><td></td></tr><tr><td>26</td><td>17</td><td></td><td>PH15</td><td></td><td>CCP2CH4</td><td>ECCP5CH1L</td><td></td><td>T14CK</td><td>USART2_RX</td><td></td><td></td><td>I2C0_SCL</td><td></td><td></td><td></td><td>CFGL2_IN0</td><td></td><td></td></tr><tr><td>27</td><td>18</td><td>13</td><td>VSS</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>28</td><td>19</td><td>14</td><td>VDD</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>29</td><td>20</td><td>15</td><td>PE15</td><td></td><td>T1CK</td><td></td><td></td><td>QEA0</td><td>USART2_CLK</td><td></td><td>SPI0_SS/I2S0_WS</td><td></td><td></td><td>SPI3_SS/I2S3_WS</td><td></td><td>CFGL1_IN2</td><td></td><td></td></tr><tr><td>30</td><td>21</td><td>16</td><td>PA0</td><td>CLKOUT/ROM_RX</td><td>CCP0CH1</td><td>ECCP5CH1L</td><td></td><td>T14CK</td><td>USART0_RX</td><td></td><td>I2S0_MCK</td><td>I2C0_SDA</td><td></td><td>SPI0_SCK/I2S0_CK</td><td></td><td>CFGL1_IN1</td><td>EXIC_DATA0</td><td>ECCP9CH1L</td></tr><tr><td>31</td><td>22</td><td>17</td><td>PA1</td><td>ROM_TX</td><td>CCP0CH2</td><td>ECCP5CH1H</td><td></td><td>T15CK</td><td>USART0_TX0</td><td></td><td>SPI0_SDI</td><td>I2C0_SCL</td><td></td><td>ECCP5BKIN</td><td>CCP3CH1</td><td>CFGL1_IN0</td><td>EXIC_DATA1</td><td>ECCP9BKIN</td></tr><tr><td>32</td><td>23</td><td>18</td><td>PA2</td><td></td><td>CCP0CH3</td><td>ECCP5CH2L</td><td></td><td></td><td>USART0_TX1</td><td>USART3_RX</td><td>SPI0_SDO/I2S0_SD</td><td>I2C0_SMBALT</td><td>CAN0RX</td><td>ECCP5CH1L</td><td>CCP3CH2</td><td>CFGL2_IN0</td><td>EXIC_DATA2</td><td>ECCP9CH1L</td></tr><tr><td>33</td><td>24</td><td>19</td><td>PA3</td><td></td><td>CCP0CH4</td><td>ECCP5CH2H</td><td></td><td>QEA0</td><td>USART0_CLK</td><td>USART3_TX0</td><td>SPI0_SS/I2S0_WS</td><td></td><td>CAN0TX</td><td></td><td></td><td>CFGL1_OUT</td><td>EXIC_DATA3</td><td></td></tr><tr><td>34</td><td>25</td><td>20</td><td>PA5</td><td></td><td>CCP3CH1</td><td>ECCP5CH3H</td><td></td><td>INDEX0</td><td>USART0_RTS</td><td>USART5_RX</td><td>SPI1_SDI</td><td>I2C2_SCL</td><td>CAN1TX</td><td></td><td></td><td></td><td>EXIC_DATA5</td><td></td></tr><tr><td>35</td><td>26</td><td>21</td><td>PA6</td><td></td><td>CCP3CH2</td><td>ECCP5CH4L</td><td></td><td>QEI0DIR</td><td>USART0_CTS</td><td>USART5_TX0</td><td>SPI1_SDO/I2S1_SD</td><td>I2C2_SMBALT</td><td></td><td>ECCP5CH2L</td><td>CCP3CH3</td><td></td><td>EXIC_DATA6</td><td>ECCP9CH2L</td></tr><tr><td>36</td><td>27</td><td>22</td><td>PA7</td><td></td><td></td><td>ECCP5CH3L</td><td></td><td>CCP19CH1</td><td></td><td>USART5_RX</td><td></td><td></td><td></td><td></td><td>CCP3CH4</td><td></td><td></td><td>ECCP9CH3L</td></tr><tr><td>37</td><td>28</td><td>23</td><td>PA8</td><td></td><td>CCP3CH3</td><td>ECCP5CH4H</td><td>QEA1</td><td>CCP19CH2</td><td>USART2_RX</td><td></td><td>SPI1_SS/I2S1_WS</td><td>I2C0_SDA</td><td></td><td></td><td>C0OUT</td><td></td><td>EXIC_DATA0</td><td></td></tr><tr><td>38</td><td></td><td></td><td>PA9</td><td></td><td>CCP3CH4</td><td>T5CK</td><td>QEB1</td><td>CCP19CH3</td><td>USART2_TX0</td><td></td><td>SPI1_SCK/I2S1_CK</td><td>I2C0_SCL</td><td>FLTI1</td><td></td><td>C1OUT</td><td></td><td>EXIC_DATA1</td><td></td></tr><tr><td>39</td><td></td><td></td><td>PA10</td><td></td><td>T3CK</td><td>ECCP5BKIN</td><td>INDEX1</td><td>CCP19CH4</td><td>USART2_CLK</td><td></td><td>I2S1_MCK</td><td>I2C0_SMBALT</td><td>FLTI0</td><td>ECCP5CH1L</td><td></td><td></td><td>EXIC_DATA2</td><td></td></tr><tr><td>40</td><td></td><td></td><td>PA11</td><td></td><td>CCP4CH1</td><td></td><td>QEI1DIR</td><td>CCP19CH1</td><td>USART2_TX1</td><td>USART3_RX</td><td>SPI3_SDO/I2S3_SD</td><td>I2C3_SMBALT</td><td></td><td>ECCP5CH1H</td><td></td><td>CFGL1_IN2</td><td>EXIC_DATA3</td><td></td></tr><tr><td>41</td><td></td><td></td><td>PA12</td><td></td><td>CCP4CH2</td><td>ECCP5CH2L</td><td></td><td></td><td></td><td>USART3_TX0</td><td>SPI3_SDI</td><td>I2C3_SDA</td><td></td><td></td><td></td><td>CFGL2_IN2</td><td>EXIC_DATA4</td><td></td></tr><tr><td>42</td><td></td><td></td><td>PA13</td><td></td><td>CCP4CH3</td><td>ECCP5CH2H</td><td></td><td>CCP22CH4</td><td>USART2_RTS</td><td>USART3_TX1</td><td>SPI3_SCK/I2S3_CK</td><td>I2C3_SCL</td><td></td><td></td><td></td><td>CFGL1_IN1</td><td>EXIC_DATA5</td><td></td></tr><tr><td>43</td><td></td><td></td><td>PA14</td><td>RTC_OUT</td><td>CCP4CH4</td><td>T6CK</td><td></td><td></td><td>USART2_CTS</td><td>USART3_CLK</td><td>SPI1_SCK/I2S1_CK</td><td>I2C1_SCL</td><td></td><td>ECCP5CH3L</td><td></td><td>CFGL2_IN1</td><td>EXIC_DATA6</td><td></td></tr><tr><td>44</td><td></td><td></td><td>PE6</td><td></td><td>CCP4CH1</td><td>ECCP5CH3H</td><td></td><td>CCP22CH4</td><td></td><td></td><td>SPI1_SDI</td><td>I2C1_SDA</td><td></td><td></td><td></td><td></td><td>EXIC_DATA7</td><td></td></tr><tr><td>45</td><td></td><td></td><td>PA15</td><td></td><td>T0CK</td><td>ECCP5CH4H</td><td></td><td></td><td>USART1_RX</td><td></td><td>SPI2_SCK/I2S2_CK</td><td>I2C2_SCL</td><td></td><td></td><td></td><td></td><td>EXIC_DATA8</td><td></td></tr><tr><td>46</td><td></td><td></td><td>PE0</td><td></td><td>T4CK</td><td>ECCP5BKIN</td><td></td><td></td><td>USART1_TX0</td><td>USART6_RTS</td><td>SPI2_SDI</td><td>I2C2_SDA</td><td></td><td></td><td>USART1_RX</td><td></td><td>EXIC_DATA9</td><td></td></tr><tr><td>47</td><td>29</td><td></td><td>PE1</td><td></td><td>CCP0CH1</td><td>ECCP9CH3L</td><td></td><td></td><td>USART1_CLK</td><td>USART6_CTS</td><td>SPI2_SDO/I2S2_SD</td><td>I2C1_SCL</td><td></td><td>SPI1_SCK/I2S1_CK</td><td>USART1_TX0</td><td></td><td></td><td></td></tr><tr><td>LQFP100</td><td>LQFP64</td><td>LQFP48</td><td>GPIO</td><td>SYSTEM</td><td>T0/1/2/3/4</td><td>T5/6/9/10</td><td>QE11</td><td>T14/T15/18/19/22/QE10</td><td>USART0/1/2</td><td>USART3/4/5/6/7</td><td>SPI0/1/2/3</td><td>I2C0/1/2/3</td><td>CAN0/CAN1/FLT0/FLT1</td><td>额外提供</td><td>额外提供</td><td>CFGL</td><td>额外提供</td><td>额外提供</td></tr><tr><td>48</td><td>30</td><td>24</td><td>PE2</td><td></td><td>CCP0CH2</td><td>ECCP9CH3H</td><td></td><td></td><td>USART1_TX1</td><td>USART6_RX</td><td>I2S3_MCK</td><td>I2C1_SDA</td><td></td><td></td><td>USART1_RX</td><td></td><td></td><td></td></tr><tr><td></td><td>31</td><td></td><td>VREG</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>49</td><td></td><td></td><td>VSS</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>50</td><td>32</td><td></td><td>VDD</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>51</td><td>33</td><td>25</td><td>PB0</td><td></td><td>CCP1CH1</td><td>ECCP5BKIN</td><td></td><td>CCP22CH4</td><td>USART1_RX</td><td></td><td>SPI1_SS/I2S1_WS</td><td>I2C1_SMBALT</td><td></td><td></td><td>USART1_CLK</td><td></td><td>EXIC_DATA7</td><td></td></tr><tr><td>52</td><td>34</td><td>26</td><td>PB1</td><td>RTC_OUT</td><td>CCP1CH2</td><td>ECCP5CH1L</td><td></td><td>CCP22CH3</td><td>USART1_TX0</td><td></td><td>SPI1_SCK/I2S1_CK</td><td>I2C1_SCL</td><td></td><td></td><td>USART1_CTS</td><td></td><td>EXIC_DATA8</td><td></td></tr><tr><td>53</td><td>35</td><td>27</td><td>PB2</td><td></td><td>CCP1CH3</td><td>ECCP5CH2L</td><td>ECCP9CH2L</td><td>CCP22CH2</td><td>USART1_TX1</td><td>USART3_RX</td><td>SPI1_SDI</td><td>I2C1_SDA</td><td>CAN0RX</td><td></td><td>USART1_RTS</td><td></td><td>EXIC_DATA9</td><td></td></tr><tr><td>54</td><td>36</td><td>28</td><td>PB3</td><td>RTC_OUT/ROM_EN</td><td>CCP1CH4</td><td>ECCP5CH3L</td><td>ECCP9CH3L</td><td>CCP22CH1</td><td>USART1_CLK</td><td>USART3_TX0</td><td>SPI1_SDO/I2S1_SD</td><td>I2C0_SMBALT</td><td>CAN0TX</td><td></td><td></td><td></td><td>EXIC_DATA10</td><td></td></tr><tr><td>55</td><td></td><td></td><td>PB4</td><td></td><td>T1CK</td><td>ECCP9BKIN</td><td></td><td>T14CK</td><td></td><td>USART6_RX</td><td>I2S1_MCK</td><td>I2C0_SCL</td><td>CAN1RX</td><td>SPI0_SDO/I2S0_SD</td><td>USART3_TX0</td><td></td><td>EXIC_DATA15</td><td></td></tr><tr><td>56</td><td></td><td></td><td>PB5</td><td></td><td>T0CK</td><td>T10CK</td><td></td><td>T15CK</td><td>USART1_RTS</td><td>USART6_TX0</td><td>SPI0_SDI</td><td>I2C0_SDA</td><td>CAN1TX</td><td></td><td>USART3_RX</td><td></td><td>EXIC_DATA12</td><td></td></tr><tr><td>57</td><td></td><td></td><td>PF7</td><td></td><td>CCP0CH4</td><td></td><td></td><td></td><td></td><td>USART6_CLK</td><td>SPI0_SCK/I2S0_CK</td><td>I2C0_SCL</td><td></td><td></td><td>USART3_CLK</td><td></td><td>EXIC_DATA0</td><td></td></tr><tr><td>58</td><td></td><td></td><td>PB6</td><td></td><td>CCP0CH1</td><td></td><td>QEA1</td><td></td><td>USART0_RX</td><td></td><td>SPI3_SCK/I2S3_CK</td><td></td><td></td><td></td><td>USART3_CTS</td><td></td><td>EXIC_DATA7</td><td></td></tr><tr><td>59</td><td></td><td></td><td>PB7</td><td></td><td>CCP0CH4</td><td></td><td>QEB1</td><td>CCP18CH1</td><td>USART0_TX0</td><td></td><td>I2S0_MCK</td><td></td><td></td><td></td><td>USART3_RTS</td><td></td><td>EXIC_DATA8</td><td></td></tr><tr><td>60</td><td></td><td></td><td>PB8</td><td></td><td>CCP0CH3</td><td></td><td>INDEX1</td><td>CCP18CH2</td><td>USART0_TX1</td><td></td><td>SPI0_SS/I2S0_WS</td><td></td><td></td><td></td><td></td><td></td><td>EXIC_DATA9</td><td></td></tr><tr><td>61</td><td></td><td></td><td>PB9</td><td>CLKOUT</td><td>CCP0CH2</td><td>ECCP5BKIN</td><td>QE11DIR</td><td>CCP18CH3</td><td>USART0_CLK</td><td></td><td>SPI0_SCK/I2S0_CK</td><td></td><td></td><td>SPI3_SDO/I2S3_SD</td><td>USART0_TX0</td><td></td><td>EXIC_DATA10</td><td></td></tr><tr><td>62</td><td></td><td></td><td>PB10</td><td></td><td>CCP0CH1</td><td></td><td></td><td>CCP18CH4</td><td>USART0_RX</td><td></td><td>SPI3_SDI</td><td></td><td></td><td></td><td></td><td></td><td>EXIC_DATA11</td><td></td></tr><tr><td>63</td><td>37</td><td>29</td><td>PB11</td><td></td><td>CCP3CH1</td><td>ECCP5CH1H</td><td>ECCP9CH1H</td><td>T14CK</td><td>USART0_RTS</td><td></td><td>SPI2_SCK/I2S2_CK</td><td>I2C3_SCL</td><td></td><td>I2S1_MCK</td><td>USART7_TX0</td><td></td><td>EXIC_DATA12</td><td></td></tr><tr><td>64</td><td>38</td><td>30</td><td>PB12</td><td></td><td>CCP3CH2</td><td>ECCP5CH2H</td><td>ECCP9CH2H</td><td>T15CK</td><td>USART0_CTS</td><td>USART3_RTS</td><td>SPI2_SDI</td><td>I2C3_SDA</td><td></td><td>I2C1_SCL</td><td>USART7_RX</td><td></td><td>I2S3_MCK</td><td></td></tr><tr><td>65</td><td>39</td><td>31</td><td>PB13</td><td></td><td>CCP3CH3</td><td>ECCP5CH3H</td><td>ECCP9CH3H</td><td></td><td></td><td>USART3_CTS</td><td>SPI2_SDO/I2S2_SD</td><td></td><td></td><td>I2C1_SDA</td><td>USART7_TX0</td><td></td><td>USART7_CLK</td><td></td></tr><tr><td>66</td><td>40</td><td>32</td><td>PB14</td><td></td><td>CCP3CH4</td><td>ECCP5CH1L</td><td></td><td>QEA0</td><td>USART2_TX0</td><td>USART5_CTS</td><td>SPI3_SDO/I2S3_SD</td><td></td><td>FLT1I</td><td>ECCP5CH4H</td><td>I2C2_SDA</td><td></td><td></td><td></td></tr><tr><td>67</td><td>41</td><td>33</td><td>PB15</td><td></td><td>T4CK</td><td>ECCP5CH1H</td><td></td><td>QEB0</td><td>USART2_RX</td><td>USART4_CLK</td><td>SPI3_SDI</td><td>I2C2_SDA</td><td>FLT10</td><td>ECCP5CH1H</td><td>I2C2_SCL</td><td>CFGL1_IN3</td><td></td><td></td></tr><tr><td>68</td><td>42</td><td>34</td><td>PF0</td><td></td><td>CCP1CH1</td><td>ECCP5CH2L</td><td></td><td></td><td>USART2_CLK</td><td>USART4_TX0</td><td>SPI3_SCK/I2S3_CK</td><td>I2C2_SCL</td><td></td><td>ECCP5CH2H</td><td>I2C2_SMBALT</td><td>CFGL2_IN3</td><td></td><td></td></tr><tr><td>69</td><td>43</td><td></td><td>PF1</td><td></td><td>CCP1CH2</td><td>ECCP5CH2H</td><td></td><td></td><td>USART2_TX1</td><td>USART4_RTS</td><td>SPI3_SS/I2S3_WS</td><td></td><td></td><td>ECCP5CH3H</td><td>USART4_RX</td><td></td><td></td><td></td></tr><tr><td>70</td><td>44</td><td></td><td>PF2</td><td></td><td>CCP1CH3</td><td>ECCP5CH3L</td><td></td><td></td><td></td><td>USART4_CTS</td><td>I2S3_MCK</td><td></td><td></td><td>ECCP5CH4H</td><td></td><td></td><td></td><td></td></tr><tr><td>71</td><td>45</td><td></td><td>PF3</td><td></td><td>CCP1CH4</td><td>ECCP5CH3H</td><td></td><td></td><td>USART2_RTS</td><td>USART4_TX1</td><td></td><td></td><td></td><td>ECCP5BKIN</td><td>USART4_RTS</td><td></td><td></td><td></td></tr><tr><td>72</td><td>46</td><td></td><td>PF4</td><td></td><td>CCP0CH4</td><td>ECCP5CH4L</td><td></td><td></td><td>USART2_CTS</td><td>USART4_CLK</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>73</td><td>47</td><td>35</td><td>VREG</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>74</td><td></td><td></td><td>VSS</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>75</td><td>48</td><td>36</td><td>VDD</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>76</td><td>49</td><td></td><td>PG0</td><td></td><td></td><td></td><td></td><td></td><td>USART0_RX</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>77</td><td>50</td><td></td><td>PG1</td><td></td><td>CCP2CH1</td><td>ECCP9CH1L</td><td></td><td></td><td>USART0_TX0</td><td>USART5_RTS</td><td>SPI2_SS/I2S2_WS</td><td></td><td></td><td></td><td>SPI3_SS/I2S3_WS</td><td></td><td></td><td></td></tr><tr><td>78</td><td>51</td><td></td><td>PG2</td><td></td><td>CCP2CH2</td><td>ECCP9CH1H</td><td></td><td></td><td>USART0_CLK</td><td>USART5_TX1</td><td>SPI3_SCK/I2S3_CK</td><td></td><td></td><td></td><td>USART0_TX0</td><td></td><td></td><td></td></tr><tr><td>79</td><td>52</td><td>37</td><td>PG3</td><td></td><td>CCP2CH3</td><td>ECCP9CH2L</td><td></td><td></td><td>USART0_TX1</td><td>USART5_RX</td><td>SPI3_SDI</td><td></td><td></td><td></td><td>USART0_RX</td><td></td><td></td><td></td></tr><tr><td>80</td><td>53</td><td>38</td><td>PG4</td><td></td><td>CCP2CH4</td><td>ECCP9CH2H</td><td></td><td></td><td></td><td>USART5_CLK</td><td>SPI3_SDO/I2S3_SD</td><td></td><td></td><td></td><td>USART6_TX0</td><td></td><td></td><td></td></tr><tr><td>81</td><td></td><td></td><td>PG5</td><td></td><td>T2CK</td><td>T9CK</td><td></td><td></td><td>USART0_RTS</td><td>USART5_TX0</td><td></td><td></td><td></td><td></td><td></td><td></td><td>EXIC_DATA14</td><td></td></tr><tr><td>82</td><td></td><td></td><td>PC0</td><td></td><td>CCP2CH1</td><td>ECCP5CH3L</td><td></td><td>T14CK</td><td>USART2_RX</td><td></td><td>I2S0_MCK</td><td></td><td></td><td></td><td></td><td></td><td>EXIC_DATA13</td><td></td></tr><tr><td>83</td><td></td><td></td><td>PC1</td><td></td><td>CCP2CH2</td><td>ECCP5CH3H</td><td></td><td>T15CK</td><td>USART2_TX0</td><td>USART5_RX</td><td>SPI0_SDI</td><td>I2C2_SDA</td><td></td><td>T3CK</td><td>USART6_RX</td><td></td><td>EXIC_DATA14</td><td></td></tr><tr><td>84</td><td></td><td></td><td>PC2</td><td></td><td>CCP2CH3</td><td>ECCP5CH4L</td><td></td><td></td><td>USART2_TX1</td><td>USART4_TX0</td><td>SPI0_SDO/I2S0_SD</td><td>I2C2_SCL</td><td></td><td></td><td>USART2_CTS</td><td></td><td>EXIC_DATA11</td><td></td></tr><tr><td>85</td><td></td><td></td><td>PC3</td><td></td><td>CCP2CH4</td><td>ECCP5CH4H</td><td></td><td>QEA0</td><td>USART2_CLK</td><td>USART4_RX</td><td>SPI0_SS/I2S0_WS</td><td>I2C2_SMBALT</td><td>CAN1RX</td><td>SPI2_SDO/I2S2_SD</td><td>USART2_RTS</td><td></td><td>EXIC_RDX</td><td></td></tr><tr><td>86</td><td></td><td></td><td>PC4</td><td></td><td>T2CK</td><td>T5CK</td><td></td><td>QEB0</td><td></td><td></td><td>SPI0_SCK/I2S0_CK</td><td>I2C1_SDA</td><td>CAN1TX</td><td>SPI2_SDI</td><td>USART2_TX0</td><td></td><td>EXIC_WRX</td><td></td></tr><tr><td>87</td><td>54</td><td>39</td><td>PC5</td><td>DPI_DAT</td><td>CCP4CH1</td><td>ECCP5CH1L</td><td></td><td>INDEX0</td><td>USART2_RTS</td><td>USART5_RX</td><td>SPI2_SS/I2S2_WS</td><td>I2C1_SCL</td><td>CAN0RX</td><td>T3CK</td><td>USART2_RX</td><td></td><td>EXIC_RDX</td><td></td></tr><tr><td>88</td><td>55</td><td>40</td><td>PC6</td><td>DPI_CLK</td><td>CCP4CH2</td><td>ECCP5CH1H</td><td></td><td>QE10DIR</td><td>USART2_CTS</td><td>USART5_TX0</td><td>SPI2_SCK/I2S2_CK</td><td>I2C1_SMBALT</td><td>CAN0TX</td><td>SPI3_SCK/I2S3_CK</td><td>USART2_CLK</td><td></td><td>EXIC_CS</td><td></td></tr><tr><td>89</td><td></td><td>41</td><td>PC7</td><td></td><td>CCP4CH3</td><td>ECCP5CH2L</td><td></td><td></td><td>USART1_RX</td><td></td><td>SPI2_SCK/I2S2_CK</td><td></td><td></td><td>I2S2_MCK</td><td>SPI3_SCK/I2S3_CK</td><td></td><td>EXIC_DATA16</td><td></td></tr><tr><td>90</td><td>56</td><td>42</td><td>PC8</td><td></td><td>CCP4CH4</td><td>ECCP5CH2H</td><td></td><td></td><td>USART1_TX0</td><td></td><td>SPI2_SDI</td><td></td><td></td><td>CCP3CH1</td><td>SPI3_SDI</td><td></td><td>EXIC_DATA17</td><td></td></tr><tr><td>91</td><td></td><td>43</td><td>PG6</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>SPI2_SDO/I2S2_SD</td><td>I2C0_SMBALT</td><td></td><td>CCP3CH2</td><td>SPI3_SDO/I2S3_SD</td><td></td><td></td><td></td></tr><tr><td>92</td><td>57</td><td>44</td><td>PG7</td><td></td><td>CCP1CH2</td><td></td><td></td><td>CCP18CH1</td><td></td><td>USART4_TX0</td><td></td><td>I2C0_SCL</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>93</td><td>58</td><td>45</td><td>PC9</td><td></td><td>CCP1CH1</td><td>ECCP9CH3L</td><td>QEB1</td><td>CCP18CH2</td><td>USART1_TX1</td><td>USART4_RX</td><td>SPI2_SCK/I2S2_CK</td><td>I2C2_SCL</td><td></td><td>I2C0_SDA</td><td></td><td></td><td>EXIC_DATA13</td><td></td></tr><tr><td>94</td><td>59</td><td>46</td><td>PC10</td><td></td><td>CCP1CH2</td><td>ECCP9CH3H</td><td>QE11DIR</td><td></td><td>USART1_CLK</td><td></td><td>SPI2_SDI</td><td>I2C2_SDA</td><td>FLTI1</td><td></td><td>USART1_RX</td><td></td><td>EXIC_DATA14</td><td></td></tr><tr><td>95</td><td>60</td><td></td><td>PC11</td><td></td><td>CCP1CH3</td><td>ECCP9CH4L</td><td>INDEX1</td><td>CCP18CH3</td><td>USART1_TX0</td><td></td><td>SPI2_SDO/I2S2_SD</td><td>I2C0_SCL</td><td></td><td>CCP4CH1</td><td></td><td></td><td>EXIC_DATA15</td><td></td></tr><tr><td>96</td><td>61</td><td></td><td>PC12</td><td></td><td>CCP1CH4</td><td>ECCP9CH4H</td><td></td><td>CCP18CH4</td><td>USART1_RTS</td><td></td><td>SPI1_SS/I2S1_WS</td><td>I2C0_SDA</td><td></td><td>CCP2CH1</td><td></td><td>CFGL1_OUT</td><td>EXIC_DATA16</td><td></td></tr><tr><td>97</td><td>62</td><td></td><td>PC13</td><td></td><td>T1CK</td><td>T10CK</td><td></td><td>T18CK</td><td>USART1_CTS</td><td></td><td>I2S1_MCK</td><td></td><td>FLT10</td><td></td><td></td><td>CFGL2_OUT</td><td></td><td></td></tr><tr><td>98</td><td></td><td></td><td>PC14</td><td></td><td>CCP3CH1</td><td>ECCP9BKIN</td><td></td><td></td><td></td><td>USART5_CTS</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>99</td><td>63</td><td>47</td><td>VSS</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>100</td><td>64</td><td>48</td><td>VDD</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>1</td><td></td><td></td><td>PD1</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>SPI1_SCK/I2S1_CK</td><td>I2C0_SCL</td><td></td><td></td><td></td><td></td><td>EXIC_D/C</td><td></td></tr><tr><td>2</td><td></td><td></td><td>PD2</td><td>RTC_OUT</td><td>T4CK</td><td>ECCP5BKIN</td><td></td><td>T22CK</td><td>USART1_CTS</td><td></td><td></td><td>I2C3_SDA</td><td></td><td></td><td></td><td></td><td>EXIC_DATA17</td><td></td></tr><tr><td>3</td><td></td><td></td><td>PD3</td><td></td><td>T1CK</td><td>T6CK</td><td></td><td>T19CK</td><td></td><td>USART4_TX0</td><td></td><td>I2C3_SCL</td><td></td><td></td><td></td><td></td><td>EXIC_DATA16</td><td></td></tr><tr><td>4</td><td></td><td></td><td>PD4</td><td></td><td>T2CK</td><td>T9CK</td><td></td><td>T18CK</td><td></td><td>USART4_RX</td><td>SPI3_SS/I2S3_WS</td><td>I2C3_SMBALT</td><td></td><td>CCP2CH1</td><td></td><td></td><td>EXIC_D/C</td><td></td></tr><tr><td>LQFP100</td><td>LQFP64</td><td>LQFP48</td><td>GPIO</td><td>SYSTEM</td><td>T0/1/2/3/4</td><td>T5/6/9/10</td><td>QEII</td><td>T14/T15/18/19/22/QEI0</td><td>USART0/1/2</td><td>USART3/4/5/6/7</td><td>SPI0/1/2/3</td><td>I2C0/1/2/3</td><td>CAN0/CAN1/FLT0/FLT1</td><td>额外提供</td><td>额外提供</td><td>CFGL</td><td>额外提供</td><td>额外提供</td></tr><tr><td>5</td><td></td><td></td><td>PD5</td><td></td><td></td><td></td><td></td><td></td><td></td><td>USART7_RTS</td><td></td><td></td><td></td><td>CCP2CH2</td><td></td><td></td><td>EXIC_D/C</td><td></td></tr><tr><td>6</td><td>1</td><td>1</td><td>VBAT</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>7</td><td>2</td><td></td><td>PD6</td><td></td><td>CCP3CH2</td><td></td><td></td><td></td><td></td><td>USART7_CTS</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>8</td><td>3</td><td>2</td><td>PH8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>9</td><td>4</td><td>3</td><td>PH9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td></td><td></td><td>VSS</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>11</td><td></td><td></td><td>VDD</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>12</td><td>5</td><td>4</td><td>PD9</td><td></td><td>CCP2CH3</td><td>ECCP9CH1L</td><td></td><td></td><td>USART0_TX1</td><td>USART7_CLK</td><td>SPI0_SCK/I2S0_CK</td><td>I2C3_SCL</td><td></td><td></td><td></td><td></td><td>EXIC_WRX</td><td></td></tr><tr><td>13</td><td>6</td><td>5</td><td>PD10</td><td></td><td>CCP2CH4</td><td>ECCP9CH1H</td><td></td><td></td><td>USART0_CLK</td><td>USART7_TX1</td><td></td><td></td><td></td><td></td><td></td><td></td><td>EXIC_CS</td><td></td></tr><tr><td>14</td><td>7</td><td>6</td><td>PH7/nRST</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>CFGL1_IN3</td><td></td><td></td></tr><tr><td>15</td><td>8</td><td>7</td><td>PH5</td><td></td><td>T0CK</td><td></td><td></td><td>T22CK</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>16</td><td>9</td><td>8</td><td>PH6</td><td></td><td></td><td></td><td></td><td>T19CK</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>17</td><td>10</td><td>9</td><td>PD13</td><td></td><td>CCP1CH3</td><td>ECCP9BKIN</td><td></td><td></td><td>USART0_CTS</td><td></td><td>SPI3_SS/I2S3_WS</td><td></td><td>CAN1RX</td><td>SPI1_SDI</td><td></td><td></td><td></td><td></td></tr><tr><td>18</td><td>11</td><td>10</td><td>PD14</td><td></td><td>CCP1CH4</td><td>ECCP5CH4L</td><td></td><td>CCP18CH3</td><td></td><td></td><td>SPI3_SCK/I2S3_CK</td><td></td><td>CAN1TX</td><td>SPI1_SDO/I2S1_SD</td><td></td><td></td><td></td><td></td></tr><tr><td>19</td><td>12</td><td>11</td><td>VSS/VSSA</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>20</td><td></td><td></td><td>VREF-</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>21</td><td></td><td></td><td>VREF+</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>22</td><td>13</td><td>12</td><td>VDD/VDDA</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>23</td><td>14</td><td></td><td>PH14</td><td></td><td>T2CK</td><td>T5CK</td><td></td><td>T9CK</td><td>USART2_CTS</td><td></td><td></td><td></td><td></td><td></td><td>USART0_TX0</td><td></td><td></td><td></td></tr><tr><td>24</td><td>15</td><td></td><td>PH12</td><td></td><td>CCP2CH2</td><td>ECCP5CH3L</td><td></td><td>CCP18CH4</td><td>USART2_RTS</td><td></td><td></td><td>I2C1_SCL</td><td></td><td></td><td>USART0_RX</td><td></td><td></td><td></td></tr></table>

# 5.3 引脚重映射说明（系统以及模拟功能）


表5-2 系统以及模拟引脚说明



[1] ADC 参考引脚复用信息 


<table><tr><td colspan="11">KF32F330</td></tr><tr><td>LQFP100</td><td>LQFP64</td><td>LQFP48</td><td>GPIO</td><td>电源</td><td>振荡器</td><td>SYSTEM</td><td>USB</td><td>ADC[1]</td><td>DAC</td><td>CMP</td></tr><tr><td>25</td><td>16</td><td></td><td>PH13</td><td></td><td></td><td></td><td></td><td>ADC_CH34</td><td></td><td></td></tr><tr><td>26</td><td>17</td><td></td><td>PH15</td><td></td><td></td><td></td><td></td><td>ADC_CH35</td><td></td><td></td></tr><tr><td>27</td><td>18</td><td>13</td><td>VSS</td><td>VSS</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>28</td><td>19</td><td>14</td><td>VDD</td><td>VDD</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>29</td><td>20</td><td>15</td><td>PE15</td><td></td><td></td><td></td><td></td><td>ADC_CH36</td><td>DAC0_OUT0</td><td></td></tr><tr><td>30</td><td>21</td><td>16</td><td>PA0</td><td></td><td></td><td></td><td></td><td>ADC_CH37</td><td>DAC1_OUT</td><td>C0IN+/C1IN+</td></tr><tr><td>31</td><td>22</td><td>17</td><td>PA1</td><td></td><td></td><td>RTC_TS/ROM_TX</td><td></td><td>ADC_CH38</td><td></td><td>C0IN-/C1IN-</td></tr><tr><td>32</td><td>23</td><td>18</td><td>PA2</td><td></td><td></td><td></td><td></td><td>ADC_CH39</td><td></td><td></td></tr><tr><td>33</td><td>24</td><td>19</td><td>PA3</td><td></td><td></td><td></td><td></td><td>ADC_CH40</td><td></td><td></td></tr><tr><td>34</td><td>25</td><td>20</td><td>PA5</td><td></td><td></td><td></td><td>D-</td><td>ADC_CH41</td><td>DAC1_REF</td><td></td></tr><tr><td>35</td><td>26</td><td>21</td><td>PA6</td><td></td><td></td><td></td><td>D+</td><td>ADC_CH42</td><td>DAC0_REF</td><td></td></tr><tr><td>36</td><td>27</td><td>22</td><td>PA7</td><td></td><td></td><td></td><td></td><td>ADC_CH43</td><td></td><td></td></tr><tr><td>37</td><td>28</td><td>23</td><td>PA8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>38</td><td></td><td></td><td>PA9</td><td></td><td></td><td></td><td></td><td></td><td></td><td>C0IN+/C1IN+</td></tr><tr><td>39</td><td></td><td></td><td>PA10</td><td></td><td></td><td></td><td></td><td></td><td></td><td>C0IN-/C1IN-</td></tr><tr><td>40</td><td></td><td></td><td>PA11</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>41</td><td></td><td></td><td>PA12</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>42</td><td></td><td></td><td>PA13</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>43</td><td></td><td></td><td>PA14</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>44</td><td></td><td></td><td>PE6</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>45</td><td></td><td></td><td>PA15</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>46</td><td></td><td></td><td>PE0</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>47</td><td>29</td><td></td><td>PE1</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>48</td><td>30</td><td>24</td><td>PE2</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>31</td><td></td><td>VREG</td><td>VREG</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>49</td><td></td><td></td><td>VSS</td><td>VSS</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>50</td><td>32</td><td></td><td>VDD</td><td>VDD</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>51</td><td>33</td><td>25</td><td>PB0</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>LQFP100</td><td>LQFP64</td><td>LQFP48</td><td>GPIO</td><td>电源</td><td>振荡器</td><td>SYSTEM</td><td>USB</td><td><eq>ADC^{[1]}</eq></td><td>DAC</td><td>CMP</td></tr><tr><td>52</td><td>34</td><td>26</td><td>PB1</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>53</td><td>35</td><td>27</td><td>PB2</td><td></td><td></td><td></td><td></td><td></td><td></td><td>C0IN+/C1IN+</td></tr><tr><td>54</td><td>36</td><td>28</td><td>PB3</td><td></td><td></td><td></td><td></td><td></td><td></td><td>C0IN-/C1IN-</td></tr><tr><td>55</td><td></td><td></td><td>PB4</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>56</td><td></td><td></td><td>PB5</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>57</td><td></td><td></td><td>PF7</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>58</td><td></td><td></td><td>PB6</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>59</td><td></td><td></td><td>PB7</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>60</td><td></td><td></td><td>PB8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>61</td><td></td><td></td><td>PB9</td><td></td><td></td><td></td><td></td><td></td><td></td><td>C0IN+</td></tr><tr><td>62</td><td></td><td></td><td>PB10</td><td></td><td></td><td></td><td></td><td></td><td></td><td>C0IN-</td></tr><tr><td>63</td><td>37</td><td>29</td><td>PB11</td><td></td><td></td><td></td><td></td><td></td><td></td><td>C1IN+</td></tr><tr><td>64</td><td>38</td><td>30</td><td>PB12</td><td></td><td></td><td></td><td></td><td></td><td></td><td>C1IN-</td></tr><tr><td>65</td><td>39</td><td>31</td><td>PB13</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>66</td><td>40</td><td>32</td><td>PB14</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>67</td><td>41</td><td>33</td><td>PB15</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>68</td><td>42</td><td>34</td><td>PF0</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>69</td><td>43</td><td></td><td>PF1</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>70</td><td>44</td><td></td><td>PF2</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>71</td><td>45</td><td></td><td>PF3</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>72</td><td>46</td><td></td><td>PF4</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>73</td><td>47</td><td>35</td><td>VREG</td><td>VREG</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>74</td><td></td><td></td><td>VSS</td><td>VSS</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>75</td><td>48</td><td>36</td><td>VDD</td><td>VDD</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>76</td><td>49</td><td></td><td>PG0</td><td></td><td></td><td></td><td></td><td>ADC_CH18</td><td></td><td></td></tr><tr><td>77</td><td>50</td><td></td><td>PG1</td><td></td><td></td><td></td><td></td><td>ADC_CH19</td><td></td><td></td></tr><tr><td>78</td><td>51</td><td></td><td>PG2</td><td></td><td></td><td></td><td></td><td>ADC_CH20</td><td></td><td></td></tr><tr><td>79</td><td>52</td><td>37</td><td>PG3</td><td></td><td></td><td></td><td></td><td>ADC_CH21</td><td></td><td></td></tr><tr><td>80</td><td>53</td><td>38</td><td>PG4</td><td></td><td></td><td></td><td></td><td>ADC_CH22</td><td></td><td></td></tr><tr><td>81</td><td></td><td></td><td>PG5</td><td></td><td></td><td></td><td></td><td>ADC_CH23</td><td></td><td></td></tr><tr><td>82</td><td></td><td></td><td>PC0</td><td></td><td></td><td></td><td></td><td>ADC_CH0</td><td></td><td></td></tr><tr><td>83</td><td></td><td></td><td>PC1</td><td></td><td></td><td>TAMP2</td><td></td><td>ADC_CH1</td><td></td><td></td></tr><tr><td>84</td><td></td><td></td><td>PC2</td><td></td><td></td><td></td><td></td><td>ADC_CH2</td><td></td><td></td></tr><tr><td>85</td><td></td><td></td><td>PC3</td><td></td><td></td><td></td><td></td><td>ADC_CH3</td><td></td><td></td></tr><tr><td>86</td><td></td><td></td><td>PC4</td><td></td><td></td><td></td><td></td><td>ADC_CH4</td><td></td><td></td></tr><tr><td>87</td><td>54</td><td>39</td><td>PC5</td><td></td><td></td><td>DPI_DAT/TAMP1</td><td></td><td>ADC_CH5</td><td></td><td></td></tr><tr><td>88</td><td>55</td><td>40</td><td>PC6</td><td></td><td></td><td>DPI_CLK/WKUP1</td><td></td><td>ADC_CH6</td><td></td><td></td></tr><tr><td>89</td><td></td><td>41</td><td>PC7</td><td></td><td></td><td>WKUP4</td><td></td><td>ADC_CH7</td><td></td><td></td></tr><tr><td>90</td><td>56</td><td>42</td><td>PC8</td><td></td><td></td><td>WKUP5</td><td></td><td>ADC_CH8</td><td></td><td></td></tr><tr><td>91</td><td></td><td>43</td><td>PG6</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>92</td><td>57</td><td>44</td><td>PG7</td><td></td><td></td><td></td><td></td><td></td><td></td><td>C1IN+</td></tr><tr><td>93</td><td>58</td><td>45</td><td>PC9</td><td></td><td></td><td></td><td></td><td>ADC_CH9</td><td></td><td>C1IN-</td></tr><tr><td>94</td><td>59</td><td>46</td><td>PC10</td><td></td><td></td><td></td><td></td><td>ADC_CH10</td><td></td><td></td></tr><tr><td>95</td><td>60</td><td></td><td>PC11</td><td></td><td></td><td></td><td></td><td>ADC_CH11</td><td></td><td>C0IN+</td></tr><tr><td>96</td><td>61</td><td></td><td>PC12</td><td></td><td></td><td></td><td></td><td>ADC_CH12</td><td></td><td>C0IN-</td></tr><tr><td>97</td><td>62</td><td></td><td>PC13</td><td></td><td></td><td></td><td></td><td>ADC_CH13</td><td></td><td></td></tr><tr><td>98</td><td></td><td></td><td>PC14</td><td></td><td></td><td></td><td></td><td>ADC_CH14</td><td></td><td></td></tr><tr><td>99</td><td>63</td><td>47</td><td>VSS</td><td>VSS</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>100</td><td>64</td><td>48</td><td>VDD</td><td>VDD</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>1</td><td></td><td></td><td>PD1</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td></td><td></td><td>PD2</td><td></td><td></td><td></td><td></td><td>ADC_CH15</td><td></td><td></td></tr><tr><td>3</td><td></td><td></td><td>PD3</td><td></td><td></td><td></td><td></td><td>ADC_CH28</td><td></td><td></td></tr><tr><td>4</td><td></td><td></td><td>PD4</td><td></td><td></td><td>WKUP3</td><td></td><td>ADC_CH29</td><td></td><td></td></tr><tr><td>5</td><td></td><td></td><td>PD5</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>6</td><td>1</td><td>1</td><td>VBAT</td><td>VBAT</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>7</td><td>2</td><td></td><td>PD6</td><td></td><td></td><td>TAMP3</td><td></td><td></td><td></td><td></td></tr><tr><td>8</td><td>3</td><td>2</td><td>PH8</td><td></td><td>OSC32_IN</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>9</td><td>4</td><td>3</td><td>PH9</td><td></td><td>OSC32_OUT</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td></td><td></td><td>VSS</td><td>VSS</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>11</td><td></td><td></td><td>VDD</td><td>VDD</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>12</td><td>5</td><td>4</td><td>PD9</td><td></td><td>OSC_IN</td><td></td><td></td><td>ADC_CH26</td><td></td><td></td></tr><tr><td>13</td><td>6</td><td>5</td><td>PD10</td><td></td><td>OSC_OUT</td><td></td><td></td><td>ADC_CH27</td><td></td><td></td></tr><tr><td>14</td><td>7</td><td>6</td><td>PH7/nRST</td><td></td><td></td><td>NRST</td><td></td><td></td><td></td><td></td></tr><tr><td>15</td><td>8</td><td>7</td><td>PH5</td><td></td><td></td><td></td><td></td><td>ADC_CH44</td><td></td><td></td></tr><tr><td>16</td><td>9</td><td>8</td><td>PH6</td><td></td><td></td><td></td><td></td><td>ADC_CH45</td><td></td><td></td></tr><tr><td>17</td><td>10</td><td>9</td><td>PD13</td><td></td><td></td><td></td><td></td><td>ADC_CH30</td><td></td><td></td></tr><tr><td>18</td><td>11</td><td>10</td><td>PD14</td><td></td><td>OSC_IN</td><td></td><td></td><td>ADC_CH31</td><td></td><td></td></tr><tr><td>19</td><td>12</td><td>11</td><td>VSS/VSSA</td><td>VSS/VSSA</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>20</td><td></td><td></td><td>VREF-</td><td>VREF-</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>21</td><td></td><td></td><td>VREF+</td><td>VREF+</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>22</td><td>13</td><td>12</td><td>VDD/VDDA</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>23</td><td>14</td><td></td><td>PH14</td><td></td><td></td><td>WKUP2</td><td></td><td>ADC_CH32</td><td></td><td></td></tr><tr><td>24</td><td>15</td><td></td><td>PH12</td><td></td><td></td><td></td><td></td><td>ADC_CH33</td><td></td><td></td></tr></table>


100脚芯片的 VREF+单独封装，VREF-单独封装； 



64脚芯片的 VREF+与 PC8引脚复用，VREF-无复用，在内部直接与地（VSSA）引脚相连； 



48脚芯片的 VREF+与 PC8引脚复用，VREF-无复用，在内部直接与地（VSSA）引脚相连。 


# 5.4 引脚重映射表-外部唤醒引脚、侵入检测和时间戳引脚映射


表5-3模拟功能引脚映射


<table><tr><td>GPIO</td><td>唤醒引脚</td><td>侵入检测引脚</td><td>时间戳</td></tr><tr><td>PA1</td><td></td><td></td><td>RTC_TS</td></tr><tr><td>PC1</td><td></td><td>TAMP2</td><td></td></tr><tr><td>PC5</td><td></td><td>TAMP1</td><td></td></tr><tr><td>PC6</td><td>WKUP1</td><td></td><td></td></tr><tr><td>PC7</td><td>WKUP4</td><td></td><td></td></tr><tr><td>PC8</td><td>WKUP5</td><td></td><td></td></tr><tr><td>PD4</td><td>WKUP3</td><td></td><td></td></tr><tr><td>PD6</td><td></td><td>TAMP3</td><td></td></tr><tr><td>PH14</td><td>WKUP2</td><td></td><td></td></tr></table>

# 5.5 CCP 引脚资源

因有些型号的小管脚封装可能会缺一些功能脚，现将所有 CCP 资源列在下表中： 


表 5-4 CCPx 通道


<table><tr><td></td><td>LQFP100</td><td>LQFP64</td><td>LQFP48</td></tr><tr><td>CCP0CH1</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP0CH2</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP0CH3</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP0CH4</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP1CH1</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP1CH2</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP1CH3</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP1CH4</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP2CH1</td><td>Y</td><td>Y</td><td>N</td></tr><tr><td>CCP2CH2</td><td>Y</td><td>Y</td><td>N</td></tr><tr><td>CCP2CH3</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP2CH4</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP3CH1</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP3CH2</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP3CH3</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP3CH4</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP4CH1</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP4CH2</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP4CH3</td><td>Y</td><td>N</td><td>Y</td></tr><tr><td>CCP4CH4</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP18CH1</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP18CH2</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP18CH3</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP18CH4</td><td>Y</td><td>Y</td><td>N</td></tr><tr><td>CCP19CH1</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP19CH2</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP19CH3</td><td>Y</td><td>N</td><td>N</td></tr><tr><td>CCP19CH4</td><td>Y</td><td>N</td><td>N</td></tr><tr><td>CCP22CH1</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP22CH2</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP22CH3</td><td>Y</td><td>Y</td><td>Y</td></tr><tr><td>CCP22CH4</td><td>Y</td><td>Y</td><td>Y</td></tr></table>

# 6 资源介绍

# 6.1 DMA

直接存储器访问模块（DMA）用于外设和存储器间直接数据传输，可用于RAM和 RAM 之间、RAM 和外设、外设和外设之间的数据传输。DMA 模块将从源地址上读取的数据写 入到目标地址空间中，从而完成数据传输，而无需CPU 的干预。 

每个DMA模块有如下特性： 

7个独立可配置的通道 

支持存储器和存储器、存储器和外设、外设和外设之间的数据传输 

支持 8bit/16bit/32bit 数据位宽传输 

. 支持自动递增的源和目标地址，支持固定的源和目标地址 

支持循环模式 

支持传输数据数量设置，最大为 65535 

支持4级通道优先级设置 

支持外设触发，支持软件触发 

. 追踪当前的源指针和目标指针 

追踪当前未传输的数据量 

# 6.2 节拍定时器（SYSTICK）

KungFu32 内核提供了一个 24 位的系统节拍定时器（System Tick Timer）。系统节拍定 时器可为系统提供可编程时长的周期性中断，即使是在休眠下也能工作（注：深度休眠下 不能工作）。系统节拍定时器有专用的中断向量。 

系统节拍定时器结构如下图所示。系统节拍定时器为递减计数模式，当系统节拍定时 器的值为0时会产生一个中断，同时系统节拍定时器重载值寄存器（ST_RELOAD）的值会 装入系统节拍定时器中。对系统节拍定时器重载值寄存器（ST_RELOAD）进行设置可以修 改产生中断的间隔时长。在使用节拍定时器时，使能前要先向 ST_CV系统节拍定时器当前 值寄存器写任意值，使 COUNTZERO 位及 ST_CV 清零，保证 ST_RELOAD 的值加载到 ST_CV 中。 

向ST_RELOAD写 0会使计数器在下个计数周期禁止。 

通过使能INT_EIE0 寄存器的SYSTICKIE 位可以使能系统节拍定时器中断，当定时器 由 1 变 0 时可以将 INT_EIF0 中的 SYSTICKIF 标志位置 1。 

# 6.3 基本定时/计数器(T14/T15)

Tx(x=14,15)是一个 16 位的定时/计数器，它有定时和计数两种工作模式，支持 3 种计 数方式：向上计数、向下计数和向上向下计数方式。根据不同的模式，计数会产生溢出， 将Tx 溢出中断标志TXIF位置 1。 

基本定时器主要功能包括： 

16位自动重载计数器 

16位可编程预分频器，用于对输入的时钟按系数为1~65536之间任意数值分频 

在更新事件以及触发事件时产生 DMA 请求 

基本定时器可以用于触发AD 和DA模块 

# 6.4 通用定时/计数器(T0/1/2/3/4/18/19/22)

Tx(x=0,1,2,3,4,18,19,22)是 16 位的定时/计数器，通用定时/计数器有定时和计数 2 种工 作模式，支持3种计数方式：向上计数、向下计数和向上向下计数方式。根据不同的模式， 计数会产生溢出，将Tx中断标志位TXIF置 1。Tx属于外部单元，因此在使用 Tx 中断时， 需使能对应的外设中断。 

通用定时/计数器主要功能包括： 

16位位自动重载计数器 

. 16位位可编程预分频器，用于对输入的时钟按系数为 1~65536/1~4294967296之间 任意数值分频 

通用定时器可以用于触发AD 和DA模块 

更新事件、触发事件（触发模式、门控模式、复位模式）、捕捉事件、比较事件 可以产生DMA请求 

# 6.5 高级定时/计数器（T5/T6/T9/T10）

ECCPx 模块各包含两个计数器 Tx/Tz（x=5,9;z=6,10; Tx 和 Tz 原理相同），他们是 16 位的定时器，有3种计数方式：向上计数、向下计数和向上向下计数方式，可精确配置1-65535 自由分频进行计数。支持触发其它定时器、AD 及DMA等外设。 

高级定时/计数器主要功能包括： 

16位位自动重载计数器 

⚫ 16位的可编程预分频器（分频器 1）和4位的可编程后分频器（分频器2） 

高级定时器可用于触发AD、DA等模块 

支持周期更新和立即更新 

支持比较器清零定时器功能 

支持主从模式（触发、门控、复位） 

可以用来产生DMA请求（更新、TRGI触发、捕捉/比较、关断事件） 

# 6.6 通用捕捉/比较/PWM 模块（CCP0/1/2/3/4/18/19/22）

CCP 模块是通用型捕捉/比较/脉宽调制模块，在通用CCP 模块中，采用通用定时/计数 器做为该CCP 的计数时基，可以用来实现捕捉功能、比较功能和PWM功能。 

在 CCP0/1/2/3/4/18/19/22 模 块 中 比 较 寄 存 器 为 16 位 的 寄 存 器 CCPx_Ry （x=0,1,2,3,4,18,19,22；y=1,2,3,4），该寄存器也用于 PWM 模式下的占空比设置。 

在 CCP0/1/2/3/4/18/19/22 模 块 中 捕 捉 寄 存 器 为 16 位 的 寄 存 器 CCPx_Cy （x=0,1,2,3,4,18,19,22；y=1,2,3,4），该寄存器为只读。 

通用CCP 主要功能包括： 

16位的捕捉功能 

16位位的比较功能 

16 位位的PWM功能 

支持PWM测量功能 

4个独立的通道 

PWM支持边沿对其和中心对齐 

支持单脉冲输出 

⚫ 更新事件、触发事件（触发模式、门控模式、复位模式）、捕捉事件、比较事件 可以产生DMA请求 

# 6.7 增强型捕捉/比较/PWM 模块(ECCP5/9)

ECCPx（x=5,9）模块是增强型捕捉/比较/脉宽调制模块，可以提供外部信号捕捉、内 部比较输出以及PWM输出三种功能。在 ECCP 模块中，采用16位的定时器/计数器(ECCP5 为 T5 和 T6，ECCP9 为 T9 和 T10)做为该 ECCP 的计数时基，在 ECCP5 模块中捕捉寄存器 为 16 位的寄存器 ECCPx_Cy（x=5,9;y=1,2,3,4），比较寄存器为 16 位的寄存器 ECCPx_Ry $\scriptstyle ( \mathbf { { x } } = 5 , 9 ; \mathbf { y } = 1 , 2 , 3 , 4 )$ ），该寄存器也用于PWM模式下的占空比设置。支持部分寄存器的数据 更新功能。支持各个通道独立的关断操作。 

如下事件发生时产生 DMA： 

输入捕获 

输出比较 

关断事件 

更新事件 

# 6.8 正交编码脉冲电路（QEI0/1）

单片机内部集成有正交编码脉冲电路。正交编码脉冲电路可用于获得旋转机械的位置 和速率等信息。 

正交编码脉冲是两个频率变化且正交的脉冲。当它由电机轴上的光电编码器产生时（光 电编码器具有3 路输出：A 相、B 相和索引脉冲），电机的旋转方向可以通过检测两个脉 冲序列（QEA和QEB）中先到达的列来确定，角位置和转速可由脉冲数和脉冲频率（即齿 脉冲和圈脉冲）来决定。电机的绝对位置以索引脉冲为基准确定。 

QEI 由用于解析 A 相（QEA）和 B 相（QEB）信号的解码器逻辑以及用于累计计数 值的递增/递减计数器组成。输入端上的数字噪声滤波器对输入信号进行滤波。 

QEI0 的计数时基为定时器T7，QEI1的计数时基为定时器T8。 

QEI 的工作特性包括： 

3路输入通道，分别为两相信号和索引脉冲输入 

输入端上的可编程数字噪声滤波器 

16位递增/递减位置计数器 

计数方向状态 

x2和x4计数分辨率 

两种位置计数器复位模式： 

➢ 使用周期复位位置计数器 

➢ 使用索引脉冲复位位置计数器 

通用16位定时器/计数器模式 

正交编码器接口中断 

# 6.9 模数转换模块（A/D）

# ADC 特性：

12位分辨率 

16常规扫描通道+4个高优先级通道 

支持常规模式和高优先级模式 

支持单次转换模式和连续转换模式 

最高20个通道连续转换模式 

数据左对齐或右对齐 

ADC 支持 DMA 触发 

支持模拟看门狗事件 

支持定时器触发 ADC 

双AD模式 

ADC转换时间：14个周期 

AD 电压：2.4V 到 3.6V 或者 VREF+ 

ADC 输入范围 VREF- 到 VREF+ 

注：100脚芯片的VREF+单独封装，VREF-单独封装； 

64脚芯片的VREF+与PC8 引脚复用，VREF-无复用，在内部直接与地（VSSA）引脚 相连； 

48脚芯片的VREF+与PC8 引脚复用，VREF-无复用，在内部直接与地（VSSA）引脚 相连。 

# 6.10 数模转换器模块（D/A）

# DA 特性：

2 个 12 位 DAC 

12 位 DAC 支持 DMA 功能 

12位DAC 支持外部触发转换 

12位DAC 支持噪声波发生器 

12位DAC 支持三角波发生器 

独立的外部参考电压源 

# 6.11 拟比较器模块（CMP）

单片机内置2个模拟比较器模块，其主要特点如下： 

正负端多输入端口可选 

电阻分压模块提供可选内部参考电压 

输出极性可选 

中断边沿可选 

数字滤波功能 

比较器输出可作为定时器捕捉输入、PWM关断源或用于清零定时器 

可配置为BEMF（反向电动势）模式和HALL（霍尔检测）模式 

# 6.12 通用全/半双工收发器（USART）

USART 是 Universal Synchronous /Asynchronous Receive & Transmit 的缩写，它的中文 名称是通用同步/异步收发器，又称通用全双工/半双工收发器。这是一个串口通信的 I/O 外 设，也可作为串行通信接口。它可被配置为与个人计算机等外设通信的全双工异步系统。 也可以被配置为与外设或其它单片机通信的半双工同步系统，与之通信的单片机通常不具 有产生波特率的内部时钟，它需要主控同步器件提供外部时钟信号。 

# 6.13 串行外设接口（SPI）

SPI 模块可配置为支持 SPI 协议或者 I2S 协议。SPI 模块默认工作在 SPI 方式，可通过 软件将其切换到I2S 模式。在 I2S模式下，原则上数据传输为全双工模式，主机和从机同时 收发数据，但实际情况下通常只有一个方向上的数据是有意义的。 

# SPI模式主要特征：

3线或者4线数据传输 

8/16/32 位传输帧格式 

MSB/LSB 先发送可选 

主从模式 

时钟频率可设 

可编程的时钟极性和相位 

可触发中断的发送和接收标志 

DMA 读写 

# I2S 主要特征：

单工通信 

主从模式 

数据长度可为 16/32位 

8位线性可编程预分频器（音频采样频率8KHz 到96KHz） 

可编程时钟极性 

支持多种I2S 协议： 

➢ I2S 飞利浦标准 

➢ LSB 对齐标准（右对齐） 

➢ MSB对齐标准（左对齐） 

➢ PCM 标准 

DMA 读写 

可输出的主时钟，频率为256×Fs（Fs为音频采样频率） 

# 6.14 内部集成电路接口（I2C）

# I2C 特征：

多主机模式：可用作主设备或者从设备 

I2C 主设备产生时钟，起始和停止信号 

检测7位和10位地址 

支持 Fast Mode Plus 模式，最高速度可达 1Mbit/s 

支持多地址识别 

在监控模式下可观察所有的 I2C 总线通信量 

DMA 读写 

I2C模块能实现全部从动功能，且硬件支持启动位和停止位中断，以便于固件实现主控 功能。I2C模块实现标准模式规范以及7位和10位寻址。有两个引脚用于数据传输：时钟线 （SCL）和数据线（SDA）。通过使能位I2CEN置1以使能I2C模块的功能。 

# 6.15 EXIC 接口

EXIC 接口是用于并口通讯，最高支持 18bit 的并行数据输出，支持 DMA 读写支持 LCD8080接口，可用于与专用的 LCD 驱动芯片进行通讯。 

# 6.16 实时时钟（RTC）

实时时钟 (Real Time Counting，RTC) 单元提供给用户实时时间以及日历信息。RTC 单 元通过时间寄存器提供时间信息 (秒、分、时、星期、日、月、年)。数据信息由 BCD 码 格式进行表示。修改计数器的值可以重新设置系统当前的时间和日期。 

RTC模块可以根据年、月份（闰年、大小月），自动补偿天数；还可以进行夏令时、冬 令时补偿。 

RTC的时钟源可以通过软件选择外部低频晶振EXTLF、内部低频时钟INTLF和外部高频 晶振的128分频。RTC模块自带高精度的数字时钟校准功能。 

RTC提供两个可编程的闹钟功能及中断，用户可预先在时间闹钟寄存器中设置闹钟日期 进行闹铃设置。 

RTC模块位于备份域内，因此所有对RTC模块的操作都将受到备份域保护，操作RTC寄 存器之前需要允许备份域可写；使能RTC模块之后，只要电源电压保持在工作范围内，RTC 将可正常工作在任何运行模式和休眠模式。 

# 6.17 控制器局域网总线（CAN）

控制器局域网（Controller Area Network，简写为 CAN）是一种用于连接电子控制设备 （EletronicControl Unit，简写为 ECU）的多主共享型串行总线标准。CAN 总线针对抗电磁 干扰进行了专门设计，适用于具有较强电磁干扰的环境，不但可以使用与RS-485类似的差 分平衡传输线，也可以使用更加可靠的双绞线。CAN 总线最初是针对汽车应用而研发的， 不过时至今日已经广泛应用于各种嵌入式控制领域（例如工业方面和医疗方面）。CAN总 线在总线长度小于40米时最高可达 1Mbps位速率。位速率越低则有效通讯距离越远（例如 125kbps 时通讯距离可达 500 米）。 

CAN有如下特性： 

支持CAN2.0B协议 

同时支持11位和29位识别码 

位速率可达1Mbits/s 

可读/写访问的错误计数器 

可编程的错误报警限制 

最近一次错误代码寄存器 

对每一个CAN总线错误的中断 

具体控制位控制的仲裁丢失中断 

在标准和扩展格式中都有验收滤波器含屏蔽和代码寄存器 

当错误或仲裁丢失时可配置是否重发 

# 6.18 独立看门狗（IWDT）

看门狗可用来检测和解决由软件错误引起的故障，当计数器达到给定的超时值时产生 一个系统复位。 

IWDT最适合那些要求看门狗在主程序外，能够完全独立工作的场合。 

特点： 

自由递增的计数器 

时钟为内部低频时钟INTLF 

可编程预分频 

避免复位：溢出前清零看门狗计数器（喂狗） 

# 6.19 窗口看门狗（WWDT）

窗口看门狗通常被用来监测由外部干扰或不可预见的逻辑条件造成的应用程序背离正 常的运行序列而产生的软件故障。 

WWDT最适合那些要求看门狗在精确计时窗口起作用的应用程序。通过可配置的时间 窗口来检测应用程序非正常的过迟或过早的操作。 

特点： 

可编程自由运行计数 

时钟为内部低频时钟INTLF 

可编程预分频 

提供中断 

避免复位（喂狗）：窗口内写计数器或利用中断写计数器 

# 6.20 USB 模块（USB）

该通用串行总线 (USB) 为一个带有单个连接器的串行接口，可以连接所有 USB 外设 到主机系统。下面是USB的一些特性： 

兼容 USB 2.0 全速规范 

支持控制/批量/中断/等时传输类型 

支持USB 挂起/恢复操作 

提供8个可配置为控制/批量/中断/等时传输类型的端点 

512 字节 SRAM 内置缓存 

提供远程唤醒功能 

所有端点均支持双缓冲模式 

可通过软件来配置端点最大包的长度（取决于 USB最大规格） 

# 6.21 CFGL 模块（CFGL）

可配置逻辑单元（CFGLx）提供可超越软件执行速度限制而工作的可编程逻辑。该逻 辑单元最多可接收16个输入信号，并通过使用可配置门将16个输入缩减为4条驱动8种可选 单输出逻辑功能之一的逻辑线。 

输入源是以下信号源的组合： 

I/O引脚 

内部时钟 

⚫ 外设 

寄存器位 

可能的配置包括： 

组合逻辑 

➢ AND 

➢ NAND 

➢ AND-OR 

➢ AND-OR-INVERT 

➢ OR-XOR 

➢ OR-XNOR 

锁存器 

➢ S-R 

➢ 带置1 和复位功能的时钟控制D型锁存器 

➢ 带置1 和复位功能的透明D型锁存器 

➢ 带复位功能的时钟控制J-K型锁存器 

# 6.22 复位（RESET）

系统复位源： 

POR 上电复位 

BOR 复位 

NRST外部复位引脚复位 

窗口看门狗复位 

独立看门狗复位 

软件复位 

单片机具有：POR 上电复位、BOR复位、NRST复位、IWDT 复位、WWDT复位、软 件复位六种复位方式。 

除复位方式以外，单片机还提供一个可编程的电压检测模块（PVD），对供电电源VDD 的电压进行检测。 

有些寄存器的状态在任何复位条件下都不会受到影响，其它大多数寄存器在复位事件 发生时将被复位成“复位状态”。 

# 6.23 外设模块时钟使能模块(CLK_EN)

为了降低功耗，默认外设时钟就禁止。在使用外设模块时，需要使能该外设模块时钟 控制信号，否则模块不工作。通过PCLK_CTLx（x=0,1,2,3）外设时钟控制寄存器控制相应 的外设时钟。当外设时钟禁止时，CPU 无法对相应的模块寄存器进行写操作。 

# 6.24 循环冗余校验单元（CRC）

循环冗余校验单元（Cyclic Redundancy Check, CRC）可以通过生成多项式计算不同长 度数据的CRC校验值。CRC技术可应用于核实数据传输或者数据存储的正确性和完整性。 

CRC 特性： 

可编程的多项式，最高支持 33项数的生成多项式 

单周期计算时间 

支持可编程的初始值 

支持8/16/32位长度的输入数据格式 

输入数据支持字节反序操作 

计算结果支持可编程的异或操作 

计算结果支持反序操作 

# 7 电气特性

# 7.1 概述

除非另外说明，所有电压都是相对 $\mathrm { V } _ { \mathrm { S S } }$ 做参考的。 

# 7.1.1 最大值和最小值说明

除非另外声明，在测试过程中，所有产品参数都会经过 $\mathrm { T _ { A } } = 2 5 ^ { \circ } \mathrm { C }$ 的环境温度测试。产 品能够保证满足所规定的的运行电压范围和运行频率范围。 

基于描述性的特性，设计值和工艺特性等数据会隐含在表格中的脚注中。它们不会在 量产中测试。 

# 7.1.2 典型值

除非另外声明，典型数据（典型值）来源于环境温度 $\mathrm { T _ { A } }$ 为 $2 5 \mathrm { { ^ \circ C } }$ ， $\mathrm { V } _ { \mathrm { D D } } = 3 . 3 \mathrm { V }$ 的条件。 它只作为设计参考，并不一定经过测试。 

# 7.2 最大承受范围

超过下表中的最大承受范围会对器件造成不可恢复的损坏。这些只是可加的最大条件， 并不保证产品在这个范围内都能稳定工作。长期工作在这个范围的最大值条件下，产品的 可靠性会受到影响。器件的应用条件符合JEDEC JESD47 的规格标准。 


表 7-1 电压特性(1)


<table><tr><td>符号</td><td>描述</td><td>最小值</td><td>最大值</td><td>单位</td></tr><tr><td><eq>V_{DDX} - V_{SS}</eq></td><td>外部主要电源电压(包括 <eq>V_{DD}</eq>,<eq>V_{DDA}</eq>,<eq>V_{BAT}</eq>)</td><td>-0.3</td><td>4.0</td><td>V</td></tr><tr><td><eq>V_{DD12} - V_{SS}</eq></td><td>内部稳压器输出</td><td>-0.3</td><td>1.32</td><td>V</td></tr><tr><td><eq>V_{IN}^{(2)}</eq></td><td>输入范围</td><td><eq>V_{SS}</eq>-0.3</td><td>4.0</td><td>V</td></tr><tr><td><eq>| \Delta V_{DDX} |</eq></td><td><eq>V_{DDX}</eq> 电源域之间的压差</td><td>-</td><td>50</td><td>mV</td></tr><tr><td><eq>| \Delta V_{SSX} |</eq></td><td>不同地电源域之间的压差<eq>^{(3)}</eq></td><td>-</td><td>50</td><td>mV</td></tr><tr><td><eq>V_{REF+} - V_{DDA}</eq></td><td>可允许的 <eq>V_{REF+}</eq> 大于 <eq>V_{DDA}</eq> 的电压量</td><td>-</td><td>0.4</td><td>V</td></tr></table>


注1：所有主电源 $( \mathrm { { V _ { D D } } }$ ， $\mathrm { \Delta V _ { D D A } }$ ， $\mathbf { V } _ { \mathrm { B A T } } )$ ）和地 $( \mathrm { V } _ { \mathrm { S S } } , ~ \mathrm { V } _ { \mathrm { S S A } } )$ ）必须连接到外部电源上，并且 不能超过以上的规定范围。 



注2：如果要满足最大的注入电流特性的话， $\mathrm { V _ { I N } }$ 必须被关注。 



注3：包括 ${ \mathrm { V } } _ { \mathrm { R E F } } .$ -脚。 



表 7-2 电流特性


<table><tr><td>符号</td><td>描述</td><td>最大值</td><td>单位</td></tr><tr><td><eq>\Sigma I_{VDD}</eq></td><td>整个 <eq>V_{DD}</eq> 电源域可以提供的电流总和<eq>^{(1)}</eq></td><td>150</td><td rowspan="10">mA</td></tr><tr><td><eq>\Sigma I_{VSS}</eq></td><td>整个 <eq>V_{SS}</eq> 电源域可以泄放的电流总和<eq>^{(1)}</eq></td><td>150</td></tr><tr><td><eq>I_{VDD(PIN)}</eq></td><td>每个 <eq>V_{DD}</eq> 脚可以提供的最大的电流<eq>^{(1)}</eq></td><td>100</td></tr><tr><td><eq>I_{VSS(PIN)}</eq></td><td>每个地管脚可以泄放的最大电流<eq>^{(1)}</eq></td><td>100</td></tr><tr><td rowspan="2"><eq>I_{IO(PIN)}</eq></td><td>每个 IO 可以泄放的最大电流量</td><td>20</td></tr><tr><td>每个 IO 可以提供的最大电流量</td><td>20</td></tr><tr><td rowspan="2"><eq>\Sigma I_{IO(PIN)}</eq></td><td>所有 IO 可以泄放的电流总量<eq>^{(2)}</eq></td><td>100</td></tr><tr><td>所有 IO 可以提供的电流总量<eq>^{(2)}</eq></td><td>100</td></tr><tr><td><eq>I_{INJ(PIN)}</eq></td><td>每个 IO 口通过外部注入的电流</td><td>-5/0<eq>^{(3)}</eq></td></tr><tr><td><eq>\Sigma |I_{IO(PIN)}|</eq></td><td>所有 IO 口可以通过外部注入的电流总和<eq>^{(4)}</eq></td><td>±25</td></tr></table>


注 1：所有主电源（VDD，VDDA，VBAT）和地 $( \mathrm { V } _ { \mathrm { S S } } , \ \mathrm { V } _ { \mathrm { S S A } } )$ 都必须连接到外部电源上，并 且符合允许的电源输入范围。 



注2：所有IO脚上的电流必须合理分配。 



注3：当 $\mathrm { V } _ { \mathrm { I N } } { < } \mathrm { V } _ { \mathrm { S S } }$ 时，会有负电流注入。但是不能超过 IINJ(PIN)这个值。 



注 4：当同时有几个 IO 都有电流注入贡献时，Σ|IIO(PIN)|是允许它们泄露电流总和的最大值。 



表 7-3 温度特性


<table><tr><td>符号</td><td>描述</td><td>最大值</td><td>单位</td></tr><tr><td><eq>T_{STG}</eq></td><td>存储温度范围</td><td>-65 ~+150</td><td>°C</td></tr><tr><td><eq>T_J</eq></td><td>最大结温</td><td>150</td><td>°C</td></tr></table>

# 7.3 运行条件

# 7.3.1 常规运行条件


表 7-4 常规运行条件


<table><tr><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>最大值</td><td>单位</td></tr><tr><td><eq>f_{SCLK}</eq></td><td>core频率</td><td><eq>\mathrm{V_{DD}}=1.8\mathrm{V}\sim3.6\mathrm{V};\mathrm{T}_{\mathrm{A}}=-40\sim+105°C</eq></td><td>0</td><td>72</td><td rowspan="12">MHz</td></tr><tr><td><eq>f_{SYSTICK}</eq></td><td>节拍定时器工作频率</td><td><eq>\mathrm{V_{DD}}=1.8\mathrm{V}\sim3.6\mathrm{V};\mathrm{T}_{\mathrm{A}}=-40\sim+105°C</eq></td><td>0</td><td>72</td></tr><tr><td><eq>f_{DMA}</eq></td><td>DMA工作频率</td><td><eq>\mathrm{V_{DD}}=1.8\mathrm{V}\sim3.6\mathrm{V};\mathrm{T}_{\mathrm{A}}=-40\sim+105°C</eq></td><td>0</td><td>72</td></tr><tr><td><eq>f_{USB}</eq></td><td>USB工作频率</td><td><eq>\mathrm{V_{DD}}=1.8\mathrm{V}\sim3.6\mathrm{V};\mathrm{T}_{\mathrm{A}}=-40\sim+105°C</eq></td><td>0</td><td>48</td></tr><tr><td><eq>f_{TIMER}</eq></td><td>基本/通用/高级定时器工作频率</td><td><eq>\mathrm{V_{DD}}=1.8\mathrm{V}\sim3.6\mathrm{V};\mathrm{T}_{\mathrm{A}}=-40\sim+105°C</eq></td><td>0</td><td>72</td></tr><tr><td><eq>f_{QEI}</eq></td><td>QEI工作频率</td><td><eq>\mathrm{V_{DD}}=1.8\mathrm{V}\sim3.6\mathrm{V};\mathrm{T}_{\mathrm{A}}=-40\sim+105°C</eq></td><td>0</td><td>72</td></tr><tr><td><eq>f_{CFGL}</eq></td><td>CFGL工作频率</td><td><eq>\mathrm{V_{DD}}=1.8\mathrm{V}\sim3.6\mathrm{V};\mathrm{T}_{\mathrm{A}}=-40\sim+105°C</eq></td><td>0</td><td>72</td></tr><tr><td><eq>f_{I2C}</eq></td><td>I2C工作频率</td><td><eq>\mathrm{V_{DD}}=1.8\mathrm{V}\sim3.6\mathrm{V};\mathrm{T}_{\mathrm{A}}=-40\sim+105°C</eq></td><td>0</td><td>72</td></tr><tr><td><eq>f_{SPI}</eq></td><td>SPI工作频率</td><td><eq>\mathrm{V_{DD}}=1.8\mathrm{V}\sim3.6\mathrm{V};\mathrm{T}_{\mathrm{A}}=-40\sim+105°C</eq></td><td>0</td><td>72</td></tr><tr><td><eq>f_{USART}</eq></td><td>USART工作频率</td><td><eq>\mathrm{V_{DD}}=1.8\mathrm{V}\sim3.6\mathrm{V};\mathrm{T}_{\mathrm{A}}=-40\sim+105°C</eq></td><td>0</td><td>72</td></tr><tr><td><eq>f_{CRC}</eq></td><td>CRC工作频率</td><td><eq>\mathrm{V_{DD}}=1.8\mathrm{V}\sim3.6\mathrm{V};\mathrm{T}_{\mathrm{A}}=-40\sim+105°C</eq></td><td>0</td><td>72</td></tr><tr><td><eq>f_{CAN}</eq></td><td>CAN工作频率</td><td><eq>\mathrm{V_{DD}}=1.8\mathrm{V}\sim3.6\mathrm{V};\mathrm{T}_{\mathrm{A}}=-40\sim+105°C</eq></td><td>0</td><td>72</td></tr><tr><td><eq>f_{RTC}</eq></td><td>RTC工作频率</td><td><eq>\mathrm{V_{DD}}=1.8\mathrm{V}\sim3.6\mathrm{V};\mathrm{T}_{\mathrm{A}}=-40\sim+105°C</eq></td><td>0</td><td>32</td><td rowspan="2">kHz</td></tr><tr><td><eq>f_{WDT}</eq></td><td>IWDT/WWDT工作频率</td><td><eq>\mathrm{V_{DD}}=1.8\mathrm{V}\sim3.6\mathrm{V};\mathrm{T}_{\mathrm{A}}=-40\sim+105°C</eq></td><td>0</td><td>32</td></tr><tr><td><eq>V_{DD}</eq></td><td>标准运行电压</td><td><eq>\mathrm{T}_{\mathrm{A}}=-40\sim+105°C</eq></td><td><eq>1.8^{(1)}</eq></td><td>3.6</td><td>V</td></tr><tr><td><eq>V_{DD12}</eq></td><td>内核运行电压</td><td>全频率范围</td><td>1.30</td><td>1.34</td><td>V</td></tr><tr><td rowspan="4"><eq>V_{DDA}</eq></td><td rowspan="4">模拟电源电压</td><td>使用ADC时</td><td>2.4</td><td rowspan="4">3.6</td><td rowspan="4">V</td></tr><tr><td>使用DAC时</td><td>2.4</td></tr><tr><td>使用VREFBUF时</td><td>2.4</td></tr><tr><td>ADC,DAC,COMP,VREFBUF不使用时</td><td>1.8</td></tr><tr><td><eq>V_{BAT}</eq></td><td>备份域电源</td><td>-</td><td>1.6</td><td>3.6</td><td>V</td></tr><tr><td><eq>V_{IN}</eq></td><td>IO输入范围</td><td>所有IO口</td><td>-0.3</td><td><eq>\mathrm{V_{DD}+0.3}</eq></td><td>V</td></tr><tr><td rowspan="2"><eq>T_A</eq></td><td rowspan="2">环境温度范围</td><td>最大功耗下</td><td>-40</td><td>105</td><td>°C</td></tr><tr><td>最低功耗下</td><td>-40</td><td>105</td><td>°C</td></tr></table>


注1：当RESET 功能不起作用时，可以保证产品在V 电压达到最小值以上时运行正确。 


# 7.3.2 上电/掉电的运行条件

这个表格中的参数是在 表 7-4的条件下测试得出的。 


表 7-5 上电/掉电的运行条件


<table><tr><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>最大值</td><td>单位</td></tr><tr><td rowspan="2"><eq>t_{VDD}</eq></td><td>VDD上升速率</td><td rowspan="2">-</td><td>0</td><td>∞</td><td rowspan="2">us/V</td></tr><tr><td>VDD下降速率</td><td>10</td><td>∞</td></tr><tr><td rowspan="2"><eq>t_{VDDA}</eq></td><td>VDDA上升速率</td><td rowspan="2">-</td><td>0</td><td>∞</td><td rowspan="2">us/V</td></tr><tr><td>VDDA下降速率</td><td>10</td><td>∞</td></tr></table>

# 7.3.3 复位和电源控制模块特性 BOR,PVD

这个表格中的参数是在表 7-4 的条件下测试得出的。 


表 7-6 复位和电源控制模块特性


<table><tr><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td><eq>t_{\text{RST\_POR}}</eq></td><td>在检测到POR后,复位退出的延迟时间</td><td><eq>V_{DD}</eq>上升</td><td>-</td><td>3.8</td><td>-</td><td>ms</td></tr><tr><td rowspan="2"><eq>V_{POR}^{(1)}</eq></td><td rowspan="2">上电复位阈值</td><td>上升沿</td><td>1.61</td><td>1.66</td><td>1.7</td><td rowspan="2">V</td></tr><tr><td>下降沿</td><td>1.6</td><td>1.64</td><td>1.69</td></tr><tr><td colspan="7"></td></tr><tr><td rowspan="2"><eq>V_{BOR1}</eq></td><td rowspan="2">BOR1复位阈值</td><td>上升沿</td><td>1.76</td><td>1.79</td><td>1.83</td><td rowspan="2">V</td></tr><tr><td>下降沿</td><td>1.67</td><td>1.73</td><td>1.78</td></tr><tr><td rowspan="2"><eq>V_{BOR2}</eq></td><td rowspan="2">BOR2复位阈值</td><td>上升沿</td><td>1.89</td><td>1.97</td><td>2.03</td><td rowspan="2">V</td></tr><tr><td>下降沿</td><td>1.85</td><td>1.90</td><td>1.96</td></tr><tr><td rowspan="2"><eq>V_{BOR3}</eq></td><td rowspan="2">BOR3复位阈值</td><td>上升沿</td><td>2.19</td><td>2.25</td><td>2.33</td><td rowspan="2">V</td></tr><tr><td>下降沿</td><td>2.02</td><td>2.13</td><td>2.21</td></tr><tr><td rowspan="2"><eq>V_{BOR4}</eq></td><td rowspan="2">BOR4复位阈值</td><td>上升沿</td><td>2.43</td><td>2.49</td><td>2.53</td><td rowspan="2">V</td></tr><tr><td>下降沿</td><td>2.35</td><td>2.38</td><td>2.45</td></tr><tr><td colspan="7"></td></tr><tr><td rowspan="2"><eq>V_{PVD0}</eq></td><td rowspan="2">可编程电压检测阈值0</td><td>上升沿</td><td>1.88</td><td>1.93</td><td>1.98</td><td rowspan="2">V</td></tr><tr><td>下降沿</td><td>1.66</td><td>1.72</td><td>1.80</td></tr><tr><td rowspan="2"><eq>V_{PVD1}</eq></td><td rowspan="2">可编程电压检测阈值1</td><td>上升沿</td><td>2.02</td><td>2.06</td><td>2.11</td><td rowspan="2">V</td></tr><tr><td>下降沿</td><td>1.76</td><td>1.84</td><td>1.93</td></tr><tr><td rowspan="2"><eq>V_{PVD2}</eq></td><td rowspan="2">可编程电压检测阈值2</td><td>上升沿</td><td>2.15</td><td>2.20</td><td>2.25</td><td rowspan="2">V</td></tr><tr><td>下降沿</td><td>1.87</td><td>1.96</td><td>2.06</td></tr><tr><td rowspan="2"><eq>V_{PVD3}</eq></td><td rowspan="2">可编程电压检测阈值3</td><td>上升沿</td><td>2.29</td><td>2.34</td><td>2.40</td><td rowspan="2">V</td></tr><tr><td>下降沿</td><td>1.19</td><td>2.09</td><td>2.19</td></tr><tr><td rowspan="2"><eq>V_{PVD4}</eq></td><td rowspan="2">可编程电压检测阈值4</td><td>上升沿</td><td>2.43</td><td>2.48</td><td>2.54</td><td rowspan="2">V</td></tr><tr><td>下降沿</td><td>2.11</td><td>2.21</td><td>2.32</td></tr><tr><td rowspan="2"><eq>V_{PVD5}</eq></td><td rowspan="2">可编程电压检测阈值5</td><td>上升沿</td><td>2.56</td><td>2.61</td><td>2.68</td><td rowspan="2">V</td></tr><tr><td>下降沿</td><td>2.23</td><td>2.33</td><td>2.45</td></tr><tr><td rowspan="2"><eq>V_{PVD6}</eq></td><td rowspan="2">可编程电压检测阈值6</td><td>上升沿</td><td>2.65</td><td>2.71</td><td>2.77</td><td rowspan="2">V</td></tr><tr><td>下降沿</td><td>2.30</td><td>2.41</td><td>2.53</td></tr><tr><td colspan="7"></td></tr><tr><td><eq>V_{hyst\_POR}</eq></td><td>POR的迟滞电压</td><td>-</td><td>-</td><td>20</td><td>-</td><td>mV</td></tr><tr><td><eq>V_{hyst\_BOR}</eq></td><td>BOR的迟滞电压</td><td>-</td><td>-</td><td>120</td><td>-</td><td>mV</td></tr><tr><td><eq>V_{hyst\_PVD}</eq></td><td>PVD的迟滞电压</td><td>-</td><td>-</td><td>300</td><td>-</td><td>mV</td></tr><tr><td><eq>I_{DD(BOR\_PVD)}^{(2)}</eq></td><td>BOR和PVD的总功耗</td><td>-</td><td>-</td><td>1.1</td><td>2</td><td>μA</td></tr></table>


注 1：POR 在除了 Shutdown 模式外，都是默认使能的。它的功耗是包含在电源电流特性表 格中的。 



注2：设计保证。 


# 7.3.4 BAT PVD


表 7-7 BAT 电气特性


<table><tr><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td rowspan="12">监测阈值</td><td rowspan="2">BAT PVD SEL=000</td><td>上升沿</td><td>1.6</td><td>-</td><td>1.7</td><td rowspan="12">V</td></tr><tr><td>下降沿</td><td>-</td><td>-</td><td>-</td></tr><tr><td rowspan="2">BAT PVD SEL=001</td><td>上升沿</td><td>1.8</td><td>-</td><td>1.9</td></tr><tr><td>下降沿</td><td>1.64</td><td>-</td><td>1.69</td></tr><tr><td rowspan="2">BAT PVD SEL=010</td><td>上升沿</td><td>2.07</td><td>-</td><td>2.16</td></tr><tr><td>下降沿</td><td>1.85</td><td>-</td><td>1.93</td></tr><tr><td rowspan="2">BAT PVD SEL=011</td><td>上升沿</td><td>2.42</td><td>-</td><td>2.52</td></tr><tr><td>下降沿</td><td>2.16</td><td>-</td><td>2.26</td></tr><tr><td rowspan="2">BAT PVD SEL=100</td><td>上升沿</td><td>2.89</td><td>-</td><td>3.03</td></tr><tr><td>下降沿</td><td>2.58</td><td>-</td><td>2.72</td></tr><tr><td rowspan="2">BAT PVD SEL=101</td><td>上升沿</td><td>3.62</td><td>-</td><td>3.76</td></tr><tr><td>下降沿</td><td>3.42</td><td>-</td><td>3.36</td></tr><tr><td><eq>I_{DD-BAT-PVD}</eq></td><td>BAT PVD 功耗</td><td>-</td><td>-</td><td>20</td><td>-</td><td>uA</td></tr><tr><td><eq>t_{STU}</eq></td><td>开启稳定时间</td><td>-</td><td>-</td><td>108</td><td>-</td><td>us</td></tr></table>

# 7.3.5 电源电流特性

电源电流的消耗是很多因素的组合：运行电压，环境温度，I/O 负载，设备软件配置， 运行频率，I/O 开关速率，程序存储位置和代码。 

典型和最大电流消耗（MCU 在以下条件测得）： 

1) 所有的I/O 脚都处于模拟输入模式； 

2) 除了特殊说明外，所有外设都禁止； 

3) Flash访问时间调整为最小的等待状态数，取决于 FSCLK频率； 

4) 当外设使能时，FPCLK=FSCLK； 

下面的数据来源于环境温度和表格所规定的电压范围。 


表 7-8 运行模式1


<table><tr><td>运行模式</td><td>程序方式</td><td>外设工作条件</td><td>时钟源</td><td>SCLK频率</td><td>3.3V-40°C</td><td>3.3V25°C</td><td>3.3V85°C</td><td>单位</td></tr><tr><td rowspan="6">RUN</td><td rowspan="2">程序在FLASH运行,开预取,FLASH_CFG=0XC2</td><td rowspan="6">所有外设禁止</td><td>PLL</td><td>72MHz</td><td>3456</td><td>3607</td><td>3693</td><td rowspan="18">μA</td></tr><tr><td>PLL</td><td>64MHz</td><td>3137</td><td>3280</td><td>3364</td></tr><tr><td>程序在FLASH运行,开预取,FLASH_CFG=0XC1</td><td>PLL</td><td>48MHz</td><td>2608</td><td>2727</td><td>2815</td></tr><tr><td rowspan="3">程序在FLASH运行,关预取,FLASH_CFG=0XC0</td><td>PLL</td><td>32MHz</td><td>2313</td><td>2428</td><td>2518</td></tr><tr><td>INTHF</td><td>16MHz</td><td>1169</td><td>1230</td><td>1330</td></tr><tr><td>INTLF</td><td>32KHz</td><td>230</td><td>264</td><td>360</td></tr><tr><td rowspan="6">RUN</td><td rowspan="6">程序在RAM运行,开FLASH</td><td rowspan="6">所有外设禁止</td><td>PLL</td><td>72MHz</td><td>3028</td><td>3283</td><td>3348</td></tr><tr><td>PLL</td><td>64MHz</td><td>2745</td><td>2973</td><td>3042</td></tr><tr><td>PLL</td><td>48MHz</td><td>2349</td><td>2457</td><td>2532</td></tr><tr><td>PLL</td><td>32MHz</td><td>1735</td><td>1795</td><td>1910</td></tr><tr><td>INTHF</td><td>16MHz</td><td>856</td><td>909</td><td>996</td></tr><tr><td>INTLF</td><td>32KHz</td><td>230</td><td>265</td><td>354</td></tr><tr><td rowspan="6">RUN</td><td rowspan="6">程序在RAM运行,关FLASH</td><td rowspan="6">所有外设禁止</td><td>PLL</td><td>72MHz</td><td>2987</td><td>3110</td><td>3164</td></tr><tr><td>PLL</td><td>64MHz</td><td>2690</td><td>2809</td><td>2859</td></tr><tr><td>PLL</td><td>48MHz</td><td>2188</td><td>2287</td><td>2348</td></tr><tr><td>PLL</td><td>32MHz</td><td>1574</td><td>1644</td><td>1720</td></tr><tr><td>INTHF</td><td>16MHz</td><td>694</td><td>738</td><td>810</td></tr><tr><td>INTLF</td><td>32KHz</td><td>70</td><td>96</td><td>169</td></tr></table>


表 7-9 运行模式2


<table><tr><td>运行模式</td><td>程序方式</td><td>外设工作条件</td><td>时钟源</td><td>SCLK 频率</td><td>3.3V-40°C</td><td>3.3V25°C</td><td>3.3V85°C</td><td>单位</td></tr><tr><td rowspan="6">SLEEP</td><td rowspan="2">程序在 FLASH 运行,开预取,FLASH_CFG = 0XC2</td><td rowspan="6">所有外设禁止</td><td>PLL</td><td>72MHz</td><td>1930</td><td>2024</td><td>2112</td><td rowspan="18">μA</td></tr><tr><td>PLL</td><td>64MHz</td><td>1782</td><td>1846</td><td>1988</td></tr><tr><td>程序在 FLASH 运行,开预取,FLASH_CFG = 0XC1</td><td>PLL</td><td>48MHz</td><td>1553</td><td>1630</td><td>1730</td></tr><tr><td rowspan="3">程序在 FLASH 运行,关预取,FLASH_CFG = 0XC0</td><td>PLL</td><td>32MHz</td><td>1186</td><td>1252</td><td>1350</td></tr><tr><td>INTHF</td><td>16MHz</td><td>579</td><td>626</td><td>722</td></tr><tr><td>INTLF</td><td>32KHz</td><td>230</td><td>264</td><td>360</td></tr><tr><td rowspan="6">SLEEP</td><td rowspan="6">程序在 RAM 运行,开 FLASH</td><td rowspan="6">所有外设禁止</td><td>PLL</td><td>72MHz</td><td>1932</td><td>2025</td><td>2110</td></tr><tr><td>PLL</td><td>64MHz</td><td>1783</td><td>1846</td><td>1988</td></tr><tr><td>PLL</td><td>48MHz</td><td>1554</td><td>1630</td><td>1730</td></tr><tr><td>PLL</td><td>32MHz</td><td>1185</td><td>1253</td><td>1352</td></tr><tr><td>INTHF</td><td>16MHz</td><td>580</td><td>626</td><td>722</td></tr><tr><td>INTLF</td><td>32KHz</td><td>230</td><td>265</td><td>360</td></tr><tr><td rowspan="6">SLEEP</td><td rowspan="6">程序在 RAM 运行,关 FLASH</td><td rowspan="6">所有外设禁止</td><td>PLL</td><td>72MHz</td><td>1787</td><td>1847</td><td>1966</td></tr><tr><td>PLL</td><td>64MHz</td><td>1624</td><td>1675</td><td>1780</td></tr><tr><td>PLL</td><td>48MHz</td><td>1392</td><td>1460</td><td>1542</td></tr><tr><td>PLL</td><td>32MHz</td><td>1025</td><td>1082</td><td>1163</td></tr><tr><td>INTHF</td><td>16MHz</td><td>420</td><td>456</td><td>534</td></tr><tr><td>INTLF</td><td>32KHz</td><td>70</td><td>96</td><td>172</td></tr></table>


表 7-10 运行模式 3


<table><tr><td>运行模式</td><td>程序方式</td><td>外设工作条件</td><td>时钟源</td><td>SCLK频率</td><td>3.3V-40°C</td><td>3.3V25°C</td><td>3.3V85°C</td><td>单位</td></tr><tr><td rowspan="6">DEEPSLEEP</td><td rowspan="2">程序在FLASH运行,开预取,FLASH_CFG=0XC2</td><td rowspan="6">所有外设禁止</td><td>PLL</td><td>72MHz</td><td>1242</td><td>1310</td><td>1410</td><td rowspan="18">μA</td></tr><tr><td>PLL</td><td>64MHz</td><td>1156</td><td>1220</td><td>1320</td></tr><tr><td>程序在FLASH运行,开预取,FLASH_CFG=0XC1</td><td>PLL</td><td>48MHz</td><td>1080</td><td>1145</td><td>1244</td></tr><tr><td rowspan="3">程序在FLASH运行,关预取,FLASH_CFG=0XC0</td><td>PLL</td><td>32MHz</td><td>870</td><td>927</td><td>1028</td></tr><tr><td>INTHF</td><td>16MHz</td><td>422</td><td>464</td><td>560</td></tr><tr><td>INTLF</td><td>32KHz</td><td>229</td><td>264</td><td>360</td></tr><tr><td rowspan="6">DEEPSLEEP</td><td rowspan="6">程序在RAM运行,开FLASH</td><td rowspan="6">所有外设禁止</td><td>PLL</td><td>72MHz</td><td>1242</td><td>1310</td><td>1410</td></tr><tr><td>PLL</td><td>64MHz</td><td>1156</td><td>1220</td><td>1320</td></tr><tr><td>PLL</td><td>48MHz</td><td>1080</td><td>1144</td><td>1244</td></tr><tr><td>PLL</td><td>32MHz</td><td>870</td><td>927</td><td>1027</td></tr><tr><td>INTHF</td><td>16MHz</td><td>420</td><td>463</td><td>560</td></tr><tr><td>INTLF</td><td>32KHz</td><td>229</td><td>264</td><td>359</td></tr><tr><td rowspan="6">DEEPSLEEP</td><td rowspan="6">程序在RAM运行,关FLASH</td><td rowspan="6">所有外设禁止</td><td>PLL</td><td>72MHz</td><td>1082</td><td>1140</td><td>1222</td></tr><tr><td>PLL</td><td>64MHz</td><td>994</td><td>1050</td><td>1133</td></tr><tr><td>PLL</td><td>48MHz</td><td>920</td><td>975</td><td>1056</td></tr><tr><td>PLL</td><td>32MHz</td><td>710</td><td>758</td><td>840</td></tr><tr><td>INTHF</td><td>16MHz</td><td>260</td><td>293</td><td>370</td></tr><tr><td>INTLF</td><td>32KHz</td><td>70</td><td>96</td><td>172</td></tr></table>

# 7.3.6 内核电源 VREG


表 7-11 VREG 电气特性


<table><tr><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td><eq>V_{REG}</eq></td><td>调整器的输出电压</td><td><eq>V_{DD}=3.3V, T_A=25°C</eq></td><td>-</td><td>1.32</td><td>-</td><td>V</td></tr><tr><td><eq>V_{DDcoeff}</eq></td><td><eq>V_{REG}</eq>的电源变化率</td><td><eq>V_{DD}=3.3V, T_A=25°C</eq></td><td>-</td><td>0.1</td><td>-</td><td>%</td></tr><tr><td><eq>t_{setting}</eq></td><td>建立时间</td><td><eq>V_{REG}=1.32V, T_A=25°C</eq></td><td>-</td><td>43</td><td>100</td><td>us</td></tr><tr><td><eq>I_{drive}</eq></td><td>驱动能力</td><td><eq>V_{REG}=1.32V, T_A=25°C</eq></td><td>-</td><td>200</td><td>230</td><td>mA</td></tr><tr><td><eq>C_{EXT}</eq></td><td>输出退耦电容</td><td><eq>V_{REG}=1.32V, T_A=25°C</eq></td><td>1.8</td><td>2.2</td><td>5</td><td>uF</td></tr></table>

# 7.4 时钟源特性

# 7.4.1 HSE


表 7-12 HSE 电气特性(1)


<table><tr><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td><eq>DuCy_{(HSE)}</eq></td><td>HSE占空比</td><td>-</td><td>45</td><td>-</td><td>55</td><td>%</td></tr><tr><td><eq>f_{HSE}</eq></td><td>HSE外部高频频率</td><td><eq>V_{DD}=3.3V, T_A=25°C</eq></td><td>4</td><td>8</td><td>32</td><td>MHz</td></tr><tr><td><eq>tsu^{(2)}_{(HSE)}</eq></td><td>HSE启动时间</td><td><eq>V_{DD}=3.3V, T_A=25°C</eq></td><td>-</td><td>2.5</td><td>-</td><td>ms</td></tr><tr><td><eq>C_{L(HSE)}</eq></td><td>HSE负载电容</td><td>-</td><td>10</td><td>14</td><td>39</td><td>pF</td></tr><tr><td rowspan="3"><eq>I_{DD(HSE)}</eq></td><td rowspan="3">HSE功耗</td><td><eq>V_{DD}=3.3V, ESR=30Ω, CL=10pF@8MHz</eq></td><td>-</td><td>0.54</td><td>-</td><td rowspan="3">mA</td></tr><tr><td><eq>V_{DD}=3.3V, ESR=45Ω, CL=10pF@16MHz</eq></td><td>-</td><td>0.95</td><td>-</td></tr><tr><td><eq>V_{DD}=3.3V, ESR=30Ω, CL=5pF@32MHz</eq></td><td>-</td><td>1.68</td><td>-</td></tr><tr><td><eq>V_{HSEH}</eq></td><td>HSE输入PIN的高电平范围</td><td>-</td><td><eq>0.6V_{DD}</eq></td><td>-</td><td><eq>V_{DD}</eq></td><td rowspan="2">V</td></tr><tr><td><eq>V_{HSEL}</eq></td><td>HSE输入PIN的低电平范围</td><td>-</td><td><eq>V_{SS}</eq></td><td>-</td><td><eq>0.3V_{DD}</eq></td></tr></table>


注1：设计保证。 



注2： $\mathbf { t _ { \mathrm { s u } } }$ 表示从软件使能到晶振稳定在 8MHz 的时间。 


# 7.4.2 LSE


表 7-13 LSE 电气特性(1)


<table><tr><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td>DuCy(LSE)</td><td>LSE 占空比</td><td>-</td><td>30</td><td>-</td><td>70</td><td>%</td></tr><tr><td>fLSE</td><td>LSE 频率</td><td><eq>V_{DD} = 3.3V, T_A = 25°C</eq></td><td>-</td><td>32.768</td><td>40</td><td>kHz</td></tr><tr><td>tsu(LSE)</td><td>LSE 开启时间</td><td>-</td><td>-</td><td>2</td><td>-</td><td>s</td></tr><tr><td>CL(LSE)</td><td>LSE 负载电容</td><td>-</td><td>-</td><td>12</td><td>-</td><td>pF</td></tr><tr><td rowspan="4">IDD(LSE)</td><td rowspan="4">LSE 功耗</td><td>LSEDRV[1:0] = 00低驱动能力</td><td>-</td><td>260</td><td>-</td><td rowspan="4">nA</td></tr><tr><td>LSEDRV[1:0] = 01中等驱动能力</td><td>-</td><td>330</td><td>-</td></tr><tr><td>LSEDRV[1:0] = 10次高等驱动能力</td><td>-</td><td>520</td><td>-</td></tr><tr><td>LSEDRV[1:0] = 11最高驱动能力</td><td>-</td><td>650</td><td>-</td></tr><tr><td>VLSEH</td><td>OSC_IN 输入PIN 高电平</td><td>-</td><td><eq>0.6V_{DD}</eq></td><td>-</td><td><eq>V_{DD}</eq></td><td rowspan="2">V</td></tr><tr><td>VLSEL</td><td>OSC_IN 输入PIN 低电平</td><td>-</td><td><eq>V_{SS}</eq></td><td>-</td><td><eq>0.3V_{DD}</eq></td></tr></table>


注1：设计保证。 


# 7.4.3 HSI


表 7-14 HSI 电气特性(1)


<table><tr><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td>DuCy(HSI)</td><td>HSI 占空比</td><td>-</td><td>45</td><td>-</td><td>55</td><td>%</td></tr><tr><td>fINTHF(HSI)</td><td>HSI 内部高频频率</td><td><eq>V_{DD} = 3.3V</eq>、<eq>T_A = 25°C</eq></td><td>-</td><td>16</td><td>-</td><td>MHz</td></tr><tr><td><eq>\triangle Temp(HSI)</eq></td><td>HSI 频率随温度的漂移</td><td><eq>V_{DD} = 3.3V</eq>、<eq>T_A = -40°C \sim +105°C</eq></td><td>-10</td><td>±5</td><td>+10</td><td>%</td></tr><tr><td>tsu(HSI)</td><td>HSI 启动时间</td><td>-</td><td>-</td><td>5</td><td>-</td><td>us</td></tr><tr><td>tstab(HSI)</td><td>HSI 稳定时间</td><td>-</td><td>-</td><td>17</td><td>-</td><td>us</td></tr><tr><td><eq>I_{DD(HSI)}</eq></td><td>HSI 功耗</td><td>-</td><td>-</td><td>47</td><td>-</td><td>μA</td></tr></table>


注1：设计保证。 


# 7.4.4 LP4M


表 7-15 LP4M 电气特性(1)


<table><tr><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td>DuCy(LP4M)</td><td>LP4M 占空比</td><td>-</td><td>45</td><td>-</td><td>55</td><td>%</td></tr><tr><td>fCLKOUT(LP4M)</td><td>LP4M 时钟频率</td><td><eq>V_{DD} = 3.3V</eq>、<eq>T_A = 25°C</eq></td><td>-</td><td>4</td><td>-</td><td>MHz</td></tr><tr><td><eq>\triangle Temp(LP4M)</eq></td><td>LP4M 温度漂移</td><td><eq>V_{DD} = 3.3V</eq>,<eq>T_A = -40°C \sim 105°C</eq></td><td>-8</td><td>-</td><td>+8</td><td>%</td></tr><tr><td>tsu(LP4M)</td><td>LP4M 启动时间</td><td>-</td><td>-</td><td>1.5</td><td>-</td><td>us</td></tr><tr><td>tstab(LP4M)</td><td>LP4M 稳定时间</td><td>-</td><td>-</td><td>10</td><td>-</td><td>us</td></tr><tr><td><eq>I_{DD(LP4M) }</eq></td><td>LP4M 功耗</td><td>-</td><td>-</td><td>6</td><td>-</td><td><eq>\mu A</eq></td></tr></table>


注1：设计保证。 


# 7.4.5 LSI


表 7-16 LSI 电气特性(1)


<table><tr><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td><eq>V_{DD(LSI)}</eq></td><td>LSI 供电电压</td><td><eq>T_A=25°C</eq></td><td>1.8</td><td>3.3</td><td>3.6</td><td>V</td></tr><tr><td rowspan="2"><eq>f_{LSI}</eq></td><td rowspan="2">LSI 频率</td><td><eq>V_{DD}=3.3V, T_A=25°C</eq></td><td>30.08</td><td>32</td><td>33.92</td><td>kHz</td></tr><tr><td><eq>V_{DD}=1.8V\sim3.6V, T_A=-40°C\sim105°C</eq></td><td>20</td><td>32</td><td>40</td><td>kHz</td></tr><tr><td><eq>\Delta Temp(LSI)</eq></td><td>LSI 温度漂移</td><td><eq>V_{DD}=3.3V, T_A=-40°C\sim105°C</eq></td><td>-10</td><td>-</td><td>+10</td><td>%</td></tr><tr><td><eq>t_{su(LSI)}</eq></td><td>LSI 启动时间</td><td>-</td><td>-</td><td>80</td><td>132</td><td>us</td></tr><tr><td><eq>t_{stab(LSI)}</eq></td><td>LSI 稳定时间</td><td>最终稳定频率 5%内</td><td>-</td><td>110</td><td>200</td><td>us</td></tr><tr><td><eq>I_{DD(LSI)}</eq></td><td>LSI 功耗</td><td>-</td><td>-</td><td>-</td><td>200</td><td>nA</td></tr></table>


注1：设计保证。 


# 7.4.6 PLL


表 7-17 PLL 电气特性(1)


<table><tr><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td><eq>V_{DD(PLL)}</eq></td><td>运行电压范围</td><td>-</td><td>1.8</td><td>3.3</td><td>3.6</td><td>V</td></tr><tr><td><eq>f_{IN/N(PLL)}</eq></td><td>输入频率范围</td><td>-</td><td>1</td><td>-</td><td>32</td><td>MHz</td></tr><tr><td><eq>f_{OUTVCO(PLL)}</eq></td><td>VCO 频率范围</td><td>-</td><td>200</td><td>-</td><td>400</td><td>MHz</td></tr><tr><td><eq>T_{pj(RMS)}</eq></td><td rowspan="2">Period Jitter</td><td rowspan="3"><eq>f_{OUTVCO} \geq 200MHz</eq>;干净电源</td><td>-</td><td>25</td><td>-</td><td rowspan="3">ps</td></tr><tr><td><eq>T_{pj(P-P)}</eq></td><td>-</td><td>200</td><td>-</td></tr><tr><td><eq>T_{cj}</eq></td><td>Cycle-to-Cycle jitter</td><td>-</td><td>50</td><td>-</td></tr><tr><td><eq>DuCy(PLL)</eq></td><td>占空比</td><td><eq>f_{OUTVCO} = 200-400Mhz</eq></td><td>40</td><td>50</td><td>60</td><td>%</td></tr><tr><td><eq>LKT(PLL)</eq></td><td>锁定时间</td><td>-</td><td>-</td><td>-</td><td>0.5</td><td>ms</td></tr><tr><td><eq>I_{DD(PLL)}</eq></td><td>功耗</td><td><eq>f_{IN} = 25MHz,</eq><eq>f_{OUTVCO} = 200MHz</eq></td><td>-</td><td>-</td><td>0.56</td><td>mA</td></tr></table>


注 1：设计保证。 


# 7.5 IO 端口特性

# 7.5.1 静态特性


表 7-18 IO 静态电气特性(1)


<table><tr><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td><eq>V_{INL}</eq></td><td>I/O输入低电平</td><td>1.8V<eq>- - 0.3V_{DD}</eq>V</td><td>-</td><td>-</td><td>0.3<eq>V_{DD}</eq></td><td>V</td></tr><tr><td><eq>V_{INH}</eq></td><td>I/O输入高电平</td><td>1.8V<eq>0.6V_{DD}</eq>---V</td><td>0.6<eq>V_{DD}</eq></td><td>-</td><td>-</td><td>V</td></tr><tr><td rowspan="2"><eq>V_{hys}</eq></td><td rowspan="2">I/O施密特触发器迟滞电压</td><td>2.7V<eq>-900</eq>-mV</td><td>-</td><td>900</td><td>-</td><td rowspan="2">mV</td></tr><tr><td>1.8V<eq>-500</eq>-</td><td>-</td><td>500</td><td>-</td></tr><tr><td><eq>I_{ikg}</eq></td><td>输入漏电流</td><td><eq>V_{IN} \leq V_{DD}</eq></td><td>-</td><td>-</td><td>±50</td><td>nA</td></tr><tr><td><eq>R_{PU}</eq></td><td>弱上拉等效电阻</td><td><eq>V_{IN} = V_{SS}</eq></td><td>40</td><td>45</td><td>50</td><td>kΩ</td></tr><tr><td><eq>R_{PD}</eq></td><td>若下拉等效电阻</td><td><eq>V_{IN} = V_{DD}</eq></td><td>40</td><td>45</td><td>50</td><td>kΩ</td></tr><tr><td><eq>C_{IO}</eq></td><td>I/O脚等效电容</td><td>-</td><td>-</td><td>3</td><td>-</td><td>pF</td></tr></table>


注1：设计保证。 


# 7.5.2 IO 输出特性


表 7-19 IO 输出电气特性(1)


<table><tr><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>最大值</td><td>单位</td></tr><tr><td><eq>V_{OL}</eq></td><td>任意 IO 输出低电平</td><td rowspan="2"><eq>|I_{IO}| = 15mA</eq><eq>V_{DD} \geq 2.7V</eq></td><td>-</td><td>0.4</td><td rowspan="6">V</td></tr><tr><td><eq>V_{OH}</eq></td><td>任意 IO 输出高电平</td><td><eq>V_{DD} - 0.4</eq></td><td>-</td></tr><tr><td><eq>V_{OL}</eq></td><td>任意 IO 输出低电平</td><td rowspan="2"><eq>|I_{IO}| = 20mA</eq><eq>V_{DD} \geq 2.7V</eq></td><td>-</td><td>1.3</td></tr><tr><td><eq>V_{OH}</eq></td><td>任意 IO 输出高电平</td><td><eq>V_{DD} - 1.3</eq></td><td>-</td></tr><tr><td><eq>V_{OL}</eq></td><td>任意 IO 输出低电平</td><td rowspan="2"><eq>|I_{IO}| = 10mA</eq><eq>V_{DD} \geq 1.8V</eq></td><td>-</td><td>0.45</td></tr><tr><td><eq>V_{OH}</eq></td><td>任意 IO 输出高电平</td><td><eq>V_{DD} - 0.45</eq></td><td>-</td></tr></table>


注1：设计保证。 


# 7.5.3 IO AC 特性


表 7-20 IO AC 电气特性(1)


<table><tr><td>I/O 速度配置</td><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>最大值</td><td>单位</td></tr><tr><td rowspan="4">低速模式</td><td rowspan="2"><eq>f_{max}</eq></td><td rowspan="2">最大频率</td><td><eq>C_L=10pF, 2.7V≤V_{DD}≤3.6V</eq></td><td>-</td><td>12</td><td rowspan="2">MHz</td></tr><tr><td><eq>C_L=10pF, 1.8V≤V_{DD}≤2.7V</eq></td><td>-</td><td>1</td></tr><tr><td rowspan="2"><eq>t_r/t_f</eq></td><td rowspan="2">输出上升和下降时间</td><td><eq>C_L=10pF, 2.7V≤V_{DD}≤3.6V</eq></td><td>-</td><td>18</td><td rowspan="2">ns</td></tr><tr><td><eq>C_L=10pF, 1.8V≤V_{DD}≤2.7V</eq></td><td>-</td><td>60</td></tr><tr><td rowspan="4">高速模式</td><td rowspan="2"><eq>f_{max}</eq></td><td rowspan="2">最大频率</td><td><eq>C_L=10pF, 2.7V≤V_{DD}≤3.6V</eq></td><td>-</td><td>30</td><td rowspan="2">MHz</td></tr><tr><td><eq>C_L=10pF, 1.8V≤V_{DD}≤2.7V</eq></td><td>-</td><td>15</td></tr><tr><td rowspan="2"><eq>t_r/t_f</eq></td><td rowspan="2">输出上升和下降时间</td><td><eq>C_L=10pF, 2.7V≤V_{DD}≤3.6V</eq></td><td>-</td><td>4</td><td rowspan="2">ns</td></tr><tr><td><eq>C_L=10pF, 1.8V≤V_{DD}≤2.7V</eq></td><td>-</td><td>7</td></tr></table>


注1：设计保证。 


# 7.5.4 NRST 管脚特性


表 7-21 NRST 电气特性(1)


<table><tr><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td><eq>V_{INL(NRST)}</eq></td><td>NRST 输入低电平</td><td>-</td><td>-</td><td>-</td><td>0.3<eq>V_{DD}</eq></td><td rowspan="2">V</td></tr><tr><td><eq>V_{INH(NRST)}</eq></td><td>NRST 输入高电平</td><td>-</td><td>0.6<eq>V_{DD}</eq></td><td>-</td><td>-</td></tr><tr><td><eq>V_{hys(NRST)}</eq></td><td>NRST 施密特迟滞电压</td><td>-</td><td>-</td><td>200</td><td>-</td><td>mV</td></tr><tr><td><eq>R_{pu(NRST)}</eq></td><td>弱上拉等效电阻</td><td><eq>V_{IN} = V_{SS}</eq></td><td>40</td><td>50</td><td>55</td><td>kΩ</td></tr><tr><td><eq>V_{F(NRST)}</eq></td><td>NRST 输入滤波脉冲</td><td>-</td><td>-</td><td>-</td><td>60</td><td>ns</td></tr><tr><td><eq>V_{NF(NRST)}</eq></td><td>NRST 输入不会滤掉的脉冲</td><td>1.8V≤<eq>V_{DD}</eq>≤3.6V</td><td>500</td><td>-</td><td>-</td><td>ns</td></tr></table>


注1：设计保证。 


# 7.5.5 外部中断特性


表 7-22 外部中断电气特性(1)


<table><tr><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td>PLEC</td><td>触发事件的脉冲宽度</td><td>-</td><td>50</td><td>-</td><td>-</td><td>ns</td></tr></table>


注1：设计保证。 


# 7.6 外设

# 7.6.1 ADC 12BIT 特性


表 7-23 ADC 电气特性(1)


<table><tr><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td><eq>V_{DDA}</eq></td><td>模拟电压</td><td>-</td><td>2.4</td><td>-</td><td>3.6</td><td>V</td></tr><tr><td rowspan="2"><eq>V_{REF+}</eq></td><td rowspan="2">正电压参考</td><td><eq>V_{DDA} \geq 2V</eq></td><td>2</td><td>-</td><td><eq>V_{DDA}</eq></td><td rowspan="3">V</td></tr><tr><td><eq>V_{DDA} &lt; 2V</eq></td><td colspan="3"><eq>V_{DDA}</eq></td></tr><tr><td><eq>V_{REF-}</eq></td><td>负电压参考</td><td>-</td><td colspan="3"><eq>V_{SSA}</eq></td></tr><tr><td><eq>f_{ADC}</eq></td><td>ADC时钟频率</td><td>-</td><td>32k</td><td>-</td><td>16M</td><td>Hz</td></tr><tr><td><eq>f_S</eq></td><td>采样速率</td><td>12 bits</td><td>-</td><td>-</td><td>1</td><td>Msps</td></tr><tr><td><eq>A_{Vin}</eq></td><td>转换电压范围</td><td>-</td><td>0</td><td>-</td><td><eq>V_{REF+}</eq></td><td>V</td></tr><tr><td><eq>R_{IN}</eq></td><td>外部允许最大输入串联阻抗</td><td>-</td><td>-</td><td>-</td><td>50</td><td>kΩ</td></tr><tr><td><eq>R_{ADC}</eq></td><td>采样开关的电阻</td><td>-</td><td>-</td><td>2</td><td>4</td><td>kΩ</td></tr><tr><td><eq>C_{ADC}</eq></td><td>内部采样和保持电容</td><td>-</td><td>-</td><td>9.6</td><td>-</td><td>pF</td></tr><tr><td><eq>t_{su}</eq></td><td>上电时间</td><td>-</td><td colspan="3">100</td><td>us</td></tr><tr><td rowspan="2"><eq>t_S</eq></td><td rowspan="2">采样时间</td><td><eq>f_{ADC}=16M</eq></td><td>0.156</td><td>-</td><td>-</td><td>us</td></tr><tr><td>-</td><td>-</td><td>2.5</td><td>-</td><td><eq>1/f_{ADC}</eq></td></tr><tr><td rowspan="2"><eq>t_{conv}</eq></td><td rowspan="2">整个转换时间(包含采样时间)</td><td><eq>f_{ADC}=16M</eq></td><td>-</td><td>1</td><td>-</td><td>us</td></tr><tr><td>12 bits</td><td colspan="3">Ts+12.5 cycles</td><td><eq>1/f_{ADC}</eq></td></tr><tr><td><eq>I_{DD(ADC)}</eq></td><td>ADC功耗</td><td>fs=1Msps</td><td>-</td><td>400</td><td>600</td><td>μA</td></tr><tr><td>Oe</td><td>失调误差</td><td rowspan="4"><eq>f_{ADC}=16M, R_{IN}=500\Omega</eq><eq>2.4V±4-</td><td>-</td><td>±4</td><td>-</td><td rowspan="5">LSB</td></tr><tr><td>Ge</td><td>增益误差</td><td>-</td><td>±4</td><td>-</td></tr><tr><td>DNL</td><td>微分非线性</td><td>-</td><td>-</td><td>±4</td></tr><tr><td>INL</td><td>积分非线性</td><td>-</td><td>-</td><td>±4</td></tr><tr><td>ET</td><td>全范围误差</td><td>\(f_{ADC}=16M, R_{IN}=500\Omega</eq><eq>V_{DDA}=3.3V</eq><eq>V_{REF+}=V_{DDA}, T_A=25°C</eq></td><td>-</td><td>4</td><td>6</td></tr><tr><td>ENOB</td><td>有效位数</td><td>-</td><td>10</td><td>10.5</td><td>-</td><td>Bits</td></tr><tr><td>SINAD</td><td>信号对噪声和失真的抑制比</td><td rowspan="3">-</td><td>64.4</td><td>64.5</td><td>-</td><td rowspan="3">dB</td></tr><tr><td>SNR</td><td>信噪比</td><td>65</td><td>66</td><td>-</td></tr><tr><td>THD</td><td>谐波失真</td><td>73</td><td>74</td><td>-</td></tr></table>


注1：ADC 测试数据为软件平均后的结果。 


# 7.6.2 DAC 12 BIT 转换特性


表 7-24 DAC 特性(1)


<table><tr><td>符号</td><td>参数</td><td colspan="2">条件</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td><eq>V_{DD}</eq></td><td>电源电压</td><td colspan="2">DAC输出buffer关闭</td><td>2.4</td><td>-</td><td>3.6</td><td>V</td></tr><tr><td><eq>V_{REF+}</eq></td><td>外部参考电压</td><td colspan="2">DAC输出buffer关闭</td><td>2</td><td>-</td><td><eq>V_{DDA}</eq></td><td>V</td></tr><tr><td><eq>V_{REF-}</eq></td><td>负参考电压</td><td colspan="2">-</td><td colspan="3"><eq>V_{SSA}</eq></td><td></td></tr><tr><td rowspan="2"><eq>R_L</eq></td><td rowspan="2">负载电阻</td><td rowspan="2">DAC输出buffer开启</td><td>Connected to <eq>V_{SSA}</eq></td><td>5</td><td>-</td><td>-</td><td rowspan="2">kΩ</td></tr><tr><td>Connected to <eq>V_{DDA}</eq></td><td>25</td><td>-</td><td>-</td></tr><tr><td><eq>R_O</eq></td><td>输出阻抗</td><td colspan="2">DAC输出buffer关闭</td><td>-</td><td>16</td><td>-</td><td>kΩ</td></tr><tr><td rowspan="2"><eq>R_{BON}</eq></td><td rowspan="2">输出buffer开启时的输出阻抗</td><td colspan="2"><eq>V_{DD}=2.7V</eq></td><td>-</td><td>5</td><td>-</td><td rowspan="2">kΩ</td></tr><tr><td colspan="2"><eq>V_{DD}=2.0V</eq></td><td>-</td><td>10</td><td>-</td></tr><tr><td><eq>C_L</eq></td><td>负载电容</td><td colspan="2">DAC输出buffer开启</td><td>-</td><td>-</td><td>100</td><td>pF</td></tr><tr><td rowspan="2"><eq>V_{DAC\_OUT}</eq></td><td rowspan="2">DAC的输出电压</td><td colspan="2">DAC输出buffer开启</td><td>0.2</td><td>-</td><td><eq>V_{REF+}-0.2</eq></td><td rowspan="2">V</td></tr><tr><td colspan="2">DAC输出buffer关闭</td><td>0</td><td>-</td><td><eq>V_{REF+}</eq></td></tr><tr><td rowspan="6"><eq>t_{SETTLING}</eq></td><td rowspan="6">建立时间(从最低码转换到最高码时,输出稳定在最终值的±0.5LSB,±1LSB,±2LSB,±4LSB,±8LSB)</td><td rowspan="5">DAC输出buffer开启<eq>C_L≤50pF</eq>,<eq>R_L≥5kΩ</eq></td><td>±0.5LSB</td><td>-</td><td>2</td><td>4</td><td rowspan="6">us</td></tr><tr><td>±1LSB</td><td>-</td><td>1.8</td><td>3.5</td></tr><tr><td>±2LSB</td><td>-</td><td>1.6</td><td>3</td></tr><tr><td>±4LSB</td><td>-</td><td>1.5</td><td>2.9</td></tr><tr><td>±8LSB</td><td>-</td><td>1.5</td><td>2.8</td></tr><tr><td colspan="2">DAC输出buffer关闭,±1LSB,<eq>C_L=10pF</eq></td><td>-</td><td></td><td>100</td></tr><tr><td>PSRR</td><td>VDDA电源抑制比</td><td colspan="2">DAC输出buffer开启;<eq>C_L≤50pF</eq>,<eq>R_L=5kΩ</eq></td><td>-</td><td></td><td>-25</td><td>dB</td></tr><tr><td><eq>T_{W\_to\_W}</eq></td><td>两个相邻转换码的时间(1LSB)</td><td colspan="2"><eq>C_L≤50pF</eq>,<eq>R_L≥5kΩ</eq></td><td>2</td><td>-</td><td>-</td><td>us</td></tr><tr><td rowspan="3"><eq>I_{DDA(DAC)}</eq></td><td rowspan="3">DAC从VDDA消耗的功耗</td><td>DAC输出buffer开启</td><td>无负载,中间码</td><td>-</td><td>400</td><td>-</td><td rowspan="3">μA</td></tr><tr><td>DAC输出buffer开启</td><td>无负载,最差码</td><td>-</td><td>500</td><td>-</td></tr><tr><td>DAC输出buffer关闭</td><td>无负载,中间码</td><td>-</td><td>206</td><td>-</td></tr><tr><td rowspan="3"><eq>I_{DDV(DAC)}</eq></td><td rowspan="3">DAC从VREF+消耗的电流</td><td rowspan="2">DAC输出buffer开启</td><td>无负载,中间码</td><td>-</td><td>400</td><td>-</td><td rowspan="3">μA</td></tr><tr><td>无负载,最差码</td><td>-</td><td>500</td><td>-</td></tr><tr><td>DAC输出buffer关闭</td><td>无负载,中间码</td><td>-</td><td>206</td><td>-</td></tr></table>


注1：设计保证。 



表 7-25 DAC 精度(1)


<table><tr><td>符号</td><td>参数</td><td colspan="2">条件</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td rowspan="2">DNL</td><td rowspan="2">微分非线性</td><td colspan="2">DAC 输出 buffer 开启</td><td>-</td><td>-</td><td>±2</td><td rowspan="9">LSB</td></tr><tr><td colspan="2">DAC 输出 buffer 关闭</td><td>-</td><td>-</td><td>±2</td></tr><tr><td>-</td><td>单调性</td><td colspan="2">10bits</td><td colspan="3">设计保证</td></tr><tr><td rowspan="2">INL</td><td rowspan="2">积分非线性</td><td colspan="2">DAC 输出 buffer 开启 CL≤50pF, RL≥8kΩ</td><td>-</td><td>-</td><td>±5</td></tr><tr><td colspan="2">DAC 输出 buffer 关闭 CL≤50pF, 无 RL</td><td>-</td><td>-</td><td>±5</td></tr><tr><td rowspan="3">Offset</td><td rowspan="3">在中间码的失调误差</td><td rowspan="2">DAC 输出 buffer 开启 CL≤50pF, RL≥8kΩ</td><td>VREF+=3.6V</td><td>-</td><td>-</td><td>±11</td></tr><tr><td>VREF+=1.8V</td><td>-</td><td>-</td><td>±21</td></tr><tr><td colspan="2">DAC 输出 buffer 关闭 CL≤50pF, 无 RL</td><td>-</td><td>-</td><td>±9</td></tr><tr><td>Offset1</td><td>在code0的失调误差</td><td colspan="2">DAC 输出 buffer 关闭 CL≤50pF, 无 RL</td><td>-</td><td>-</td><td>±4</td></tr><tr><td rowspan="2">Gain</td><td rowspan="2">增益误差</td><td colspan="2">DAC 输出 buffer 开启 CL≤50pF, RL≥8kΩ</td><td>-</td><td>-</td><td>±0.6</td><td rowspan="2">%</td></tr><tr><td colspan="2">DAC 输出 buffer 关闭 CL≤50pF, 无 RL</td><td>-</td><td>-</td><td>±0.7</td></tr><tr><td rowspan="2">TUE</td><td rowspan="2">全范围误差</td><td colspan="2">DAC 输出 buffer 开启 CL≤50pF, RL≥8kΩ</td><td>-</td><td>-</td><td>±20</td><td rowspan="2">LSB</td></tr><tr><td colspan="2">DAC 输出 buffer 关闭 CL≤50pF, 无 RL</td><td>-</td><td>-</td><td>±10</td></tr><tr><td rowspan="2">SNR</td><td rowspan="2">信噪比</td><td colspan="2">DAC 输出 buffer 开启 CL≤50pF, RL≥8kΩ, 1kHz, BW 500kHz</td><td>-</td><td>69</td><td>-</td><td rowspan="2">dB</td></tr><tr><td colspan="2">DAC 输出 buffer 关闭 CL≤50pF, 无 RL, 1kHz, BW 500kHz</td><td>-</td><td>70</td><td>-</td></tr><tr><td rowspan="2">THD</td><td rowspan="2">谐波失真</td><td colspan="2">输出 buffer 开启 CL≤50pF, RL≥8kΩ, 1kHz</td><td>-</td><td>-76</td><td>-</td><td rowspan="2">dB</td></tr><tr><td colspan="2">输出 buffer 关闭 CL≤50pF, 无 RL, 1kHz</td><td>-</td><td>-77</td><td>-</td></tr><tr><td rowspan="2">SINA D</td><td rowspan="2">信号与噪声和失真比例</td><td colspan="2">输出 buffer 开启 CL≤50pF, RL≥8kΩ, 1kHz</td><td>-</td><td>70</td><td>-</td><td rowspan="2">dB</td></tr><tr><td colspan="2">输出 buffer 关闭 CL≤50pF, 无 RL, 1kHz</td><td>-</td><td>70.4</td><td>-</td></tr><tr><td rowspan="2">ENOB</td><td rowspan="2">有效位数</td><td colspan="2">输出 buffer 开启 CL≤50pF, RL≥8kΩ, 1kHz</td><td>-</td><td>11.2</td><td>-</td><td rowspan="2">Bits</td></tr><tr><td colspan="2">输出 buffer 关闭 CL≤50pF, 无 RL, 1kHz</td><td>-</td><td>11.3</td><td>-</td></tr></table>


注1：设计保证。 


# 7.6.3 电压参考 VREFREG 特性


表 7-26 VREFREG 特性(1)


<table><tr><td>符号</td><td>参数</td><td colspan="2">条件</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td rowspan="2"><eq>V_{DDA}</eq></td><td rowspan="2">供电电源</td><td>常规模式</td><td>电压输出2V</td><td>2.4</td><td>-</td><td>3.6</td><td rowspan="4">V</td></tr><tr><td>退化应用</td><td>电压输出2V</td><td>1.65</td><td>-</td><td>2.4</td></tr><tr><td rowspan="2"><eq>V_{REFVREG\_OUT}</eq></td><td rowspan="2">输出参考电压</td><td>常规模式</td><td>电压输出2V</td><td>1.95</td><td>2.0</td><td>2.05</td></tr><tr><td>退化应用</td><td>电压输出2V</td><td><eq>V_{DDA}-150mV</eq></td><td>-</td><td><eq>V_{DDA}</eq></td></tr><tr><td><eq>C_{L(VREFREG)}</eq></td><td>电容负载</td><td colspan="2">-</td><td>-</td><td>-</td><td>2.2</td><td>uF</td></tr><tr><td><eq>I_{load(VREFREG)}</eq></td><td>静态负载电流</td><td colspan="2">-</td><td>-</td><td>-</td><td>4</td><td>mA</td></tr><tr><td rowspan="2"><eq>I_{line_reg(VREFREG)}</eq></td><td rowspan="2">电源调整率</td><td rowspan="2">2.8V≤<eq>V_{DDA}</eq>≤3.6V</td><td><eq>I_{load}=500uA</eq></td><td>-</td><td>200</td><td>1000</td><td rowspan="2">ppm/V</td></tr><tr><td><eq>I_{load}=4mA</eq></td><td>-</td><td>100</td><td>500</td></tr><tr><td><eq>I_{load_reg(VREFREG)}</eq></td><td>负载调整率</td><td>500uA≤<eq>V_{DD}</eq>A≤4mA</td><td>正常模式</td><td>-</td><td>50</td><td>500</td><td>ppm/mA</td></tr><tr><td rowspan="2"><eq>T_{Coeff(VREFREG)}</eq></td><td rowspan="2">温漂</td><td colspan="2">-40°C≤Tj≤+105°C</td><td>-</td><td>-</td><td>200</td><td rowspan="2">ppm/°C</td></tr><tr><td colspan="2">0°C≤Tj≤+50°C</td><td>-</td><td>-</td><td>120</td></tr><tr><td rowspan="2"><eq>PSRR_{(VREFREG)}</eq></td><td rowspan="2">电源抑制比</td><td colspan="2">DC</td><td>30</td><td>55</td><td>-</td><td rowspan="2">dB</td></tr><tr><td colspan="2">100kHz</td><td>15</td><td>29</td><td>-</td></tr><tr><td><eq>t_{su(VREFREG)}</eq></td><td>开启时间</td><td colspan="2">-</td><td>-</td><td>50</td><td>-</td><td>us</td></tr><tr><td><eq>I_{INRUSH}</eq></td><td>开启VREFREG的最大驱动电流</td><td colspan="2">-</td><td>-</td><td>9</td><td>-</td><td>mA</td></tr><tr><td rowspan="3"><eq>I_{DD(VREFREG)}</eq></td><td rowspan="3">VREFREG的电流消耗</td><td colspan="2"><eq>I_{load}=0uA</eq></td><td>-</td><td>13.3</td><td>16</td><td rowspan="3">μA</td></tr><tr><td colspan="2"><eq>I_{load}=500uA</eq></td><td>-</td><td>15</td><td>19</td></tr><tr><td colspan="2"><eq>I_{load}=4mA</eq></td><td>-</td><td>26</td><td>30</td></tr></table>


注1：设计保证。 


# 7.6.4 比较器特性


表 7-27 比较器电气特性(1)


<table><tr><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td><eq>V_{DDA(CMP)}</eq></td><td>供电电源</td><td>-</td><td>2.4</td><td>-</td><td>3.6</td><td rowspan="2">V</td></tr><tr><td><eq>V_{IN(CMP)}</eq></td><td>比较器输入范围</td><td>-</td><td>0</td><td>-</td><td><eq>V_{DDA} - 1</eq></td></tr><tr><td><eq>V_{offset(CMP)}</eq></td><td>失调电压</td><td>-</td><td>-10</td><td>-</td><td>10</td><td>mV</td></tr><tr><td rowspan="4"><eq>V_{hys(CMP)}</eq></td><td rowspan="4">比较器迟滞电压</td><td>无迟滞</td><td>-</td><td>0</td><td>-</td><td rowspan="4">mV</td></tr><tr><td>低迟滞</td><td>-</td><td>5.78</td><td>-</td></tr><tr><td>中等迟滞</td><td>-</td><td>10.86</td><td>-</td></tr><tr><td>高迟滞</td><td>-</td><td>15.5</td><td>-</td></tr><tr><td><eq>I_{DD(CMP)}</eq></td><td>比较器电流消耗</td><td>-</td><td>-</td><td>16.29</td><td>-</td><td>μA</td></tr><tr><td><eq>t_{delay(CMP)}</eq></td><td>输出延迟</td><td><eq>V_{DD} = 3.3V, 200mV</eq>的台阶, 100mV 的过冲</td><td>-</td><td>65</td><td>-</td><td>ns</td></tr></table>


注1：设计保证。 


# 7.6.5 运算放大器


表 7-28 运算放大器电气特性(1)


<table><tr><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td>AV</td><td>增益</td><td>允许工作温度范围内</td><td>65</td><td>90</td><td>130</td><td>dB</td></tr><tr><td>CMRR</td><td>共模抑制比</td><td>-</td><td>61.96</td><td>80</td><td>120</td><td>dB</td></tr><tr><td>Slew rate</td><td>-</td><td><eq>V_{DD} = 3.3V</eq>, gain = 10</td><td>10.8</td><td>12</td><td>-</td><td>V/us</td></tr><tr><td>CM</td><td>共模范围</td><td>允许工作温度范围内</td><td>0</td><td>-</td><td><eq>V_{DDA}-0.8</eq></td><td>V</td></tr><tr><td>offset</td><td>失调电压</td><td>-</td><td>-7</td><td>-</td><td>+7</td><td>mV</td></tr><tr><td><eq>I_{DD}</eq></td><td>电流消耗</td><td>-</td><td>183</td><td>195</td><td>205</td><td>μA</td></tr><tr><td>PSRR</td><td>电源抑制比</td><td>允许工作温度范围内Gain = 10</td><td>65.8</td><td>80.5</td><td>87.9</td><td>dB</td></tr><tr><td>GBW</td><td>单位增益带宽</td><td>允许工作温度范围内</td><td>10.12</td><td>23.2</td><td>32.86</td><td>MHz</td></tr></table>


注1：设计保证。 


# 7.6.6 USB 全低速收发器模块电气特性


表 7-34 USB DC 电气特性


<table><tr><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td><eq>V_{DD(USB)}</eq></td><td>USB 全速/低速 收发器运行电压</td><td>-40°C~85°C</td><td>3.0</td><td>-</td><td>3.6</td><td>V</td></tr><tr><td><eq>V_{DI}</eq></td><td>差分输入电压灵敏度</td><td>整个 VCM 范围</td><td>0.2</td><td>-</td><td>-</td><td>V</td></tr><tr><td><eq>V_{CM}</eq></td><td>差分输入共模范围</td><td>包含 VDI 的范围</td><td>0.8</td><td>-</td><td>2.5</td><td>V</td></tr><tr><td><eq>V_{SE}</eq></td><td>单边接收器输入阈值</td><td>-</td><td>0.8</td><td>-</td><td>2.0</td><td>V</td></tr><tr><td><eq>V_{OL(USB)}</eq></td><td>静态输出低电平</td><td>1.5kΩ 上拉到 3.3V</td><td>-</td><td>-</td><td>0.3</td><td>V</td></tr><tr><td><eq>V_{OH(USB)}</eq></td><td>静态输出高电平</td><td>下拉 15kΩ 到 <eq>V_{SS}</eq></td><td>2.8</td><td>-</td><td>3.6</td><td>V</td></tr><tr><td><eq>R_{PD(USB)}</eq></td><td>USB_D+/D-下拉电阻</td><td>-</td><td>-</td><td>-</td><td>-</td><td>kΩ</td></tr><tr><td rowspan="4"><eq>R_{PU(USB)}</eq></td><td>全速 USB_D+上拉电阻</td><td><eq>V_{IN} = V_{SS}</eq>, IDLE 态</td><td>1.9</td><td>2.34</td><td>2.8</td><td>kΩ</td></tr><tr><td>全速 USB_D+上拉电阻</td><td><eq>V_{IN} = V_{SS}</eq>, 接收期间</td><td>2.5</td><td>3.12</td><td>3.7</td><td>kΩ</td></tr><tr><td>低速 USB_D-上拉电阻</td><td><eq>V_{IN} = V_{SS}</eq>, IDLE 态</td><td>1.9</td><td>2.34</td><td>2.8</td><td>kΩ</td></tr><tr><td>低速 USB_D-上拉电阻</td><td><eq>V_{IN} = V_{SS}</eq>, 接收期间</td><td>2.5</td><td>3.12</td><td>3.7</td><td>kΩ</td></tr></table>


表 7-35 USB 驱动电气特性(1)


<table><tr><td>符号</td><td>参数</td><td>条件</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td><eq>t_{r(LS)}</eq></td><td>低速下的上升时间</td><td><eq>C_L = 200pF \sim 600pF</eq></td><td>75</td><td>-</td><td>300</td><td>ns</td></tr><tr><td><eq>t_{f(LS)}</eq></td><td>低速下的下降时间</td><td><eq>C_L = 200pF \sim 600pF</eq></td><td>75</td><td>-</td><td>300</td><td>ns</td></tr><tr><td><eq>t_{rf(mLS)}</eq></td><td>低速下上升/下降时间的匹配</td><td><eq>t_{r}/t_f</eq></td><td>80</td><td>-</td><td>125</td><td>%</td></tr><tr><td><eq>t_{r(FS)}</eq></td><td>全速下的上升时间</td><td><eq>C_L = 50pF</eq></td><td>4</td><td>-</td><td>20</td><td>ns</td></tr><tr><td><eq>t_{f(FS)}</eq></td><td>全速下的下降时间</td><td><eq>C_L = 50pF</eq></td><td>4</td><td>-</td><td>20</td><td>ns</td></tr><tr><td><eq>t_{rf(mFS)}</eq></td><td>全速下上升/下降时间的匹配</td><td><eq>t_{r}/t_f</eq></td><td>90</td><td>-</td><td>110</td><td>%</td></tr><tr><td><eq>V_{CRS}</eq></td><td>输出信号的电压交叉点</td><td>-</td><td>1.3</td><td>-</td><td>2.0</td><td>V</td></tr><tr><td><eq>Z_{DRV}</eq></td><td>输入驱动阻抗</td><td>驱动高或低</td><td>28</td><td>-</td><td>44</td><td>Ω</td></tr></table>


注1：设计保证。 


# 7.7 功耗特性

# 7.7.1 程序运行在 FLASH 时的静态功耗特性


表 7-29 程序运行在FLASH 时的静态功耗特性


<table><tr><td>运行模式</td><td>程序方式</td><td>时钟源</td><td>外设工作条件</td><td>MR</td><td>温度</td><td>SCLK频率</td><td>典型值</td><td>单位</td></tr><tr><td rowspan="7">RUN</td><td>程序在FLASH运行,开预取,FLASH_CFG=0XC2</td><td rowspan="4">PLL</td><td rowspan="7">所有外设禁止,<eq>V_{DD}=3.3V</eq></td><td rowspan="7">1.32V</td><td rowspan="7">25°C</td><td>72MHz</td><td>3870</td><td rowspan="7">μA</td></tr><tr><td>程序在FLASH运行,开预取,FLASH_CFG=0XC2</td><td>64MHz</td><td>3520</td></tr><tr><td>程序在FLASH运行,开预取,FLASH_CFG=0XC1</td><td>48MHz</td><td>2930</td></tr><tr><td>程序在FLASH运行,开预取,FLASH_CFG=0XC0</td><td>32MHz</td><td>2550</td></tr><tr><td rowspan="2">程序在FLASH运行,开预取,FLASH_CFG=0XC0</td><td rowspan="2">INTHF</td><td>16MHz</td><td>1280</td></tr><tr><td>4MHz</td><td>580</td></tr><tr><td>程序在FLASH运行,开预取,FLASH_CFG=0XC0</td><td>INTLF</td><td>32KHz</td><td>275</td></tr></table>

# 7.7.2 程序运行在 SRAM时的静态功耗特性


表 7-30 程序运行在SRAM时的静态功耗特性


<table><tr><td>运行模式</td><td>运行方式</td><td>外设工作条件</td><td>VDD</td><td>MR</td><td>温度</td><td>SCLK频率</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td rowspan="6">RUN</td><td rowspan="6">程序在SRAM中运行</td><td rowspan="6">所有外设禁止,不关闭FLASH</td><td rowspan="6">3.3V</td><td rowspan="6">1.32V</td><td rowspan="6">25°C</td><td>72MHz</td><td>-</td><td>3560</td><td>-</td><td rowspan="6">μA</td></tr><tr><td>64MHz</td><td>-</td><td>3230</td><td>-</td></tr><tr><td>48MHz</td><td>-</td><td>2670</td><td>-</td></tr><tr><td>32MHz</td><td>-</td><td>1960</td><td>-</td></tr><tr><td>16MHz</td><td>-</td><td>980</td><td>-</td></tr><tr><td>32KHz</td><td>-</td><td>280</td><td>-</td></tr></table>

# 7.7.3 休眠功耗特性


表 7-31 休眠功耗特性


<table><tr><td>运行模式</td><td>运行方式</td><td>外设工作条件</td><td>MR</td><td>时钟源</td><td>SCLK频率</td><td>温度</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td rowspan="8">休眠</td><td rowspan="8">SLEEP</td><td rowspan="4">所有外设禁止,<eq>V_{DD} = 3.3V</eq></td><td rowspan="4">1.32V</td><td rowspan="4">INTHF</td><td rowspan="4">16MHz</td><td>-40°C</td><td>-</td><td>720</td><td>-</td><td rowspan="8">μA</td></tr><tr><td>25°C</td><td>-</td><td>757</td><td>-</td></tr><tr><td>85°C</td><td>-</td><td>882</td><td>-</td></tr><tr><td>125°C</td><td>-</td><td>1281</td><td>-</td></tr><tr><td rowspan="4">所有外设禁止,<eq>V_{DD} = 3.3V</eq></td><td rowspan="4">1.2V</td><td rowspan="4">INTHF</td><td rowspan="4">16MHz</td><td>-40°C</td><td>-</td><td>658</td><td>-</td></tr><tr><td>25°C</td><td>-</td><td>688</td><td>-</td></tr><tr><td>85°C</td><td>-</td><td>795</td><td>-</td></tr><tr><td>125°C</td><td>-</td><td>1154</td><td>-</td></tr></table>

# 7.7.4 低功耗模式特性


表 7-32 低功耗模式特性


<table><tr><td>功耗模式</td><td>工作模块</td><td>VDD</td><td>PMCTL0</td><td>MR/LPR</td><td>VDD18</td><td>最小值</td><td>典型值</td><td>最大值</td><td>单位</td></tr><tr><td>Stop1</td><td>无</td><td>3.3V</td><td>0100 0802</td><td>LPR</td><td>关断</td><td>-</td><td>2.4</td><td>4.9</td><td rowspan="3">μA</td></tr><tr><td>Stop1</td><td>LPRAM</td><td>3.3V</td><td>0108 0802</td><td>LPR</td><td>关断</td><td>-</td><td>3.6</td><td>6.8</td></tr><tr><td>Stop0</td><td>无</td><td>3.3V</td><td>0100 0801</td><td>LPR</td><td>关断</td><td>-</td><td>26</td><td>40</td></tr></table>

# 8 封装信息

# 8.1 LQFP48 封装

![](images/529e73e5e734771afa42fadbfe564cef3996bc86048233b8a4b366664322e99d.jpg)


<table><tr><td rowspan="2">SYMBOL</td><td colspan="3">MILLIMETER</td></tr><tr><td>MIN</td><td>NOM</td><td>MAX</td></tr><tr><td>A</td><td>—</td><td>—</td><td>1.6</td></tr><tr><td>A1</td><td>0.05</td><td>—</td><td>0.15</td></tr><tr><td>A2</td><td>1.35</td><td>1.4</td><td>1.45</td></tr><tr><td>A3</td><td>0.59</td><td>0.64</td><td>0.69</td></tr><tr><td>b</td><td>0.18</td><td>—</td><td>0.26</td></tr><tr><td>b1</td><td>0.17</td><td>0.2</td><td>0.23</td></tr><tr><td>c</td><td>0.13</td><td>—</td><td>0.17</td></tr><tr><td>c1</td><td>0.12</td><td>0.13</td><td>0.14</td></tr><tr><td>D</td><td>8.8</td><td>9</td><td>9.2</td></tr><tr><td>D1</td><td>6.9</td><td>7</td><td>7.1</td></tr><tr><td>E</td><td>8.8</td><td>9</td><td>9.2</td></tr><tr><td>E1</td><td>6.9</td><td>7</td><td>7.1</td></tr><tr><td>eB</td><td>8.1</td><td>—</td><td>8.25</td></tr><tr><td>e</td><td colspan="3">0.50BSC</td></tr><tr><td>L</td><td>0.4</td><td>—</td><td>0.65</td></tr><tr><td>L1</td><td colspan="3">1.00REF</td></tr><tr><td><eq>\theta</eq></td><td>0</td><td>—</td><td>7</td></tr></table>

# 8.2 LQFP64 封装

![](images/3d42054e6383759698fc617349ed0d967e61aa9145b776c0ffdb2f1e7dfed339.jpg)


<table><tr><td rowspan="2">SYMBOL</td><td colspan="3">MILLIMETER</td></tr><tr><td>MIN</td><td>NOM</td><td>MAX</td></tr><tr><td>A</td><td>—</td><td>—</td><td>1.6</td></tr><tr><td>A1</td><td>0.05</td><td>—</td><td>0.25</td></tr><tr><td>A2</td><td>1.35</td><td>1.4</td><td>1.45</td></tr><tr><td>A3</td><td>0.59</td><td>0.64</td><td>0.69</td></tr><tr><td>b</td><td>0.16</td><td>—</td><td>0.24</td></tr><tr><td>b1</td><td>0.15</td><td>0.2</td><td>0.21</td></tr><tr><td>c</td><td>0.13</td><td>—</td><td>0.17</td></tr><tr><td>c1</td><td>0.12</td><td>0.13</td><td>0.14</td></tr><tr><td>D</td><td>8.8</td><td>9</td><td>9.2</td></tr><tr><td>D1</td><td>6.9</td><td>7</td><td>7.1</td></tr><tr><td>E</td><td>8.8</td><td>9</td><td>9.2</td></tr><tr><td>E1</td><td>6.9</td><td>7</td><td>7.1</td></tr><tr><td>eB</td><td>8.1</td><td>—</td><td>8.25</td></tr><tr><td>e</td><td colspan="3">0.40BSC</td></tr><tr><td>L</td><td>0.4</td><td>—</td><td>0.65</td></tr><tr><td>L1</td><td colspan="3">1.00REF</td></tr><tr><td>θ</td><td>0</td><td>—</td><td>7</td></tr></table>

# 8.3 LQFP100 封装

![](images/200867ee9e8b4bda6e1374fa73c744b2f1acf32b98ea1312da50cfa635aa05ec.jpg)


![](images/27d35cc6307975732d9437abf0dc5c7d4793a05d900c91dc0f048a03e1146500.jpg)


![](images/b48e86831d83d153b281206689b6a33724c8ba64c20c42c8c2c839689f521368.jpg)



SECTION B-B


![](images/50ff1bf6ebb98c17d574e5e1d1734ca10d22b9157ba6d2299ef6d661668d4c36.jpg)


<table><tr><td rowspan="2">SYMBOL</td><td colspan="3">MILLIMETER</td></tr><tr><td>MIN</td><td>NOM</td><td>MAX</td></tr><tr><td>A</td><td>—</td><td>—</td><td>1.6</td></tr><tr><td>A1</td><td>0.05</td><td>—</td><td>0.15</td></tr><tr><td>A2</td><td>1.35</td><td>1.4</td><td>1.45</td></tr><tr><td>A3</td><td>0.59</td><td>0.64</td><td>0.69</td></tr><tr><td>b</td><td>0.18</td><td>—</td><td>0.26</td></tr><tr><td>b1</td><td>0.17</td><td>0.2</td><td>0.23</td></tr><tr><td>c</td><td>0.13</td><td>—</td><td>0.17</td></tr><tr><td>c1</td><td>0.12</td><td>0.13</td><td>0.14</td></tr><tr><td>D</td><td>15.8</td><td>16</td><td>16.2</td></tr><tr><td>D1</td><td>13.9</td><td>14</td><td>14.1</td></tr><tr><td>E</td><td>15.8</td><td>16</td><td>16.2</td></tr><tr><td>E1</td><td>13.9</td><td>14</td><td>14.1</td></tr><tr><td>eB</td><td>15.05</td><td>—</td><td>15.35</td></tr><tr><td>e</td><td colspan="3">0.50BSC</td></tr><tr><td>L</td><td>0.45</td><td>—</td><td>0.75</td></tr><tr><td>L1</td><td colspan="3">1.00REF</td></tr><tr><td>θ</td><td>0</td><td>—</td><td>7</td></tr></table>

# 9 KF32 产品标识体系

![](images/84898b376f8f6c3d8b92e13191c636d6b6b131d362b36abd3eafc4920d952b9b.jpg)


工作温度范围 

默认（无标识）=-40～85℃ 

T=-40～105℃ 

# 10 RoHS 认证

本产品已通过RoHS检测。 

# 11 声明及销售网络

销售及服务网点 

上海 TEL：021-50275927 

地址：上海浦东龙东大道 3000 号张江集电港 1 幢 906 号 B 座 


12 版本更新记录


<table><tr><td>版本号</td><td>更新说明</td><td>页码</td><td>更新日期</td></tr><tr><td>V1.2</td><td>更新页眉及部分文字格式</td><td>-</td><td>2020-02-21</td></tr><tr><td>V1.3</td><td>更新产品订购信息和外设资源对照表</td><td>6/8</td><td>2020-03-31</td></tr><tr><td>V1.4</td><td>修改唤醒引脚下标</td><td>-</td><td>2020-04-07</td></tr><tr><td>V2.0</td><td>更新第三章映射部分</td><td>-</td><td>2020-05-05</td></tr><tr><td rowspan="3">V2.1</td><td>添加第三/四章节</td><td>-</td><td rowspan="3">2020-06-15</td></tr><tr><td>添加2.3在线编程小节</td><td>-</td></tr><tr><td>添加5.6CCP引脚资源小节</td><td>-</td></tr><tr><td>V2.2</td><td>添加7.7小节</td><td>-</td><td>2020-07-03</td></tr><tr><td>V2.3</td><td>添加2.7小节电源引脚说明</td><td>-</td><td>2020-08-10</td></tr><tr><td>V2.4</td><td>更新在线编程和调试章节,增加DPI模式说明</td><td>-</td><td>2020-08-27</td></tr><tr><td>V2.5</td><td>更新芯片引脚图目录以及调整部分文字格式</td><td>-</td><td>2020-10-23</td></tr><tr><td>V2.6</td><td>更新LQFP100脚芯片引脚图,V12更新为VREG</td><td>-</td><td>2020-11-09</td></tr><tr><td>V2.7</td><td>更新第1章封装资源表以及添加第9章产品标识体系</td><td>-</td><td>2021-01-11</td></tr><tr><td>V2.8</td><td>调整第7章格式</td><td>-</td><td>2021-01-18</td></tr><tr><td>V2.9</td><td>开放KF32F330IQT的2个DAC</td><td>-</td><td>2021-01-23</td></tr><tr><td>V2.10</td><td>更新数字映射AF11列CxOUT下标</td><td>-</td><td>2021-02-07</td></tr><tr><td>V2.11</td><td>更新电气特性章节</td><td>-</td><td>2021-03-10</td></tr><tr><td rowspan="3">V3.0</td><td>更新功耗运行模式</td><td>-</td><td rowspan="3">2021-04-30</td></tr><tr><td>更新HSI时钟温漂特性</td><td>51</td></tr><tr><td>更新引脚重映射相关章节相关信息1、删除PG7-AF4-CCP18CH12、删除PC9-AF4-CCP18CH23、删除PD14-AF4-CCP18CH34、删除PA7-AF4-CCP19CH15、删除PA8-AF4-CCP19CH26、删除PB0~3-AF4-CCP22CH1~47、删除PC5/PC6/PC7/PC8/PC7-AF1-CCP4CH1~48、删除PA0/PA1/PA2/PA6/PA7-AF14-ECCP99、删除PE2/PG3/PG4/PC9/PC10/PD9/PD10 PD13-AF2-ECCP910、删除PB2/PB3/PB11/PB12/PB13-AF3-ECCP911、删除PA8/PC9/PC10-AF3-QEI相关12、删除PA2/PA3/PA5/PA6/PA7/PE2/PB2/PB3/PB12/PB13/PB14/PB15/PF0/PG3/PG4/PC5/PC6/PG7/PC9/PD9/PD10-AF6-USART3~7相关13、删除PB11/PB12/PB13/PG4-AF11-USART7/6相关14、删除PB13-AF13-USART7_CLK15、删除PA5/PA6/PB11/PB12/PB15/PF0/PC9/PC10/PD9-AF8-I2C2/3相关16、删除PB14/PB15/PF0-AF11-I2C2相关17、删除PB11/PB12/PB13/PB14/PB15/PF0/PG3/PG4/PC5/PC6/PC7/PC8/PG6/PC9/PC10/PD13/PD14-AF7-SPI2/SPI3相关18、删除PE15/PC6-AF10-SPI3相关19、删除PC7/PC8/PG6-AF11-SPI3相关20、删除PE2-AF7-I2S3_MCK21、删除PC7-AF10-I2S2_MCK22、删除PB12-AF13-I2S3-I2S3_MCK23、删除PA5/PD13/PD14-AF9-CAN1相关</td><td></td></tr><tr><td rowspan="2">V3.1</td><td>新增型号KF32F330KQTA</td><td>6</td><td rowspan="2">2021-08-23</td></tr><tr><td>更新电源引脚说明章节,增加稳压二极管保护</td><td>17</td></tr><tr><td rowspan="3">V3.2</td><td>在数字重映射章节,数字重映射表前增加说明</td><td>23</td><td rowspan="3">2021-12-28</td></tr><tr><td>恢复V3.0版本中删除的引脚重映射信息:1、恢复PG7-AF4-CCP18CH1;2、恢复PC9-AF4-CCP18CH2;3、恢复PD14-AF4-CCP18CH3;4、恢复PA7-AF4-CCP19CH1;5、恢复PA8-AF4-CCP19CH2;6、恢复PB0~3-AF4-CCP22CH1~4;7、恢复PC5/PC6/PC7/PC8/PC7-AF1-CCP4CH1~4;8、恢复PA0/PA1/PA2/PA6/PA7-AF14-ECCP9;9、恢复PE2/PG3/PG4/PC9/PC10/PD9/PD10 PD13-AF2-ECCP9;10、恢复PB2/PB3/PB11/PB12/PB13-AF3-ECCP9;11、恢复PA8/PC9/PC10-AF3-QEI相关;12、恢复PA2/PA3/PA5/PA6/PA7/PE2/PB2/PB3/PB12/PB13/PB14/PB15/PF0/PG3/PG4/PC5/PC6/PG7/PC9/PD9/PD10-AF6-USART3~7相关;13、恢复PB11/PB12/PB13/PG4-AF11-USART7/6相关;14、恢复PB13-AF13-USART7_CLK;15、恢复PA5/PA6/PB11/PB12/PB15/PF0/PC9/PC10/PD9-AF8-I2C2/3相关;16、恢复PB14/PB15/PF0-AF11-I2C2相关;17、恢复PB11/PB12/PB13/PB14/PB15/PF0/PG3/PG4/PC5/PC6/PC7/PC8/PG6/PC9/PC10/PD13/PD14-AF7-SPI2/3相关;18、恢复PE15/PC6-AF10-SPI3相关;19、恢复PC7/PC8/PG6-AF11-SPI3相关;20、恢复PE2-AF7-I2S3_MCK;21、恢复PC7-AF10-I2S2_MCK;22、恢复PB12-AF13-I2S3-I2S3_MCK;23、恢复PA5/PD13/PD14-AF9-CAN1相关。</td><td>23</td></tr><tr><td>删除PA1-AF9-FLTI2/PB13-AF9-FLTI2/PC9-AF9-FLTI2</td><td>23</td></tr></table>