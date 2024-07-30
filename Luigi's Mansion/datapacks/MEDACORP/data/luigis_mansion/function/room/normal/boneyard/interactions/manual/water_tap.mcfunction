tag @s[x=681.0,y=102,z=39.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=681.0,y=102,z=39.0,dx=0,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=681.0,y=102,z=39.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run scoreboard players operation #boneyard_water_tap SearcherID = #temp ID
execute if entity @s[x=681.0,y=102,z=39.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/boneyard/search/water_tap