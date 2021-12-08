As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

Objects         | Messages
--------------- | -------------
person          | use_a_bike 
bike            | release_a_bike
docking_station | 

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

Objects         | Messages
--------------- | -------------
person          | use_a_good_bike 
good_bike       | is_working? 

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

Objects         | Messages
--------------- | -------------
person          | return_bikes 
docking_station | dock_bike

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

Objects         | Messages
--------------- | -------------
person          | decide_on_dockingstation
bike            | is_docked? 

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.