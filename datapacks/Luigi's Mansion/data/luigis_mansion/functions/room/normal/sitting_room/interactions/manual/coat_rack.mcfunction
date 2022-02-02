tag @s[x=736.0,y=20,z=-37.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=736.0,y=20,z=-37.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=736.0,y=20,z=-37.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/sitting_room/search/boo_check/coat_rack