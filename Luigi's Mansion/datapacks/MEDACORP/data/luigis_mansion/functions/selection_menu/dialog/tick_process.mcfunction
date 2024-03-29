execute store result score #temp ActionTime run clear @s minecraft:carrot_on_a_stick{luigis_mansion:{namespace:"luigis_mansion",id:"game_boy_horror"}} 0
execute unless entity @s[scores={ForceScreen=1}] run clear @s minecraft:carrot_on_a_stick{luigis_mansion:{namespace:"luigis_mansion",id:"game_boy_horror"}}
execute if score #temp ActionTime matches 0 run item replace entity @s[scores={ForceScreen=1}] weapon.offhand with minecraft:carrot_on_a_stick{HideFlags:63,Unbreakable:1b,Damage:2,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","type":"translatable","translate":"luigis_mansion:item.game_boy_horror"}'},luigis_mansion:{namespace:"luigis_mansion",id:"game_boy_horror",kill:1b}}
scoreboard players reset #temp ActionTime
execute unless entity @s[scores={ForceRadar=1}] if entity @s[scores={ForceScreen=1},nbt={Inventory:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] run function #luigis_mansion:items/game_boy_horror/radar_type
execute if entity @s[scores={ForceScreen=1,ForceRadar=1},nbt={Inventory:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"game_boy_horror"}}}]},nbt=!{Inventory:[{tag:{Damage:5,luigis_mansion:{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] run function luigis_mansion:items/game_boy_horror/turn_radar_red
scoreboard players reset @s ForceScreen
scoreboard players reset @s ForceRadar
execute if entity @s[tag=!in_dialog] run function luigis_mansion:selection_menu/dialog/exit
tag @s remove next_dialog_line
tag @s remove skip_dialog
tag @s remove in_dialog