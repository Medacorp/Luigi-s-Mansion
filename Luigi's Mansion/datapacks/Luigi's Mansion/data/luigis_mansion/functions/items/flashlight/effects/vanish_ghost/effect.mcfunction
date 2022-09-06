playsound luigis_mansion:entity.ghost.flash_vanish hostile @a[tag=same_room] ~ ~ ~ 1
execute if data entity @s ArmorItems[{id:"minecraft:leather_chestplate"}] run data modify entity @s ArmorItems[3].id set value "minecraft:oak_button"
execute if data entity @s HandItems[{id:"minecraft:leather_chestplate"}] run data modify entity @s HandItems[0].id set value "minecraft:oak_button"
execute if data entity @s HandItems[{id:"minecraft:leather_chestplate"}] run data modify entity @s HandItems[1].id set value "minecraft:oak_button"
execute if data entity @s ArmorItems[{id:"minecraft:diamond_pickaxe"}] run data modify entity @s ArmorItems[3].id set value "minecraft:stone_button"
execute if data entity @s HandItems[{id:"minecraft:diamond_pickaxe"}] run data modify entity @s HandItems[0].id set value "minecraft:stone_button"
execute if data entity @s HandItems[{id:"minecraft:diamond_pickaxe"}] run data modify entity @s HandItems[1].id set value "minecraft:stone_button"
data modify entity @s CustomNameVisible set value 0b
data modify entity @s Marker set value 1b
scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=model_piece,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add this_model
execute as @e[tag=this_model] if data entity @s ArmorItems[{id:"minecraft:leather_chestplate"}] run data modify entity @s ArmorItems[3].id set value "minecraft:oak_button"
execute as @e[tag=this_model] if data entity @s HandItems[{id:"minecraft:leather_chestplate"}] run data modify entity @s HandItems[0].id set value "minecraft:oak_button"
execute as @e[tag=this_model] if data entity @s HandItems[{id:"minecraft:leather_chestplate"}] run data modify entity @s HandItems[1].id set value "minecraft:oak_button"
execute as @e[tag=this_model] if data entity @s ArmorItems[{id:"minecraft:diamond_pickaxe"}] run data modify entity @s ArmorItems[3].id set value "minecraft:stone_button"
execute as @e[tag=this_model] if data entity @s HandItems[{id:"minecraft:diamond_pickaxe"}] run data modify entity @s HandItems[0].id set value "minecraft:stone_button"
execute as @e[tag=this_model] if data entity @s HandItems[{id:"minecraft:diamond_pickaxe"}] run data modify entity @s HandItems[1].id set value "minecraft:stone_button"
scoreboard players reset #temp GhostNr
tag @e[tag=this_model] add found_owner
tag @e[tag=this_model] remove this_model
tag @s remove visible
tag @s add vanish
scoreboard players set @s ActionTime 0
scoreboard players set @s AnimationProg 0