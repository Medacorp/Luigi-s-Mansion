tag @s[scores={ActionTime=-1},tag=open] remove spawn_particles
execute if entity @s[tag=!open] run particle minecraft:crit ~ ~ ~ 0.6 0.6 0.6 0 1 normal @a[tag=same_room]
execute if entity @s[tag=!open,scores={MirrorX=-2147483648..}] as @e[tag=temp,limit=1] run function luigis_mansion:entities/furniture/spawn/particles/mirror_x
execute if entity @s[tag=!open,scores={MirrorZ=-2147483648..}] as @e[tag=temp,limit=1] run function luigis_mansion:entities/furniture/spawn/particles/mirror_z