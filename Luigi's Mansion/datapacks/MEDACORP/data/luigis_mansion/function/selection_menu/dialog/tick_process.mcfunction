execute unless data storage luigis_mansion:data macro.namespace run data modify storage luigis_mansion:data macro.namespace set value "luigis_mansion"
execute store result score #temp ActionTime run clear @s *[minecraft:custom_data~{namespace:"luigis_mansion",id:"game_boy_horror"}] 0
execute unless entity @s[scores={ForceScreen=0..}] run clear @s *[minecraft:custom_data~{namespace:"luigis_mansion",id:"game_boy_horror"}]
execute if score #temp ActionTime matches 0 run item replace entity @s[scores={ForceScreen=0..}] weapon.offhand with minecraft:carrot_on_a_stick[minecraft:unbreakable={show_in_tooltip:0b},minecraft:damage=0,minecraft:max_damage=4,minecraft:item_model="luigis_mansion:game_boy_horror",minecraft:custom_model_data=0,minecraft:item_name='{"type":"translatable","translate":"luigis_mansion:item.game_boy_horror"}',minecraft:custom_data={namespace:"luigis_mansion",id:"game_boy_horror",kill:1b}]
execute if entity @s[scores={ForceScreen=0..}] run function luigis_mansion:items/game_boy_horror/change_screen
scoreboard players reset #temp ActionTime
execute unless entity @s[scores={ForceRadar=1}] if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] run function #luigis_mansion:items/game_boy_horror/radar_type
execute if entity @s[scores={ForceRadar=1},nbt={Inventory:[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]},nbt=!{Inventory:[{components:{"minecraft:damage":3,"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] run function luigis_mansion:items/game_boy_horror/turn_radar_red
scoreboard players reset @s ForceScreen
scoreboard players reset @s ForceRadar
execute if entity @s[tag=!in_dialog] run function luigis_mansion:selection_menu/dialog/exit
tag @s remove next_dialog_line
tag @s remove skip_dialog
tag @s remove in_dialog