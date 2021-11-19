scoreboard players set @s Shruk 201
playsound luigis_mansion:item.poison_mushroom.obtain player @a[tag=same_room] ~ ~ ~ 1
scoreboard players operation #temp ID = @s ID
execute as @e[tag=model_piece,nbt=!{Small:1b}] if score @s ID = #temp ID run data merge entity @s {Small:1b}
scoreboard players reset #temp ID
function luigis_mansion:entities/player/get_my_coins
execute if score #temp ActionTime matches 1.. run function luigis_mansion:entities/player/drop_gold_coins
execute if score #temp ActionTime matches 1.. positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
execute if score #temp ActionTime matches 2.. positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
execute if score #temp ActionTime matches 3.. positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
execute if score #temp ActionTime matches 4.. positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
execute if score #temp ActionTime matches 5.. positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
execute if score #temp ActionTime matches 6.. positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
execute if score #temp ActionTime matches 7.. positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
execute if score #temp ActionTime matches 8.. positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
execute if score #temp ActionTime matches 9.. positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
execute if score #temp ActionTime matches 10.. positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
execute if score #temp ActionTime matches 1.. positioned ~ ~1 ~ as @e[tag=gold_coin,distance=..0.7] unless entity @s[scores={SpawnedTime=1..}] run scoreboard players set @s SpawnedTime 100
scoreboard players remove #temp ActionTime 10
execute if score #temp ActionTime matches ..0 run scoreboard players set #temp ActionTime 0
function luigis_mansion:entities/player/reduce_my_coins
execute unless entity @s[scores={Shrunk=1..}] in minecraft:overworld run function luigis_mansion:items/poison_mushroom/remove_inventory
scoreboard players set @s Shrunk 201