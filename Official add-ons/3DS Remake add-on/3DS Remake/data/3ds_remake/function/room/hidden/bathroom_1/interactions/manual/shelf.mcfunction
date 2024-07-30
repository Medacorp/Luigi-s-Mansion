tag @s[x=656.0,y=15,z=27.0,dx=2,dy=0,dz=0,tag=check] add can_interact
execute if entity @s[x=656.0,y=15,z=27.0,dx=2,dy=0,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=656.0,y=15,z=27.0,dx=2,dy=0,dz=0,tag=!sound,tag=!check] run scoreboard players operation #bathroom_1_shelf SearcherID = #temp ID
execute if entity @s[x=656.0,y=15,z=27.0,dx=2,dy=0,dz=0,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/bathroom_1/search/boo_check/shelf