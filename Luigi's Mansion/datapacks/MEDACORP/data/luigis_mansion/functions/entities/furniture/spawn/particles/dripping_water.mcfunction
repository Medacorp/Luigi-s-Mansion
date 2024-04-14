tag @s[tag=in_fire] add moist
tag @s[tag=in_ice] remove moist
teleport @s[x_rotation=..89] ~ ~ ~ ~ 90
execute facing entity @a[tag=vacuuming_me,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute rotated as @s as @e[tag=temp,limit=1] positioned as @s run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=moist] as @e[tag=temp,limit=1] at @s run function luigis_mansion:entities/furniture/spawn/particles/direct_water
execute if entity @s[tag=moist,scores={MirrorX=-2147483648..}] as @e[tag=temp,limit=1] run function luigis_mansion:entities/furniture/spawn/particles/mirror_x
execute if entity @s[tag=moist,scores={MirrorZ=-2147483648..}] as @e[tag=temp,limit=1] run function luigis_mansion:entities/furniture/spawn/particles/mirror_z