tag @s[tag=in_ice] add chilly
tag @s[tag=in_fire] remove chilly
execute if entity @s[tag=chilly] run particle minecraft:cloud ~ ~ ~ 0.4 0.1 0.4 0 1 normal @a[tag=same_room]
execute if entity @s[tag=chilly,scores={MirrorX=-2147483648..}] as @e[tag=temp,limit=1] run function luigis_mansion:entities/furniture/spawn/particles/mirror_x
execute if entity @s[tag=chilly,scores={MirrorZ=-2147483648..}] as @e[tag=temp,limit=1] run function luigis_mansion:entities/furniture/spawn/particles/mirror_z