data modify entity @s ArmorItems[3].id set value "minecraft:diamond_pickaxe"
data modify entity @s HandItems[0].id set value "minecraft:diamond_pickaxe"
data modify entity @s HandItems[1].id set value "minecraft:diamond_pickaxe"
data modify entity @s CustomNameVisible set value 1b
execute as @e[tag=this_model] run data modify entity @s ArmorItems[3].id set value "minecraft:diamond_pickaxe"
execute as @e[tag=this_model] run data modify entity @s HandItems[0].id set value "minecraft:diamond_pickaxe"
execute as @e[tag=this_model] run data modify entity @s HandItems[1].id set value "minecraft:diamond_pickaxe"
execute at @s facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s AnimationProg 0
scoreboard players set @s SpawnTime 0
tag @s remove hidden
tag @s remove can_spawn
tag @s remove try_spawn
tag @s remove no_height_change
tag @s remove new_ghost