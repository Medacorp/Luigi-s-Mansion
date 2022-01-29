tag @s[x=714.0,y=11,z=-59.0,dx=1,dy=1,dz=2,tag=check] add can_interact
execute if entity @s[x=714.0,y=11,z=-59.0,dx=1,dy=1,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=714.0,y=11,z=-59.0,dx=1,dy=1,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/laundry_room/search/washing_machine