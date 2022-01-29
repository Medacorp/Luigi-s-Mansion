tag @s[x=695.0,y=21,z=-78.0,dx=0,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=695.0,y=21,z=-78.0,dx=0,dy=0,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=695.0,y=21,z=-78.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/sealed_room/search/chest_5