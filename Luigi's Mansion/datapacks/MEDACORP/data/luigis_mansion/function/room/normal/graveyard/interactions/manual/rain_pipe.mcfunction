tag @s[x=669.0,y=103,z=39.0,dx=0,dy=10,dz=1,tag=check] add can_interact
execute if entity @s[x=669.0,y=103,z=39.0,dx=0,dy=10,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=669.0,y=103,z=39.0,dx=0,dy=10,dz=1,tag=!sound,tag=!check] run scoreboard players operation #graveyard_rain_pipe SearcherID = #temp ID
execute if entity @s[x=669.0,y=103,z=39.0,dx=0,dy=10,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/graveyard/search/rain_pipe