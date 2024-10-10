execute store result score #temp ActionTime run clear @s *[minecraft:custom_data~{namespace:"luigis_mansion",id:"game_boy_horror"}] 0
execute if score #temp ActionTime matches 0 run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[minecraft:unbreakable={show_in_tooltip:0b},minecraft:damage=0,minecraft:max_damage=4,minecraft:item_model="luigis_mansion:game_boy_horror",minecraft:custom_model_data=0,minecraft:item_name='{"type":"translatable","translate":"luigis_mansion:item.game_boy_horror"}',minecraft:custom_data={namespace:"luigis_mansion",id:"game_boy_horror",kill:1b}]
scoreboard players reset #temp ActionTime
function luigis_mansion:items/game_boy_horror/show_ghost_presence
function luigis_mansion:items/game_boy_horror/change_screen
execute unless entity @s[scores={ForceRadar=1}] if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] run function #luigis_mansion:items/game_boy_horror/radar_type
execute if entity @s[scores={ForceRadar=1},nbt={Inventory:[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]},nbt=!{Inventory:[{components:{"minecraft:damage":3,"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] run function luigis_mansion:items/game_boy_horror/turn_radar_red
execute if entity @s[scores={ForceRadar=1}] unless score #freeze_timer Selected matches 1 run playsound luigis_mansion:item.game_boy_horror.radar player @s ~ ~ ~ 0.5
execute if entity @s[tag=warp] run function luigis_mansion:selection_menu/game_boy_horror/scan/warp
execute if entity @s[tag=scanning,scores={TeleportDelayTimer=0}] unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{option:{update_debug_variables:1b}}}}]}] run function luigis_mansion:selection_menu/game_boy_horror/tick_scanning
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{option:{update_debug_variables:1b}}}}]},scores={TeleportDelayTimer=0}] run function luigis_mansion:selection_menu/game_boy_horror/tick_scanning
