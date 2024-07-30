tag @s[x=677.0,y=20,z=-48.0,dx=0,dy=4,dz=3,tag=check] add can_interact
execute if entity @s[x=677.0,y=20,z=-48.0,dx=0,dy=4,dz=3,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=677.0,y=20,z=-48.0,dx=0,dy=4,dz=3,tag=!sound,tag=!check] run scoreboard players operation #wardrobe_room_mirror SearcherID = #temp ID
execute if entity @s[x=677.0,y=20,z=-48.0,dx=0,dy=4,dz=3,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/wardrobe_room/search/boo_check/mirror