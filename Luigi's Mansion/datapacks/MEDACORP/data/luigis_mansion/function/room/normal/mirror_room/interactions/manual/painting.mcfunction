tag @s[x=741.0,y=12,z=-62.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=741.0,y=12,z=-62.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=741.0,y=12,z=-62.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run scoreboard players operation #mirror_room_painting SearcherID = #temp ID
execute if entity @s[x=741.0,y=12,z=-62.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/mirror_room/search/boo_check/painting