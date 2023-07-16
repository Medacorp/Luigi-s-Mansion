playsound luigis_mansion:item.poison_mushroom.obtain player @a[tag=same_room] ~ ~ ~ 1
scoreboard players operation #temp ID = @s ID
execute as @e[tag=model_piece,nbt=!{Small:1b}] if score @s ID = #temp ID run data merge entity @s {Small:1b}
scoreboard players reset #temp ID
function luigis_mansion:entities/player/get_my_coins
execute if score #temp ActionTime matches 1.. if entity @s[scores={Room=1..}] positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
scoreboard players set @e[tag=this_entity,limit=1] SpawnedTime 100
tag @e[tag=this_entity,limit=1] remove this_entity
execute if score #temp ActionTime matches 2.. if entity @s[scores={Room=1..}] positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
scoreboard players set @e[tag=this_entity,limit=1] SpawnedTime 100
tag @e[tag=this_entity,limit=1] remove this_entity
execute if score #temp ActionTime matches 3.. if entity @s[scores={Room=1..}] positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
scoreboard players set @e[tag=this_entity,limit=1] SpawnedTime 100
tag @e[tag=this_entity,limit=1] remove this_entity
execute if score #temp ActionTime matches 4.. if entity @s[scores={Room=1..}] positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
scoreboard players set @e[tag=this_entity,limit=1] SpawnedTime 100
tag @e[tag=this_entity,limit=1] remove this_entity
execute if score #temp ActionTime matches 5.. if entity @s[scores={Room=1..}] positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
scoreboard players set @e[tag=this_entity,limit=1] SpawnedTime 100
tag @e[tag=this_entity,limit=1] remove this_entity
execute if score #temp ActionTime matches 6.. if entity @s[scores={Room=1..}] positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
scoreboard players set @e[tag=this_entity,limit=1] SpawnedTime 100
tag @e[tag=this_entity,limit=1] remove this_entity
execute if score #temp ActionTime matches 7.. if entity @s[scores={Room=1..}] positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
scoreboard players set @e[tag=this_entity,limit=1] SpawnedTime 100
tag @e[tag=this_entity,limit=1] remove this_entity
execute if score #temp ActionTime matches 8.. if entity @s[scores={Room=1..}] positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
scoreboard players set @e[tag=this_entity,limit=1] SpawnedTime 100
tag @e[tag=this_entity,limit=1] remove this_entity
execute if score #temp ActionTime matches 9.. if entity @s[scores={Room=1..}] positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
scoreboard players set @e[tag=this_entity,limit=1] SpawnedTime 100
tag @e[tag=this_entity,limit=1] remove this_entity
execute if score #temp ActionTime matches 10.. if entity @s[scores={Room=1..}] positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
scoreboard players set @e[tag=this_entity,limit=1] SpawnedTime 100
tag @e[tag=this_entity,limit=1] remove this_entity
execute if score #temp ActionTime matches 1.. if entity @s[scores={Room=1..}] run scoreboard players remove #temp ActionTime 10
execute if score #temp ActionTime matches ..0 run scoreboard players set #temp ActionTime 0
function luigis_mansion:entities/player/reduce_my_coins
execute unless entity @s[scores={Shrunk=1..}] in minecraft:overworld run function luigis_mansion:items/poison_mushroom/remove_inventory
scoreboard players set @s Shrunk 201
tag @s remove vacuuming_ghost