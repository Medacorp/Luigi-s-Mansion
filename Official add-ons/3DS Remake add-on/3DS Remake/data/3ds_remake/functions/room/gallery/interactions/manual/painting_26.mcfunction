execute if entity @s[x=765.0,y=3,z=-56.0,dx=0,dy=0,dz=2,tag=check] as @a[tag=searcher,limit=1] run function luigis_mansion:entities/player/animation/set/inspect
execute if entity @s[x=765.0,y=3,z=-56.0,dx=0,dy=0,dz=2,tag=check] run function 3ds_remake:room/gallery/check_portrait/boos
execute if entity @s[x=765.0,y=3,z=-56.0,dx=0,dy=0,dz=2,tag=check] run kill @e[tag=interact,tag=manual,tag=check]