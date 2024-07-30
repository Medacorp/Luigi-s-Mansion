tag @s[x=724.0,y=21,z=-3.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=724.0,y=21,z=-3.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=724.0,y=21,z=-3.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run scoreboard players operation #parlor_painting_7 SearcherID = #temp ID
execute if entity @s[x=724.0,y=21,z=-3.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/parlor/search/boo_check/painting_7