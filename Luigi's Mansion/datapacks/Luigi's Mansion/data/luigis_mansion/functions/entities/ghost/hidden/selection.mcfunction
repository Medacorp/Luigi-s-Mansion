execute if data entity @s ArmorItems[{id:"minecraft:oak_button"}] run data modify entity @s ArmorItems[3].id set value "minecraft:leather_chestplate"
execute if data entity @s HandItems[{id:"minecraft:oak_button"}] run data modify entity @s HandItems[0].id set value "minecraft:leather_chestplate"
execute if data entity @s HandItems[{id:"minecraft:oak_button"}] run data modify entity @s HandItems[1].id set value "minecraft:leather_chestplate"
execute if data entity @s ArmorItems[{id:"minecraft:stone_button"}] run data modify entity @s ArmorItems[3].id set value "minecraft:diamond_pickaxe"
execute if data entity @s HandItems[{id:"minecraft:stone_button"}] run data modify entity @s HandItems[0].id set value "minecraft:diamond_pickaxe"
execute if data entity @s HandItems[{id:"minecraft:stone_button"}] run data modify entity @s HandItems[1].id set value "minecraft:diamond_pickaxe"
data modify entity @s CustomNameVisible set value 1b
data modify entity @s Marker set value 0b
execute as @e[tag=this_model] if data entity @s ArmorItems[{id:"minecraft:oak_button"}] run data modify entity @s ArmorItems[3].id set value "minecraft:leather_chestplate"
execute as @e[tag=this_model] if data entity @s HandItems[{id:"minecraft:oak_button"}] run data modify entity @s HandItems[0].id set value "minecraft:leather_chestplate"
execute as @e[tag=this_model] if data entity @s HandItems[{id:"minecraft:oak_button"}] run data modify entity @s HandItems[1].id set value "minecraft:leather_chestplate"
execute as @e[tag=this_model] if data entity @s ArmorItems[{id:"minecraft:stone_button"}] run data modify entity @s ArmorItems[3].id set value "minecraft:diamond_pickaxe"
execute as @e[tag=this_model] if data entity @s HandItems[{id:"minecraft:stone_button"}] run data modify entity @s HandItems[0].id set value "minecraft:diamond_pickaxe"
execute as @e[tag=this_model] if data entity @s HandItems[{id:"minecraft:stone_button"}] run data modify entity @s HandItems[1].id set value "minecraft:diamond_pickaxe"
execute at @s facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s AnimationProg 0
scoreboard players set @s SpawnTime 0
tag @s add visible
tag @s remove hidden
tag @s remove can_spawn
tag @s remove try_spawn
tag @s remove spawn_now
tag @s remove new_ghost