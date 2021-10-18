# ECOTOPIA

The Sustainable Village

## Description

### Inspiration

Climate change is disrupting weather patterns, leading to extreme weather events, unpredictable water availability, exacerbating water scarcity and contaminating water supplies. Such impacts can drastically affect the quantity and quality of water that people need to survive.

###### According to [UNICEF](https://www.unicef.org/)

1. Four billion people — almost two thirds of the world’s population — experience severe water scarcity for at least one month each year.
2. Over two billion people live in countries where water supply is inadequate.
3. Half of the world’s population could be living in areas facing water scarcity by as early as 2025.
4. Some 700 million people could be displaced by intense water scarcity by 2030.

These facts made us come up with our very own Ecotopia -The sustainable village. By our application we aim to conserve the water resources by reducing wastage of water and by promoting rainwater harvesting.

### What it does?

Our application is all about water conservation. Detailed explanation of the UI is shown in the demo video attached. The main features of our application are:

1. Water Consumption Monitoring
2. LeaderBoard
3. Promoting Rainwater Harvesting
4. Reward
5. Alerts
6. Donations

### Working

The main competitive drive of humans to be better than the rest is exploited in a good way by giving social points for conserving water. This is implemented by placing IoT devices in their tanks to measure the inlet and outlet volume and calculate the net usage of each individual house. This IoT Device is a LoRaWAN chip which is low powered and connected to the cloud service. It is low powered so upon expansion it cuts down the power needs from every IoT device in the area. LoRaWAN can cut down the need of a stable wifi connection to send data to the cloud as it uses Radio Waves. This helps to improve the viability of implementation in even common households. It also enables future implementation of IoT devices in the future and can unleash the potential of future IoT devices for conservation and other improvements for quality of life.
The data collected and processed are sent back to the app which ensures the user has full control over their data. The app will show their daily, monthly and yearly water usage for the entire family. They can also receive and redeem rewards and donate from the same app itself. It also shows the leaderboard for a local region which enhances the social front.
As we collect the data of every user's water activities we can use that data to train a machine learning model which predicts future usage and can provide the total water needs of a locality. This can help us solve droughts. We can use logistic regression to train the model and use a leaky RELU as its activation function for reliable output. For the time being, we can integrate the same IoT device for monitoring the total output of panchayath or rural water supply in order to catch some leakages down the road by comparing the data from each individual user.

## Solution Roadmap

IoT based water level monitoring system can be installed in individual houses so that one can check water level of their tank in real time from their own comfort and also track their consumption overtime.
We plan to implement our application primarily at any small area take a village. Then we are planning to implement it at a State level. And also we are planning to add more features also by taking customer review into account. So we will be able to save billions of litres of water everyday.
If a family conserves 2000 Litres of water per month, a district will conserve approximately 15 billion Litres per year(assuming that there are approximately 6 Lakhs number of houses in a district).Thus a huge amount of water is conserved which can prevent water scarcity in just a few years.
After that we also plan to add a feature of waste management system by collecting plastic wastes from different places and recycling, reusing and redistributing it. And we will be providing all the jobs in our company to ladies and non binary folks. We will also promote women communities like kudumbasree to take up our jobs thereby increasing the participation of women in the field of jobs.
Machine learning can be used to predict the future water requirements using the previous data which helps in resolving drastic droughts.
The rewards provided are glass bottles, plant saplings and other eco-friendly swags so that a plastic-free community can be developed.

## Video

