tag @s[x=648.0,y=104,z=-31.0,dx=1,dy=1,dz=2,tag=check] add can_interact
execute if entity @s[x=648.0,y=104,z=-31.0,dx=1,dy=1,dz=2,tag=sound] run playsound luigis_mansion:block.search.stone block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=648.0,y=104,z=-31.0,dx=1,dy=1,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/graveyard/search/gravestone_4