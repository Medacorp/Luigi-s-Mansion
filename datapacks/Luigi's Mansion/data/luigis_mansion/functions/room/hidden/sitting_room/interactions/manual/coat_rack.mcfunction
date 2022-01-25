tag @s[x=736.0,y=20,z=52.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=736.0,y=20,z=52.0,dx=0,dy=1,dz=0,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=736.0,y=20,z=52.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/sitting_room/search/coat_rack