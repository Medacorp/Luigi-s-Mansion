tag @s[x=740.0,y=29,z=12.0,dx=3,dy=3,dz=1,tag=check] add can_interact
execute if entity @s[x=740.0,y=29,z=12.0,dx=3,dy=3,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=740.0,y=29,z=12.0,dx=3,dy=3,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/telephone_room/search/closet_2