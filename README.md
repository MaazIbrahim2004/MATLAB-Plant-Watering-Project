# MATLAB-Plant-Watering-Project
This project is a simulation of watering a plant using an Arduino Uno board, a soil sensor, a MOSFET switch, and a water pump. The MATLAB code measures the voltage of the plant's soil and determines whether the plant needs watering based on a set threshold.

#Design Analysis
To simulate watering a plant using the MATLAB software, the following materials were required:

* Arduino Grove board
* MATLAB software installed on your computer/PC
* Two four-pin connectors
* Potted plant
* MOSFET board with wires and pump
* Cup to hold water
* Moisture sensor
* Micro USB to USB-A cable
* 9V battery

# Procedure
The MATLAB software was used as an interface for the Arduino board, which reads the voltage readings of the sensor attached to it. The sensor readings in MATLAB would then direct the MOSFET board to water the plant until the voltage readings were below a certain threshold.

# Results
When the sensor displayed a value under 3.4 volts, the pump connected to the MOSFET board wouldn't pump any water. However, when the sensor displayed that the plant needed watering, the MOSFET board and pump connected to the Arduino board would water the plant until the voltage reading was below the threshold of 3.4 volts. This simulation continues until the code is manually stopped.

# Conclusions and Recommendations
During the setup of the project, it was found that the yellow and white wire switch for the four-pin cable connected to the motion sensor wasn't recommended due to the likelihood of breaking the cable. A safer and less tedious option is to break off the A0 Rotary Potentiometer, allowing you to plug in the motion sensor into A0 with ease and no wire swap.

Overall, this project successfully created a program that simulates watering a plant using an Arduino board and MATLAB software. With some modifications and improvements, this project could be useful for automating the watering of plants in real-life situations.
