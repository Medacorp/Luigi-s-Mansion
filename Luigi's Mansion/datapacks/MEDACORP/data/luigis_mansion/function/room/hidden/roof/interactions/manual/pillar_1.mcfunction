tag @s[x=691.0,y=131,z=-27.0,dx=2,dy=3,dz=2,tag=check] add can_interact
execute if entity @s[x=691.0,y=131,z=-27.0,dx=2,dy=3,dz=2,tag=check] as @a[tag=searcher,limit=1] run function luigis_mansion:entities/player/animation/set/search/hump
execute if entity @s[x=691.0,y=131,z=-27.0,dx=2,dy=3,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/stone
execute if entity @s[x=691.0,y=131,z=-27.0,dx=2,dy=3,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/roof/search/pillar_1