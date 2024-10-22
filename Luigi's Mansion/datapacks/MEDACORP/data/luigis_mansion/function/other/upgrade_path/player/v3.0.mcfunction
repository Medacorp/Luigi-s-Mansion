scoreboard players set @s UpgradePlayer 1
execute unless entity @s[scores={Room=0}] in minecraft:overworld run teleport @s 758 90 8.0 -90 0
scoreboard players set @s Room 0
scoreboard players set @s LastRoom 0
tag @s[gamemode=spectator] add dead_player
attribute @s minecraft:jump_strength base set 0
attribute @s[scores={Shrunk=1..}] minecraft:scale base set 0.5

execute if data entity @s Inventory[{components:{"minecraft:custom_data":{luigis_mansion:{id:"luigis_mansion:contest_reward_map"}}}}] store result score #temp Time run data get entity @s Inventory[{components:{"minecraft:custom_data":{luigis_mansion:{id:"luigis_mansion:contest_reward_map"}}}}].Slot
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{luigis_mansion:{id:"luigis_mansion:interact"}}}}] store result score #temp2 Time run data get entity @s Inventory[{components:{"minecraft:custom_data":{luigis_mansion:{id:"luigis_mansion:interact"}}}}].Slot
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{luigis_mansion:{id:"luigis_mansion:flashlight"}}}}] store result score #temp3 Time run data get entity @s Inventory[{components:{"minecraft:custom_data":{luigis_mansion:{id:"luigis_mansion:flashlight"}}}}].Slot
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}}] store result score #temp4 Time run data get entity @s Inventory[{components:{"minecraft:custom_data":{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}}].Slot
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{luigis_mansion:{is_poltergust:1b}}}}] store result score #temp5 Time run data get entity @s Inventory[{components:{"minecraft:custom_data":{luigis_mansion:{is_poltergust:1b}}}}].Slot
clear @s
execute if score #temp Time matches -106.. run give @s minecraft:diamond_pickaxe[minecraft:unbreakable={show_in_tooltip:0b},minecraft:attribute_modifiers={modifiers:[]},minecraft:item_model="luigis_mansion:contest_reward_map",minecraft:item_name='{"type":"translatable","translate":"luigis_mansion:item.contest_reward_map"}',minecraft:custom_data={namespace:"luigis_mansion",id:"contest_reward_map"}]
execute if score #temp2 Time matches -106.. run function luigis_mansion:items/interact/give
execute if score #temp3 Time matches -106.. run function luigis_mansion:items/flashlight/give
execute if score #temp4 Time matches -106.. run function luigis_mansion:items/game_boy_horror/give
execute if score #temp5 Time matches -106.. run function luigis_mansion:items/poltergust_3000/give
data modify storage luigis_mansion:data inventory set from entity @s Inventory
execute if score #temp Time matches -106.. store result storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"contest_reward_map"}}}].Slot byte 1 run scoreboard players get #temp Time
execute if score #temp2 Time matches -106.. store result storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"interact"}}}].Slot byte 1 run scoreboard players get #temp2 Time
execute if score #temp3 Time matches -106.. store result storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}].Slot byte 1 run scoreboard players get #temp3 Time
execute if score #temp4 Time matches -106.. store result storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].Slot byte 1 run scoreboard players get #temp4 Time
execute if score #temp5 Time matches -106.. store result storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"poltergust_3000"}}}].Slot byte 1 run scoreboard players get #temp5 Time
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
scoreboard players reset #temp4 Time
scoreboard players reset #temp5 Time
function luigis_mansion:other/sync_inventory