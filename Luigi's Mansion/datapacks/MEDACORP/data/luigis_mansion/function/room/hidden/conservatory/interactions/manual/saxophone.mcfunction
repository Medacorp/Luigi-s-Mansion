tag @s[x=658.0,y=11,z=19.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=658.0,y=11,z=19.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/saxophone
execute if entity @s[x=658.0,y=11,z=19.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run scoreboard players operation #conservatory_saxophone SearcherID = #temp ID
execute if entity @s[x=658.0,y=11,z=19.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/conservatory/search/boo_check/saxophone