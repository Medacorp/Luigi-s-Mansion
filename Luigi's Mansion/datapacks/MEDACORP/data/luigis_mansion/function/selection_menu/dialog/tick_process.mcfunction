execute unless data storage luigis_mansion:data macro.namespace run data modify storage luigis_mansion:data macro.namespace set value "luigis_mansion"
execute store result score #temp ActionTime run clear @s *[minecraft:custom_data~{namespace:"luigis_mansion",id:"game_boy_horror"}] 0
execute if score #temp ActionTime matches 0 run item replace entity @s[scores={ForceScreen=1}] weapon.offhand with minecraft:carrot_on_a_stick[minecraft:unbreakable={},minecraft:tooltip_display={hidden_components:["minecraft:unbreakable"]},minecraft:item_model="luigis_mansion:game_boy_horror",minecraft:custom_model_data={flags:[0b],strings:["off","none"],floats:[]},minecraft:item_name={type:"translatable",translate:"luigis_mansion:item.game_boy_horror"},minecraft:custom_data={namespace:"luigis_mansion",id:"game_boy_horror",kill:1b}]
scoreboard players reset #temp ActionTime
execute if entity @s[tag=!in_dialog] run function luigis_mansion:selection_menu/dialog/exit
tag @s remove next_dialog_line
tag @s remove skip_dialog