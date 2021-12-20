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




## Step 21

```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to collect working bikes from garages and distribute them to docking stations.
```

* vans take broken bikes from docking stations 
* so vans hold their own collection of bikes?
* garage fixes bikes
* garage accepts collections of bikes
* garage changes bikes status to working
* garage delivers bikes to docking stations, enters bikes into collection
