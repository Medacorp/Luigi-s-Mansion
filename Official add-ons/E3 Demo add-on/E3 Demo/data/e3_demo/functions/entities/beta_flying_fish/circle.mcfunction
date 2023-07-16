summon minecraft:marker ^ ^ ^ {Tags:["target"]}
execute store result entity @e[tag=target,limit=1] Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @e[tag=target,limit=1] Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @e[tag=target,limit=1] Pos[2] double 0.01 run scoreboard players get @s HomeZ

execute if entity @e[tag=target,limit=1,distance=0.7..] facing entity @e[tag=target,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if score #mirrored Selected matches 0 if entity @e[tag=target,limit=1,distance=0.5..0.7] facing entity @e[tag=target,limit=1] feet rotated ~88 ~ run teleport @s ~ ~ ~ ~ ~
execute if score #mirrored Selected matches 1 if entity @e[tag=target,limit=1,distance=0.5..0.7] facing entity @e[tag=target,limit=1] feet rotated ~-88 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @e[tag=target,limit=1,distance=..0.5] facing entity @e[tag=target,limit=1] feet rotated ~180 ~ run teleport @s ~ ~ ~ ~ ~

execute at @s run function luigis_mansion:entities/ghost/move_force
kill @e[type=minecraft:marker,tag=target]