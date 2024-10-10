tag @s remove game_boy_horror_selected
tag @s[tag=!poltergust_selected,nbt={SelectedItem:{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}}] add game_boy_horror_selected

execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] run function luigis_mansion:items/game_boy_horror/change_screen

execute unless entity @s[scores={ForceRadar=1}] if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] run function #luigis_mansion:items/game_boy_horror/radar_type
execute if entity @s[scores={ForceRadar=1},nbt={Inventory:[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]},nbt=!{Inventory:[{components:{"minecraft:damage":3,"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] run function luigis_mansion:items/game_boy_horror/turn_radar_red
execute if entity @s[scores={ForceRadar=1}] unless score #freeze_timer Selected matches 1 run playsound luigis_mansion:item.game_boy_horror.radar player @s ~ ~ ~ 0.5
scoreboard players reset @s ForceRadar
execute if entity @s[scores={UseItem=1..},tag=game_boy_horror_selected,tag=!show_credits,tag=!using_selection_menu,tag=!disable_game_boy_horror] run function luigis_mansion:selection_menu/game_boy_horror/original_menu
tellraw @s[scores={UseItem=1..},tag=game_boy_horror_selected,tag=show_credits,tag=!disable_game_boy_horror] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.use_game_boy_horror_during_credits"}]}
scoreboard players set @s[scores={UseItem=1..},tag=game_boy_horror_selected] UseItem 0