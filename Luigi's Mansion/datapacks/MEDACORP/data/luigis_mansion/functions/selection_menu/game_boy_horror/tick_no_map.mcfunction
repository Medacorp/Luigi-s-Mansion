execute store result score #temp ActionTime run clear @s minecraft:carrot_on_a_stick{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}} 0
execute if score #temp ActionTime matches 0 run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{HideFlags:63,Unbreakable:1b,Damage:2,CustomModelData:0,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion:item.game_boy_horror"}'},luigis_mansion:{id:"luigis_mansion:game_boy_horror",kill:1b}}
scoreboard players reset #temp ActionTime
function luigis_mansion:items/game_boy_horror/show_ghost_presence
function luigis_mansion:items/game_boy_horror/change_screen
execute unless entity @s[scores={ForceRadar=1}] if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}]}] run function #luigis_mansion:items/game_boy_horror/radar_type
execute if entity @s[scores={ForceRadar=1},nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}]},nbt=!{Inventory:[{tag:{Damage:5,luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}]}] run function luigis_mansion:items/game_boy_horror/turn_radar_red
execute if entity @s[scores={ForceRadar=1}] unless score #freeze_timer Selected matches 1 run playsound luigis_mansion:item.game_boy_horror.radar player @s ~ ~ ~ 0.5
execute if entity @s[tag=warp] run function luigis_mansion:selection_menu/game_boy_horror/scan/warp