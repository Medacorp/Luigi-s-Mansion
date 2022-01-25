tag @s[x=663.0,y=20,z=45.0,dx=2,dy=4,dz=1,tag=check] add can_interact
execute if entity @s[x=663.0,y=20,z=45.0,dx=2,dy=4,dz=1,tag=sound] run playsound luigis_mansion:block.search.metal block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=663.0,y=20,z=45.0,dx=2,dy=4,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/washroom_2/search/toilet_storage