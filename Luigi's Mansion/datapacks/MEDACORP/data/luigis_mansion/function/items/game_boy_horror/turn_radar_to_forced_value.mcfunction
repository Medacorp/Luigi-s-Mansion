execute store result score #temp ActionTime run clear @s *[minecraft:custom_data~{namespace:"luigis_mansion",id:"game_boy_horror"}] 0
execute if score #temp ActionTime matches 0 run item replace entity @s[tag=using_selection_menu] weapon.offhand with minecraft:carrot_on_a_stick[minecraft:unbreakable={show_in_tooltip:0b},minecraft:item_model="luigis_mansion:game_boy_horror",minecraft:custom_model_data={flags:[B;0b,0b],strings:["off","none"],floats:[0f,0f,0f,0f]},minecraft:item_name='{"type":"translatable","translate":"luigis_mansion:item.game_boy_horror"}',minecraft:custom_data={namespace:"luigis_mansion",id:"game_boy_horror",kill:1b}]
scoreboard players reset #temp ActionTime
data modify storage luigis_mansion:data inventory set from entity @s Inventory
scoreboard players reset #temp Time
execute if data storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}] run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]
$execute if data storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}] run data modify storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".strings[0] set value "$(value)"
execute if data storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}] store success score #temp Time run data modify storage luigis_mansion:data temp set from entity @s Inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]
execute if data storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}] run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".strings[0]
execute if score #temp Time matches 1 run function luigis_mansion:other/sync_inventory
execute unless data storage luigis_mansion:data {temp:"off"} unless data storage luigis_mansion:data {temp:"on"} run scoreboard players add @s GBHRadar 1
execute if data storage luigis_mansion:data {temp:"on_top"} run scoreboard players add @s GBHRadar 15
execute if data storage luigis_mansion:data {temp:"here"} run scoreboard players add @s GBHRadar 12
execute if data storage luigis_mansion:data {temp:"close"} run scoreboard players add @s GBHRadar 9
execute if data storage luigis_mansion:data {temp:"nearby"} run scoreboard players add @s GBHRadar 6
execute if data storage luigis_mansion:data {temp:"approaching"} run scoreboard players add @s GBHRadar 3
execute if entity @s[scores={GBHRadar=40..}] unless score #freeze_timer Selected matches 1 run playsound luigis_mansion:item.game_boy_horror.radar player @s ~ ~ ~ 0.5
scoreboard players set @s[scores={GBHRadar=40..}] GBHRadar 0
data remove storage luigis_mansion:data temp
data remove storage luigis_mansion:data inventory
scoreboard players reset #temp Time
scoreboard players set @s ForceRadar 1