tag @s[x=661.0,y=11,z=-17.0,dx=0,dy=1,dz=2,tag=check] add can_interact
execute if entity @s[x=661.0,y=11,z=-17.0,dx=0,dy=1,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/xylophone
execute if entity @s[x=661.0,y=11,z=-17.0,dx=0,dy=1,dz=2,tag=!sound,tag=!check] run scoreboard players operation #conservatory_xylophone SearcherID = #temp ID
execute if entity @s[x=661.0,y=11,z=-17.0,dx=0,dy=1,dz=2,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/conservatory/search/boo_check/xylophone