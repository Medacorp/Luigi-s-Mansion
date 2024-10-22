execute unless entity @s[scores={UpgradePlayer=3}] run function luigis_mansion:other/upgrade_path/player/v3.0.2
scoreboard players set @s UpgradePlayer 4

execute unless score #temp UpgradePlayer matches 0 if data entity @s Inventory[{components:{"minecraft:custom_data":{id:"luigis_mansion",id:"contest_reward_map"}}}] store result score #temp Time run data get entity @s Inventory[{components:{"minecraft:custom_data":{id:"luigis_mansion",id:"contest_reward_map"}}}].Slot
execute unless score #temp UpgradePlayer matches 0 if data entity @s Inventory[{components:{"minecraft:custom_data":{id:"luigis_mansion",id:"interact"}}}] store result score #temp2 Time run data get entity @s Inventory[{components:{"minecraft:custom_data":{id:"luigis_mansion",id:"interact"}}}].Slot
execute unless score #temp UpgradePlayer matches 0 if data entity @s Inventory[{components:{"minecraft:custom_data":{id:"luigis_mansion",id:"flashlight"}}}] store result score #temp3 Time run data get entity @s Inventory[{components:{"minecraft:custom_data":{id:"luigis_mansion",id:"flashlight"}}}].Slot
execute unless score #temp UpgradePlayer matches 0 if data entity @s Inventory[{components:{"minecraft:custom_data":{id:"luigis_mansion",id:"game_boy_horror"}}}] store result score #temp4 Time run data get entity @s Inventory[{components:{"minecraft:custom_data":{id:"luigis_mansion",id:"game_boy_horror"}}}].Slot
execute unless score #temp UpgradePlayer matches 0 if data entity @s Inventory[{components:{"minecraft:custom_data":{is_poltergust:1b}}}] store result score #temp5 Time run data get entity @s Inventory[{components:{"minecraft:custom_data":{is_poltergust:1b}}}].Slot
execute unless score #temp UpgradePlayer matches 0 run clear @s
execute unless score #temp UpgradePlayer matches 0 if score #temp Time matches -106.. run give @s minecraft:diamond_pickaxe[minecraft:unbreakable={show_in_tooltip:0b},minecraft:attribute_modifiers={modifiers:[]},minecraft:item_model="luigis_mansion:contest_reward_map",minecraft:item_name='{"type":"translatable","translate":"luigis_mansion:item.contest_reward_map"}',minecraft:custom_data={namespace:"luigis_mansion",id:"contest_reward_map"}]
execute unless score #temp UpgradePlayer matches 0 if score #temp2 Time matches -106.. run function luigis_mansion:items/interact/give
execute unless score #temp UpgradePlayer matches 0 if score #temp3 Time matches -106.. run function luigis_mansion:items/flashlight/give
execute unless score #temp UpgradePlayer matches 0 if score #temp4 Time matches -106.. run function luigis_mansion:items/game_boy_horror/give
execute unless score #temp UpgradePlayer matches 0 if score #temp5 Time matches -106.. run function luigis_mansion:items/poltergust_3000/give
execute unless score #temp UpgradePlayer matches 0 run data modify storage luigis_mansion:data inventory set from entity @s Inventory
execute unless score #temp UpgradePlayer matches 0 if score #temp Time matches -106.. store result storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"contest_reward_map"}}}].Slot byte 1 run scoreboard players get #temp Time
execute unless score #temp UpgradePlayer matches 0 if score #temp2 Time matches -106.. store result storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"interact"}}}].Slot byte 1 run scoreboard players get #temp2 Time
execute unless score #temp UpgradePlayer matches 0 if score #temp3 Time matches -106.. store result storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}].Slot byte 1 run scoreboard players get #temp3 Time
execute unless score #temp UpgradePlayer matches 0 if score #temp4 Time matches -106.. store result storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].Slot byte 1 run scoreboard players get #temp4 Time
execute unless score #temp UpgradePlayer matches 0 if score #temp5 Time matches -106.. store result storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"poltergust_3000"}}}].Slot byte 1 run scoreboard players get #temp5 Time
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
scoreboard players reset #temp4 Time
scoreboard players reset #temp5 Time
execute unless score #temp UpgradePlayer matches 0 run function luigis_mansion:other/sync_inventory