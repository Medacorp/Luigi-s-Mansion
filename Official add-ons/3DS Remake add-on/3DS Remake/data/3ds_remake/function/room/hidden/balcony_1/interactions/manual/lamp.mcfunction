tag @s[x=677.0,y=113,z=39.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=677.0,y=113,z=39.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=677.0,y=113,z=39.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run scoreboard players operation #balcony_1_lamp SearcherID = #temp ID
execute if entity @s[x=677.0,y=113,z=39.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/balcony_1/search/lamp