# Robotics2022-2S_Lab2
Universidad Nacional de Colombia - 
Sede Bogotá

Robótica - 
2016770-3

Jorge Luis Reina Jara - 
25481216

## Laboratorio 2: Robótica de Desarrollo, Introducción a ROS

Desarrollo

1. Procedimiento en el Terminal

Se inició el módulo maestro de ROS con el comando roscore y se empezó a hacer uso de algunos de los nodos de esta nueva red, específicamente, de turtlesim, el turtlesim turtlesim_node.
Con las características de este nodo, fue posible realizar un primer acercamiento a la modificación de la posición y orientación en la simulación de la tortuga. Accediendo al nodo turtlesim turtle_teleop_key, la posibilidad de utilizar las flechas del computador para modificar las poses de la tortuga se hicieron evidentes, logrando realizar el recorrido deseado.

![TurtleTeleopKey](https://user-images.githubusercontent.com/65325610/191167477-5259e2ad-96a8-4bad-9d17-581a6a2e6b73.png)

2. Procedimiento con Matlab

Ahora, haciendo uso de Matlab, se realizó la conexión con el nodo global del software, que permite interactuar con la red de ROS que se tiene en ese instante, es decir, poder acceder a los topics de la simulación de la tortuga.
Se crea un archivo donde se presenta y se corre el siguiente código:

![InitialCode](https://user-images.githubusercontent.com/65325610/191168522-01f78161-fe5d-41a4-ba00-0ed2a7de7c10.png)

Con la intención de publicar un mensaje en el topic /turtle1/cmd_vel alterando el parámetro de la velocidad lineal ('Linear') con el valor de 1, y así, observar cómo la tortuga se movía.

Más adelante, se creó un archivo de Matlab para realizar las operaciones de suscripción al topic /turtle1/Pose, de esta forma, obtener los valores actuales de la pose de la tortuga en la simulación.

![PoseSubscriptionCode](https://github.com/JorgeLuis-RJ/Robotics2022-2S_Lab2/blob/main/Images_Rob2022-2S_Lab2/PoseSubscriptionCode.png?raw=true)

Por último, se planteó un código que permitiera realizar la modificación de los valores de la pose, es decir, los parámetros 'X', 'Y', 'Theta', 'Linear' y 'Angular', con el objetivo de observar dicho cambio en la simulación. Esto se realizó por medio del envío de un mensaje de solicitud (request) a los servicios /turtlesim/teleport_absolute y /turtlesim/teleport_relative, en donde el mensaje de respuesta de estos servicios era la declaración y ubicación de la nueva pose ne la simulación. A continuación se presentan algunos ejemplos.

![SettingPoseCode1](https://github.com/JorgeLuis-RJ/Robotics2022-2S_Lab2/blob/main/Images_Rob2022-2S_Lab2/SettingPoseCode(1).png?raw=true)
![SettingPoseCode2](https://github.com/JorgeLuis-RJ/Robotics2022-2S_Lab2/blob/main/Images_Rob2022-2S_Lab2/SettingPose(1).png?raw=true)
![PoseSubscriptionCode](https://github.com/JorgeLuis-RJ/Robotics2022-2S_Lab2/blob/main/Images_Rob2022-2S_Lab2/SettingPoseCode(2).png?raw=true)
![SettingPose2](https://github.com/JorgeLuis-RJ/Robotics2022-2S_Lab2/blob/main/Images_Rob2022-2S_Lab2/SettingPose(2).png?raw=true)
![SettingPose2](https://github.com/JorgeLuis-RJ/Robotics2022-2S_Lab2/blob/main/Images_Rob2022-2S_Lab2/SettingPose(3).png?raw=true)
![PoseSubscriptionCode](https://github.com/JorgeLuis-RJ/Robotics2022-2S_Lab2/blob/main/Images_Rob2022-2S_Lab2/SettingPoseCode(3).png?raw=true)
![SettingPose2](https://github.com/JorgeLuis-RJ/Robotics2022-2S_Lab2/blob/main/Images_Rob2022-2S_Lab2/SettingPose(4).png?raw=true)
![SettingPose2](https://github.com/JorgeLuis-RJ/Robotics2022-2S_Lab2/blob/main/Images_Rob2022-2S_Lab2/SettingPose(5).png?raw=true)
![SettingPose2](https://github.com/JorgeLuis-RJ/Robotics2022-2S_Lab2/blob/main/Images_Rob2022-2S_Lab2/SettingPose(6).png?raw=true)
