tag @s[x=689.0,y=111,z=-40.0,dx=3,dy=1,dz=4,tag=check] add can_interact
execute if entity @s[x=689.0,y=111,z=-40.0,dx=3,dy=1,dz=4,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=689.0,y=111,z=-40.0,dx=3,dy=1,dz=4,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/master_bedroom/search/bed