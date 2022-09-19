%%
rosinit; % Conexión del nodo global de Matlab
%%
velPub = rospublisher('/turtle1/cmd_vel', 'geometry_msgs/Twist'); % Creación del publicador
velMsg = rosmessage(velPub); % Creación del mensaje
%%
velMsg.Linear.X = 1; % Valor del mensaje
send(velPub, velMsg); % Envío del mensaje
pause(1)
%%
rosshutdown; % Desconexión del nodo global de Matlab