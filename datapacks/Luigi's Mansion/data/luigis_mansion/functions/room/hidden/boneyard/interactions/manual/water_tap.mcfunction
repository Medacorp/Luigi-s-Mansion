tag @s[x=681.0,y=102,z=-25.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=681.0,y=102,z=-25.0,dx=0,dy=1,dz=1,tag=sound] run playsound luigis_mansion:block.search.metal block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=681.0,y=102,z=-25.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/boneyard/search/water_tap