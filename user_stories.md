As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

Objects         | Messages
--------------- | -------------
person          | use_a_bike 
bike            | release_a_bike
docking_station | 

Objects         | Messages
--------------- | -------------
person          | use_a_good_bike 
good_bike       | is_working? 
 
|person| -----use_a_good_bike----| 
       |<-------release_bike-----| docking_station | ---is_working?----> |bike |
                                                    <-------yes/no-------|