[![Watch the video](https://i.ytimg.com/vi/AVKH-aYAmXo/maxresdefault.jpg)](https://youtu.be/AVKH-aYAmXo)
[Demo Video](https://youtu.be/AVKH-aYAmXo)

## Additional Description and Diagrams

We have an IoT device implemented in each tank through which we can know the tank water-level and the data is stored in the cloud connected to ibm db2 database. We implement different features of our flutter application using this data.
The device consists of an Arduino board connected with 2 flowmeters and is powered by a rechargeable 5V battery. One of the flowmeters is connected to the inlet of the tank and the other to the outlet. This helps up the record the volume of water entering and exiting the tank, and their difference being net usage. Currently, the device is relying on a 5v battery and a wifi chip to transfer recorded data, which is recorded every hour, and send to a cloud service which triggers a cloud function to input those data into am IBM db2 database. As a 5V battery is quite tedious to charge every few days or so we are pitching an idea to implement a LoRaWAN system in the center of the local area. This helps in a multitude of ways like removing some power needs to power wifi chip, which taken to the larger scale conserves energy.Another advantage of using LoRaWAN is that it is less expensive. This is a good addition to society because this opens up a new word for implementing IoT devices in the everyday home and thus conservation of resources is automated. The IoT device while in monitoring mode keeps an eye on the tank and its water level once inlet activity is recorded and check for the runs and calculation to find out the total volume in the tank [remaining volume = total volume - ((previous inlet volume - current outlet volume) + incoming volume from inlet)]. When the remaining volume < 15ltr, Arduino sends a request to the cloud which is captured by Wattson-powered IoT instance which then sends a request to the Push notification cloud service which sends a message to the client app. As it's connected via sockets the message received will only require the latency time to reach the user. This conserves water by preventing overflows.
Currently, the application runs on a cloud foundry instance of node.js connected to the IBM db2 database for a relational database. Here a relational database is used instead of a NoSQL is to make the relationship strict and in making the datasets for the ml model much easier. The node.js instance act as a RESTful API so that it can receive and send data to the client app and receive recorded data from the IoT device if LoRaWAN is implemented then from the cloud function.

##### Application Features

1. Water Consumption Monitoring - A graph is provided (for each weekly/monthly/annually) which gives a pictorial representation of the water consumed by a family in that given duration of time.
2. LeaderBoard - Points are being awarded to each family on the basis of water consumption per member ratio.Leaderboards are implemented in each cluster and the winners are rewarded each month.
3. Rain Water Harvesting - The rain water harvested is measured separately using IoT device in that tank. There is a separate leaderboard for the same and special rewards are being provided to promote rainwater harvesting.
4. Rewards - The rewards include cash prize, free implementation of rainwater harvesting system, glass bottles (plastic bottles can be replaced ) ,redeemable gift cards from local business owners plant saplings and other eco-friendly swags.The fund for the same is obtained through location based ads, common ads, CSR(Corporate Social Responsibility) funds.
5. Alerts - We use Push Notifications service on IBM Cloud to send real-time notifications to mobile devices in situations where the present water consumption crosses the average consumption limit.
6.  Donation - Users can contribute to the upliftment of the weaker sections of the society.

## The Architecture

![image](https://user-images.githubusercontent.com/63166735/122559395-e4418580-d05c-11eb-8055-fb0dbdca0418.png)

1. IoT Device collects real time water consumption data from the tank.
2. IoT sends data to the local LoRaWAN and it sends data to the cloud.
3. The data in the cloud is collected by a Node.js + Express server embedded in a Cloud Foundry Instance which is a part of IBM Cloud Service.
4. The data is then forwarded to DB2 Database by IBM Cloud Service, where its stored in tables and relations.
5. Upon further expansion the data can be shared to Watson Machine Learning Service provided by IBM Cloud which can be used to predict the water usage and availability
6. All this data can be shared to the client app which is made with Flutter using the same RESTful API.
7. IoT device can also sends out alerts to the cloud via LoRaWAN which can be used to trigger a Push Notification call, which is provided by IBM Cloud, to sends out a push notification to the client app saying the tank is filled and can be used to trigger an IoT device to switch off the motor.

### Screenshots

#### Mobile App

![image](https://user-images.githubusercontent.com/63166735/122585078-b5390d00-d078-11eb-9fc9-aa5a1dfdded9.png)
![image](https://user-images.githubusercontent.com/63166735/122584151-a2720880-d077-11eb-985c-ca9ca908c13e.png)
![image](https://user-images.githubusercontent.com/63166735/122585119-bff3a200-d078-11eb-8d17-52c3d69df9cf.png)
<img src="https://user-images.githubusercontent.com/63166735/122595861-b113ec00-d086-11eb-9635-5692129b3606.png" height="612">

#### Database Tables

![image](https://user-images.githubusercontent.com/63166735/122584936-8f136d00-d078-11eb-9e61-0b55ecbad39a.png)
![image](https://user-images.githubusercontent.com/63166735/122585224-e4e81500-d078-11eb-888b-915ff8422053.png)

#### Circuit Diagram

![image](https://user-images.githubusercontent.com/63166735/122584257-c5042180-d077-11eb-9d00-a11e6301efaa.png)

## How to Run

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/M-3-6/EcoTopia
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies:

```
flutter pub get
```

**Step 3:**

Run main.dart file or usethe following command

```
flutter run
```

## Built With

#### IBM IaaS

1. [IBM Cloud](https://cloud.ibm.com) - Cloud service hosting the backend instance
2. [IBM Cloud Push Notification](https://cloud.ibm.com/catalog/services/push-notifications) - Api used for sending realtime notifications
3. [IBM Watson IoT](https://www.ibm.com/cloud/internet-of-things) - IBM Iot platform used for handling LoRaWAN and IoT devices
4. [IBM Watson ML](https://www.ibm.com/cloud/machine-learning) - IBM ML platform used for predicting water usage

#### Other Tools

1. [Flutter](https://flutter.dev/) - Open Source framework used to build the mobile application
2. [LoRaWAN](https://lora-alliance.org/about-lorawan/) - Provides a Wide Area Network (WAN) to connect IoT devices
3. [Figma](https://www.figma.com/) - Tool used for prototyping and designing

## Team Members

1. [Maria Viji George](https://github.com/M-3-6)
2. [Gokul P Dinesh](https://github.com/CyberFlaw)
3. [Abil Savio](https://github.com/ByteCrak07)
4. [Mariya Thomas](https://github.com/martho1172001)
5. [Neha Susan Manoj](https://github.com/neha771)
