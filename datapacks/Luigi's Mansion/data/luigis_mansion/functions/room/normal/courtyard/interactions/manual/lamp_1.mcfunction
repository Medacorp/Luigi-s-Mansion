tag @s[x=644.0,y=102,z=17.0,dx=2,dy=7,dz=2,tag=check] add can_interact
execute if entity @s[x=644.0,y=102,z=17.0,dx=2,dy=7,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=644.0,y=102,z=17.0,dx=2,dy=7,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/normal/courtyard/search/lamp_1