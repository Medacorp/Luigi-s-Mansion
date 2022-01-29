tag @s[x=740.0,y=29,z=2.0,dx=3,dy=3,dz=1,tag=check] add can_interact
execute if entity @s[x=740.0,y=29,z=2.0,dx=3,dy=3,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=740.0,y=29,z=2.0,dx=3,dy=3,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/telephone_room/search/closet_2