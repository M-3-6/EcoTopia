# ECOTOPIA

The Sustainable Village

## Team Members

1. [Neha Susan](https://github.com/neha771)
2. [Gokul Dinesh](https://github.com/CyberFlaw)
3. [Abil Savio](https://github.com/ByteCrak07)
4. [Mariya Thomas](https://github.com/martho1172001)
5. [Maria Viji George](https://github.com/M-3-6)


## Demo Video


## Screenshots


## Inspiration

Climate change is disrupting weather patterns, leading to extreme weather events, unpredictable water availability, exacerbating water scarcity and contaminating water supplies. Such impacts can drastically affect the quantity and quality of water that people need to survive.
###### According to [UNICEF]-(https://www.unicef.org/) 

1. Four billion people — almost two thirds of the world’s population —  experience severe water scarcity for at least one month each year.
2. Over two billion people live in countries where water supply is inadequate.
3. Half of the world’s population could be living in areas facing water scarcity by as early as 2025.
4. Some 700 million people could be displaced by intense water scarcity by 2030.
5. By 2040, roughly 1 in 4 children worldwide will be living in areas of extremely high water stress.


These critical facts made us come up with our very own Ecotopia -The sustainable village. By our application we aim to conserve the water resources by reducing wastage of water and by promoting rainwater harvesting.

## What it does?

We have an IoT device implemented in each tank through which we can know the tank water-level and the data is stored in the cloud connected to ibm db2 database. We implement different features of our flutter application using this data.

The device consists of an Arduino board connected with 2 flow meters and is powered by a rechargeable 5V battery. One of the flow meter is connected to the inlet of the tank and other to the outlet. This helps us to record the volume of water entering and exiting the tank, and the difference being net usage. Currently the device is relying on a 5V battery and a wifi chip to transfer recorded data, which is recorded every hour, and sent to a cloud service which triggers a cloud function to input those data into an ibm db2 database. As a 5V battery is quite tedious to charge every few days, so we are pitching an idea to implement a LoRaWAN system in the center of the local area. This helps in a multitude of ways like by cut shorting some power to power wifi chip so that we can cut down the battery to a 1.5V rechargeable AAA battery, which when taken to a larger scale, conserves energy.Another advantage of using LoRaWAN is that it is less expensive.This is a good addition on the society because this opens up a new world for implementing IoT devices in everyday home and thus conservation of resources are automated.
As we collect the data of every user's water activities, we can use that data to train a machine learning model which predict the future usage and can provide the total water needs of a locality. This can help us solve droughts by enabling us to adapt faster and moving one step ahead of the nature. We can use logistic regression to train the model and use a leaky relu as its activation function for a reliable output. There are a lot of scopes after machine learning is implemented. For the time being we can integrate the same IoT device for monitoring the total output of a panchayath or rural water supply in order to catch some leakages down the road by comparing the data from each individual users.

Currently the application runs on a cloud foundry instance of node.js connected to ibm db2 database for a relational database. Here a relational database is used instead of a nosql to make relationship strict and in making the datasets for the ml model much easier. The node.js instance act as an RESTful api so that it can receive and send data to the client app and recieve recorded data from the IoT device, (if loRaWAN is implemented then from the cloud function).

![image](https://user-images.githubusercontent.com/63166735/122546895-0cc18380-d04d-11eb-9216-7f1f89d16c23.png)


##### Application Features

1. Water Consumption Monitoring - A graph is provided (for each weekly/monthly/annually) which gives a pictorial representation of the water consumed by a family in that given duration of time.
2. LeaderBoard - Points are being awarded to each family  on the basis of water consumption per member ratio.Leaderboards are implemented in each cluster and the winners are rewarded each month.
3. Rain Water Harvesting - The rain water harvested is measured separately using IoT device in that tank. There is a separate leaderboard for the same and special rewards are being provided to promote rainwater harvesting.
4. Rewards - The rewards include cash prize (a part of which we get through add revenue), glass bottles (plastic bottles can be replaced ) , plant saplings and other eco-friendly swags.
5. Alerts - We use Push Notifications service on IBM Cloud to send real-time notifications to mobile devices in situations where the present water consumption crosses the average consumption limit.
6.Donation - Users can contribute to the upliftment of the weaker sections of the society. 

## The Architecture

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

1. [IBM Cloud](https://cloud.ibm.com)
2. [IBM Cloud Push Notification](https://cloud.ibm.com/catalog/services/push-notifications)- 
3. [Watson IoT](https://www.ibm.com/cloud/internet-of-things)
4. [Flutter](https://flutter.dev/)- Used to build the mobile application
5. [LoRaWAN](https://lora-alliance.org/about-lorawan/)
6. [Figma]-(https://www.figma.com/)


