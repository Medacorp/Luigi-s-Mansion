tag @s[x=747.0,y=29,z=56.0,dx=2,dy=3,dz=1,tag=check] add can_interact
execute if entity @s[x=747.0,y=29,z=56.0,dx=2,dy=3,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=747.0,y=29,z=56.0,dx=2,dy=3,dz=1,tag=!sound,tag=!check] run scoreboard players operation #armory_armor_7 SearcherID = #temp ID
execute if entity @s[x=747.0,y=29,z=56.0,dx=2,dy=3,dz=1,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/armory/search/boo_check/armor_7