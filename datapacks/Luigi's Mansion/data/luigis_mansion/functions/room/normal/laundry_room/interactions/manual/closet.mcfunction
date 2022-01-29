tag @s[x=714.0,y=11,z=67.0,dx=2,dy=2,dz=2,tag=check] add can_interact
execute if entity @s[x=714.0,y=11,z=67.0,dx=2,dy=2,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=714.0,y=11,z=67.0,dx=2,dy=2,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/normal/laundry_room/search/closet