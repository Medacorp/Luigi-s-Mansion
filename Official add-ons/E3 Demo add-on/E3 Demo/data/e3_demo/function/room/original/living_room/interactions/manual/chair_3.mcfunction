tag @s[x=717.0,y=20,z=20.0,dx=1,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=717.0,y=20,z=20.0,dx=1,dy=0,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=717.0,y=20,z=20.0,dx=1,dy=0,dz=1,tag=!sound,tag=!check] run scoreboard players operation #living_room_chair_3 SearcherID = #temp ID
execute if entity @s[x=717.0,y=20,z=20.0,dx=1,dy=0,dz=1,tag=!sound,tag=!check] run function e3_demo:room/original/living_room/search/chair_3