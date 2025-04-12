execute store result score #temp ActionTime run clear @s *[minecraft:custom_data~{namespace:"luigis_mansion",id:"game_boy_horror"}] 0
execute if score #temp ActionTime matches 0 run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[minecraft:unbreakable={},minecraft:tooltip_display={hidden_components:["minecraft:unbreakable"]},minecraft:item_model="luigis_mansion:game_boy_horror",minecraft:custom_model_data={flags:[0b,0b],strings:["off","none"],floats:[0f,0f,0f,0f]},minecraft:item_name={type:"translatable",translate:"luigis_mansion:item.game_boy_horror"},minecraft:custom_data={namespace:"luigis_mansion",id:"game_boy_horror",kill:1b}]
scoreboard players reset #temp ActionTime
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{option:{action:"scan"}}}}]}] run function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value {value:"scanning",flags:[1b,0b],floats:[],tracker:[]}
tag @s remove scanning
function luigis_mansion:items/game_boy_horror/show_ghost_presence
execute if entity @s[tag=warp] run function luigis_mansion:selection_menu/game_boy_horror/scan/warp