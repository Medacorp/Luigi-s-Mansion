tag @s[x=685.0,y=111,z=54.0,dx=1,dy=3,dz=1,tag=check] add can_interact
execute if entity @s[x=685.0,y=111,z=54.0,dx=1,dy=3,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=685.0,y=111,z=54.0,dx=1,dy=3,dz=1,tag=!sound,tag=!check] run scoreboard players operation #bed_room_1_closet SearcherID = #temp ID
execute if entity @s[x=685.0,y=111,z=54.0,dx=1,dy=3,dz=1,tag=!sound,tag=!check] run function e3_demo:room/original/bed_room_1/search/closet