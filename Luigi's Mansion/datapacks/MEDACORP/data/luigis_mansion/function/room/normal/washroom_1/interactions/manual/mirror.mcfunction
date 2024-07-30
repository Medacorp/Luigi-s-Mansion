tag @s[x=661.0,y=12,z=39.0,dx=0,dy=2,dz=2,tag=check] add can_interact
execute if entity @s[x=661.0,y=12,z=39.0,dx=0,dy=2,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=661.0,y=12,z=39.0,dx=0,dy=2,dz=2,tag=!sound,tag=!check] run scoreboard players operation #washroom_1_mirror SearcherID = #temp ID
execute if entity @s[x=661.0,y=12,z=39.0,dx=0,dy=2,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/normal/washroom_1/search/boo_check/mirror