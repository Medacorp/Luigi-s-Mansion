tag @s[x=724.0,y=21,z=37.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=724.0,y=21,z=37.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=724.0,y=21,z=37.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/living_room/search/painting_2