tag @s[x=685.0,y=111,z=48.0,dx=4,dy=1,dz=3,tag=check] add can_interact
execute if entity @s[x=685.0,y=111,z=48.0,dx=4,dy=1,dz=3,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=685.0,y=111,z=48.0,dx=4,dy=1,dz=3,tag=!sound,tag=!check] run scoreboard players operation #bed_room_1_bed_1 SearcherID = #temp ID
execute if entity @s[x=685.0,y=111,z=48.0,dx=4,dy=1,dz=3,tag=!sound,tag=!check] run function e3_demo:room/original/bed_room_1/search/bed_1