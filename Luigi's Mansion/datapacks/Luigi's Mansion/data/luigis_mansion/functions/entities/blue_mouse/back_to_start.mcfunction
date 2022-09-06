execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
tag @s remove rotated
tag @s remove disappear
tag @s remove visible
data modify entity @s ArmorItems[3].id set value "minecraft:oak_button"
execute at @s run teleport @s ~ ~1.3 ~