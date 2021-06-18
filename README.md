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
###### According to [UNICEF](https://www.unicef.org/) 

1. Four billion people — almost two thirds of the world’s population —  experience severe water scarcity for at least one month each year.
2. Over two billion people live in countries where water supply is inadequate.
3. Half of the world’s population could be living in areas facing water scarcity by as early as 2025.
4. Some 700 million people could be displaced by intense water scarcity by 2030.
5. By 2040, roughly 1 in 4 children worldwide will be living in areas of extremely high water stress.


These critical facts made us come up with our very own Ecotopia -The sustainable village. By our application we aim to conserve the water resources by reducing wastage of water and by promoting rainwater harvesting.

## What it does?

We have an IoT device implemented in each tank through which we can know the tank water-level and the data is stored in the cloud connected to ibm db2 database. We implement different features of our flutter application using this data.

The device consists of an Arduino board connected with 2 flowmeters and is powered by a rechargeable 5V battery. One of the flowmeters is connected to the inlet of the tank and the other to the outlet. This helps up the record the volume of water entering and exiting the tank, and their difference being net usage. Currently, the device is relying on a 5v battery and a wifi chip to transfer recorded data, which is recorded every hour, and send to a cloud service which triggers a cloud function to input those data into am IBM db2 database. As a 5V battery is quite tedious to charge every few days or so we are pitching an idea to implement a LoRaWAN system in the center of the local area. This helps in a multitude of ways like removing some power needs to power wifi chip, which taken to the larger scale conserves energy.Another advantage of using LoRaWAN is that it is less expensive. This is a good addition to society because this opens up a new word for implementing IoT devices in the everyday home and thus conservation of resources is automated.  The IoT device while in monitoring mode keeps an eye on the tank and its water level once inlet activity is recorded and check for the runs and calculation to find out the total volume in the tank [remaining volume = total volume - ((previous inlet volume - current outlet volume) + incoming volume from inlet)]. When the remaining volume < 15ltr, Arduino sends a request to the cloud which is captured by Wattson-powered IoT instance which then sends a request to the Push notification cloud service which sends a message to the client app. As it's connected via sockets the message received will only require the latency time to reach the user. This conserves water by preventing overflows.

As we collect the data of every user's water activities. We can use that data to train a machine learning model which predicts future usage and can provide the total water needs of a locality. This can help us solve droughts by enabling us to adapt faster and moving one step ahead of nature. We can use logistic regression to train the model and use a leaky RELU as its activation function for reliable output. There are a lot of scopes after machine learning is implemented. For the time being, we can integrate the same IoT device for monitoring the total output of panchayath or rural water supply in order to catch some leakages down the road by comparing the data from each individual user.

Currently, the application runs on a cloud foundry instance of node.js connected to the IBM db2 database for a relational database. Here a relational database is used instead of a NoSQL is to make the relationship strict and in making the datasets for the ml model much easier. The node.js instance act as a RESTful API so that it can receive and send data to the client app and receive recorded data from the IoT device if LoRaWAN is implemented then from the cloud function.


![image](https://user-images.githubusercontent.com/63166735/122546895-0cc18380-d04d-11eb-9216-7f1f89d16c23.png)


##### Application Features

1. Water Consumption Monitoring - A graph is provided (for each weekly/monthly/annually) which gives a pictorial representation of the water consumed by a family in that given duration of time.
2. LeaderBoard - Points are being awarded to each family  on the basis of water consumption per member ratio.Leaderboards are implemented in each cluster and the winners are rewarded each month.
3. Rain Water Harvesting - The rain water harvested is measured separately using IoT device in that tank. There is a separate leaderboard for the same and special rewards are being provided to promote rainwater harvesting.
4. Rewards - The rewards include cash prize (a part of which we get through add revenue), glass bottles (plastic bottles can be replaced ) , plant saplings and other eco-friendly swags.
5. Alerts - We use Push Notifications service on IBM Cloud to send real-time notifications to mobile devices in situations where the present water consumption crosses the average consumption limit.
6.Donation - Users can contribute to the upliftment of the weaker sections of the society. 

## The Architecture
![image](https://user-images.githubusercontent.com/63166735/122551250-595b8d80-d052-11eb-9d42-8132769a737a.png)


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
6. [Figma](https://www.figma.com/)


