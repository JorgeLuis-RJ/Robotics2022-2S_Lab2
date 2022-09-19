%%
rosinit; % Conexión con nodo maestro
%%
posSub = rossubscriber('/turtle1/pose', 'turtlesim/Pose'); % Creación del subscriptor
pause(1)
%%
posMsg = receive(posSub) % Recepción del mensaje
%%
rosshutdown; % Desconexión del nodo global de Matlab