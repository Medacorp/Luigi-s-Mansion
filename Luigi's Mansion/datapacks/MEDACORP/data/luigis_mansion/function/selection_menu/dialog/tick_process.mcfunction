execute unless data storage luigis_mansion:data macro.namespace run data modify storage luigis_mansion:data macro.namespace set value "luigis_mansion"
execute store result score #temp ActionTime run clear @s *[minecraft:custom_data~{namespace:"luigis_mansion",id:"game_boy_horror"}] 0
execute unless entity @s[scores={ForceScreen=0,ForceRadar=0}] run clear @s *[minecraft:custom_data~{namespace:"luigis_mansion",id:"game_boy_horror"}]
execute if score #temp ActionTime matches 0 unless entity @s[scores={ForceScreen=0,ForceRadar=0}] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[minecraft:unbreakable={show_in_tooltip:0b},minecraft:item_model="luigis_mansion:game_boy_horror",minecraft:custom_model_data={flags:[B;0b,0b],strings:["off","none"],floats:[0f,0f,0f,0f]},minecraft:item_name='{"type":"translatable","translate":"luigis_mansion:item.game_boy_horror"}',minecraft:custom_data={namespace:"luigis_mansion",id:"game_boy_horror",kill:1b}]
scoreboard players reset #temp ActionTime
execute if entity @s[scores={ForceScreen=0..}] if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] run function luigis_mansion:items/game_boy_horror/change_screen
scoreboard players set @s ForceScreen 0
execute if entity @s[scores={ForceRadar=0}] if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] run function #luigis_mansion:items/game_boy_horror/radar_type
scoreboard players set @s ForceRadar 0
execute if entity @s[tag=!in_dialog] run function luigis_mansion:selection_menu/dialog/exit
tag @s remove next_dialog_line
tag @s remove skip_dialog
tag @s remove in_dialog