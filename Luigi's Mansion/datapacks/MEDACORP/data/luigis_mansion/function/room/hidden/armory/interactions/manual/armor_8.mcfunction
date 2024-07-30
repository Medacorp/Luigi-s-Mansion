tag @s[x=751.0,y=29,z=-42.0,dx=2,dy=3,dz=1,tag=check] add can_interact
execute if entity @s[x=751.0,y=29,z=-42.0,dx=2,dy=3,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=751.0,y=29,z=-42.0,dx=2,dy=3,dz=1,tag=!sound,tag=!check] run scoreboard players operation #armory_armor_8 SearcherID = #temp ID
execute if entity @s[x=751.0,y=29,z=-42.0,dx=2,dy=3,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/armory/search/boo_check/armor_8