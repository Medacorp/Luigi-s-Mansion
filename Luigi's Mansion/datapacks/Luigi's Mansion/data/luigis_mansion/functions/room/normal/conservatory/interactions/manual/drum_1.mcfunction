tag @s[x=656.0,y=11,z=-13.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=656.0,y=11,z=-13.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/drum
execute if entity @s[x=656.0,y=11,z=-13.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/conservatory/search/boo_check/drum_1