tag @s[tag=in_fire] add moist
tag @s[tag=in_ice] remove moist
execute if entity @s[tag=moist] run particle minecraft:falling_water ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute if entity @s[tag=moist,scores={MirrorX=-2147483648..}] as @e[tag=temp,limit=1] run function luigis_mansion:entities/furniture/spawn/particles/mirror_x
execute if entity @s[tag=moist,scores={MirrorZ=-2147483648..}] as @e[tag=temp,limit=1] run function luigis_mansion:entities/furniture/spawn/particles/mirror_z