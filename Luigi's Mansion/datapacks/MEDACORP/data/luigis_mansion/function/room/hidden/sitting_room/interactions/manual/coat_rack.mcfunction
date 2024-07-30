tag @s[x=736.0,y=20,z=52.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=736.0,y=20,z=52.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=736.0,y=20,z=52.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run scoreboard players operation #sitting_room_coat_rack SearcherID = #temp ID
execute if entity @s[x=736.0,y=20,z=52.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/sitting_room/search/boo_check/coat_rack