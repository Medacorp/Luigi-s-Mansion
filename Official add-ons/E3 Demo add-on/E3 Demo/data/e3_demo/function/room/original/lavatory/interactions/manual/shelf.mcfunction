tag @s[x=662.0,y=13,z=42.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=662.0,y=13,z=42.0,dx=0,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=662.0,y=13,z=42.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run scoreboard players operation #lavatory_shelf SearcherID = #temp ID
execute if entity @s[x=662.0,y=13,z=42.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function e3_demo:room/original/lavatory/search/shelf