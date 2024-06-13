tag @s[tag=in_fire] add lit
tag @s[tag=in_water] remove lit
execute if entity @s[tag=lit] run particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0 1 normal @a[tag=same_room]
execute if entity @s[tag=lit,scores={MirrorX=-2147483648..}] as @e[tag=temp,limit=1] run function luigis_mansion:entities/furniture/spawn/particles/mirror_x
execute if entity @s[tag=lit,scores={MirrorZ=-2147483648..}] as @e[tag=temp,limit=1] run function luigis_mansion:entities/furniture/spawn/particles/mirror_z