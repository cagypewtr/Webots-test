% MATLAB controller for Webots
% File:          petr_robot_remote.m
% Date:
% Description:
% Author:
% Modifications:

% uncomment the next two lines if you want to use
% MATLAB's desktop to interact with the controller:
%desktop;
%keyboard;

TIME_STEP = 64;

% get and enable devices, e.g.:
%  camera = wb_robot_get_device('camera');
%  wb_camera_enable(camera, TIME_STEP);
%  motor = wb_robot_get_device('motor');
BRWheel = wb_robot_get_device('back_right_wheel');
FRWheel = wb_robot_get_device('front_right_wheel');
BLWheel= wb_robot_get_device('back_left_wheel');
FLWheel= wb_robot_get_device('front_left_wheel');

wb_motor_set_position(BRWheel,inf);
wb_motor_set_velocity(BRWheel, 2);
wb_motor_set_position(FRWheel,inf);
wb_motor_set_velocity(FRWheel, 2);
wb_motor_set_position(BLWheel,inf);
wb_motor_set_velocity(BLWheel, 2);
wb_motor_set_position(FLWheel,inf);
wb_motor_set_velocity(FLWheel, 2);

% main loop:
% perform simulation steps of TIME_STEP milliseconds
% and leave the loop when Webots signals the termination
%
while wb_robot_step(TIME_STEP) ~= -1

  % read the sensors, e.g.:
  %  rgb = wb_camera_get_image(camera);

  % Process here sensor data, images, etc.

  % send actuator commands, e.g.:
  %  wb_motor_set_postion(motor, 10.0);

  % if your code plots some graphics, it needs to flushed like this:
  drawnow;

end

% cleanup code goes here: write data to files, etc.
