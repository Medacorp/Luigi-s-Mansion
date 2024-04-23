tag @s[tag=!play_old_lab_music] add toggle_play_old_lab_music
tag @s[tag=toggle_play_old_lab_music] add play_old_lab_music
tag @s[tag=!toggle_play_old_lab_music,tag=play_old_lab_music] remove play_old_lab_music
tag @s[tag=toggle_play_old_lab_music] remove toggle_play_old_lab_music

function luigis_mansion:entities/player/memory/get with entity @s

data modify storage luigis_mansion:data menu_options set from storage luigis_mansion:data my_memory.selection_menu.current_options

execute if entity @s[tag=!play_old_lab_music] run data modify storage luigis_mansion:data menu_options.options[{components:{"minecraft:custom_data":{option:{id:"show_settings/toggle/play_beta_lab_music",namespace:"e3_demo"}}}}] set value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:damage":22,"minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:custom_model_data":-1,"minecraft:attribute_modifiers":{modifiers:[]},"minecraft:item_name":'{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.show_settings.value","with":[{"type":"translatable","translate":"e3_demo:item.menu.game_boy_horror.show_settings.play_beta_lab_music"},{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.show_settings.value.on"}]}',"minecraft:custom_data":{option:{id:"show_settings/toggle/play_beta_lab_music",namespace:"e3_demo"}}}}
execute if entity @s[tag=play_old_lab_music] run data modify storage luigis_mansion:data menu_options.options[{components:{"minecraft:custom_data":{option:{id:"show_settings/toggle/play_beta_lab_music",namespace:"e3_demo"}}}}] set value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:damage":22,"minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:custom_model_data":-2,"minecraft:attribute_modifiers":{modifiers:[]},"minecraft:item_name":'{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.show_settings.value","with":[{"type":"translatable","translate":"e3_demo:item.menu.game_boy_horror.show_settings.play_beta_lab_music"},{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.show_settings.value.off"}]}',"minecraft:custom_data":{option:{id:"show_settings/toggle/play_beta_lab_music",namespace:"e3_demo"}}}}

function luigis_mansion:entities/player/selection_menu/load