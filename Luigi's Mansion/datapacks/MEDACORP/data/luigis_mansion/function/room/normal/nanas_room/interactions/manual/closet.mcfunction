tag @s[x=660.0,y=20,z=-27.0,dx=2,dy=2,dz=0,tag=check] add can_interact
execute if entity @s[x=660.0,y=20,z=-27.0,dx=2,dy=2,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=660.0,y=20,z=-27.0,dx=2,dy=2,dz=0,tag=!sound,tag=!check] run scoreboard players operation #nanas_room_closet SearcherID = #temp ID
execute if entity @s[x=660.0,y=20,z=-27.0,dx=2,dy=2,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/nanas_room/search/boo_check/closet