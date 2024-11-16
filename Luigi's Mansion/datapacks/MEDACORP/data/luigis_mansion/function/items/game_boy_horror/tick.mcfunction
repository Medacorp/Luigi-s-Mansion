tag @s remove game_boy_horror_selected
tag @s[tag=!poltergust_selected,nbt={SelectedItem:{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}}] add game_boy_horror_selected

execute if entity @s[scores={ForceScreen=0}] if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] run function luigis_mansion:items/game_boy_horror/change_screen
scoreboard players set @s ForceScreen 0
execute if entity @s[scores={ForceRadar=0}] if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] run function #luigis_mansion:items/game_boy_horror/radar_type
scoreboard players set @s ForceRadar 0

execute if entity @s[scores={UseItem=1..},tag=game_boy_horror_selected,tag=!show_credits,tag=!using_selection_menu,tag=!disable_game_boy_horror] run function luigis_mansion:selection_menu/game_boy_horror/original_menu
tellraw @s[scores={UseItem=1..},tag=game_boy_horror_selected,tag=show_credits,tag=!disable_game_boy_horror] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.use_game_boy_horror_during_credits"}]}
scoreboard players set @s[scores={UseItem=1..},tag=game_boy_horror_selected] UseItem 0