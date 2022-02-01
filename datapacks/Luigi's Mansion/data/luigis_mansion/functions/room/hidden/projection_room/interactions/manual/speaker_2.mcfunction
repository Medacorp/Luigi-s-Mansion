tag @s[x=675.0,y=11,z=-18.0,dx=1,dy=3,dz=1,tag=check] add can_interact
execute if entity @s[x=675.0,y=11,z=-18.0,dx=1,dy=3,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=675.0,y=11,z=-18.0,dx=1,dy=3,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/projection_room/search/speaker_2