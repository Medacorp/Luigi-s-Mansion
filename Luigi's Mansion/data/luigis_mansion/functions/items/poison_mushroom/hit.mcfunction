scoreboard players set @s Shruk 201
playsound luigis_mansion:item.poison_mushroom.obtain player @a[tag=same_room] ~ ~ ~ 1
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.money.gold_coin
execute if score #temp Time matches 1.. positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
execute if score #temp Time matches 2.. positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
execute if score #temp Time matches 3.. positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
execute if score #temp Time matches 4.. positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
execute if score #temp Time matches 5.. positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
execute if score #temp Time matches 6.. positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
execute if score #temp Time matches 7.. positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
execute if score #temp Time matches 8.. positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
execute if score #temp Time matches 9.. positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
execute if score #temp Time matches 10.. positioned ~ ~2 ~ run function luigis_mansion:spawn_entities/item/gold_coin
execute if score #temp Time matches 1.. positioned ~ ~1 ~ as @e[tag=gold_coin,distance=..0.7] unless entity @s[scores={SpawnedTime=1..}] run scoreboard players set @s SpawnedTime 100
execute store result storage luigis_mansion:data current_state.current_data.money.gold_coin int 1 run scoreboard players remove #temp Time 10
execute store result storage luigis_mansion:data current_state.current_data.money.gold_coin int 1 if score #temp Time matches ..0 run scoreboard players set #temp Time 0
scoreboard players reset #temp Time
execute unless entity @s[scores={Shrunk=1..}] run function luigis_mansion:items/poison_mushroom/remove_inventory
scoreboard players set @s Shrunk 201