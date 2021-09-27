execute if data entity @s ArmorItems[{id:"minecraft:leather_chestplate"}] run data modify entity @s ArmorItems[3].id set value "minecraft:oak_button"
execute if data entity @s HandItems[{id:"minecraft:leather_chestplate"}] run data modify entity @s HandItems[0].id set value "minecraft:oak_button"
execute if data entity @s HandItems[{id:"minecraft:leather_chestplate"}] run data modify entity @s HandItems[1].id set value "minecraft:oak_button"
execute if data entity @s ArmorItems[{id:"minecraft:diamond_pickaxe"}] run data modify entity @s ArmorItems[3].id set value "minecraft:stone_button"
execute if data entity @s HandItems[{id:"minecraft:diamond_pickaxe"}] run data modify entity @s HandItems[0].id set value "minecraft:stone_button"
execute if data entity @s HandItems[{id:"minecraft:diamond_pickaxe"}] run data modify entity @s HandItems[1].id set value "minecraft:stone_button"
data modify entity @s CustomNameVisible set value 0b
data modify entity @s Marker set value 1b
execute as @e[tag=this_model] if data entity @s ArmorItems[{id:"minecraft:leather_chestplate"}] run data modify entity @s ArmorItems[3].id set value "minecraft:oak_button"
execute as @e[tag=this_model] if data entity @s HandItems[{id:"minecraft:leather_chestplate"}] run data modify entity @s HandItems[0].id set value "minecraft:oak_button"
execute as @e[tag=this_model] if data entity @s HandItems[{id:"minecraft:leather_chestplate"}] run data modify entity @s HandItems[1].id set value "minecraft:oak_button"
execute as @e[tag=this_model] if data entity @s ArmorItems[{id:"minecraft:diamond_pickaxe"}] run data modify entity @s ArmorItems[3].id set value "minecraft:stone_button"
execute as @e[tag=this_model] if data entity @s HandItems[{id:"minecraft:diamond_pickaxe"}] run data modify entity @s HandItems[0].id set value "minecraft:stone_button"
execute as @e[tag=this_model] if data entity @s HandItems[{id:"minecraft:diamond_pickaxe"}] run data modify entity @s HandItems[1].id set value "minecraft:stone_button"
execute if entity @s[tag=no_hidden_move] run teleport @s ~ ~ ~ ~ 90
execute if entity @s[tag=!no_hidden_move] run teleport @s ~ ~ ~ ~ 0
execute if entity @s[tag=!no_hidden_move] run function luigis_mansion:entities/ghost/hidden/turn
execute if entity @s[scores={HomeX=-2147483648..}] store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute if entity @s[scores={HomeY=-2147483648..}] store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute if entity @s[scores={HomeZ=-2147483648..}] store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
tag @s[tag=disappear_on_vanish] add remove_from_existence
scoreboard players set @s SpawnTime 200
scoreboard players set @s Time 0
scoreboard players set @s ActionTime 0
scoreboard players operation @s LastHealth = @s Health
tag @s remove disappear
tag @s remove disappear_next_tick
tag @s remove hurt_animation
tag @s remove vanish
tag @s remove visible
tag @s add hidden