tag @s[x=713.0,y=21,z=-13.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=713.0,y=21,z=-13.0,dx=0,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=713.0,y=21,z=-13.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run scoreboard players operation #parlor_painting_4 SearcherID = #temp ID
execute if entity @s[x=713.0,y=21,z=-13.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/parlor/search/boo_check/painting_4