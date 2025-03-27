tag @s[tag=element_in_fire] add moist
tag @s[tag=element_in_ice] remove moist
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRotationY
execute store result entity @s Rotation[1] float 1 run scoreboard players get @s HomeRotationX
execute if entity @s[tag=element_in_vacuum] positioned as @e[tag=temp,limit=1] positioned ~ ~-0.5 ~ facing entity @e[tag=vacuuming_me,sort=nearest,limit=1] feet positioned as @s run teleport @s ~ ~ ~ ~ ~
execute rotated as @s as @e[tag=temp,limit=1] positioned as @s run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=moist] as @e[tag=temp,limit=1] at @s run function luigis_mansion:entities/furniture/spawn/particles/direct_water {power:0.8f}
execute if entity @s[tag=moist,scores={MirrorX=-2147483648..}] as @e[tag=temp,limit=1] run function luigis_mansion:entities/furniture/spawn/particles/mirror_x
execute if entity @s[tag=moist,scores={MirrorZ=-2147483648..}] as @e[tag=temp,limit=1] run function luigis_mansion:entities/furniture/spawn/particles/mirror_z