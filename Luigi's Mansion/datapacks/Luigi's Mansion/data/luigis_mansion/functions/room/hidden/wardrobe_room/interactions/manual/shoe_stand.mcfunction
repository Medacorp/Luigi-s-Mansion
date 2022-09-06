tag @s[x=684.0,y=20,z=-42.0,dx=2,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=684.0,y=20,z=-42.0,dx=2,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=684.0,y=20,z=-42.0,dx=2,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/wardrobe_room/search/boo_check/shoe_stand