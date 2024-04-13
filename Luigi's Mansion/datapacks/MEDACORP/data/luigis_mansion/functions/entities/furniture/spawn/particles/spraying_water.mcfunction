tag @s[tag=in_fire] add moist
tag @s[tag=in_ice] remove moist
execute if entity @s[tag=moist] run function luigis_mansion:entities/furniture/spawn/particles/spray_water
execute if entity @s[tag=moist,scores={MirrorX=-2147483648..}] as @e[tag=temp,limit=1] run function luigis_mansion:entities/furniture/spawn/particles/mirror_x
execute if entity @s[tag=moist,scores={MirrorZ=-2147483648..}] as @e[tag=temp,limit=1] run function luigis_mansion:entities/furniture/spawn/particles/mirror_z