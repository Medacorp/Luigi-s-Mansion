tag @s[x=720.0,y=20,z=19.0,dx=2,dy=0,dz=0,tag=check] add can_interact
execute if entity @s[x=720.0,y=20,z=19.0,dx=2,dy=0,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=720.0,y=20,z=19.0,dx=2,dy=0,dz=0,tag=!sound,tag=!check] run scoreboard players operation #living_room_couch SearcherID = #temp ID
execute if entity @s[x=720.0,y=20,z=19.0,dx=2,dy=0,dz=0,tag=!sound,tag=!check] run function e3_demo:room/original/living_room/search/couch