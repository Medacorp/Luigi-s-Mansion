tag @s[tag=!stop_map_on_key_collect] add toggle_stop_map_on_key_collect
tag @s[tag=toggle_stop_map_on_key_collect] add stop_map_on_key_collect
tag @s[tag=!toggle_stop_map_on_key_collect,tag=stop_map_on_key_collect] remove stop_map_on_key_collect
tag @s[tag=toggle_stop_map_on_key_collect] remove toggle_stop_map_on_key_collect

function luigis_mansion:entities/player/memory/get with entity @s

data modify storage luigis_mansion:data menu_options set from storage luigis_mansion:data my_memory.selection_menu.current_options

execute if entity @s[tag=!stop_map_on_key_collect] run data modify storage luigis_mansion:data menu_options.options[{tag:{luigis_mansion:{option:{id:"show_settings/toggle/open_map_when_collecting_a_key",namespace:"luigis_mansion"}}}}] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:60,HideFlags:63,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.show_settings.value","with":[{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.show_settings.open_map_when_collecting_a_key"},{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.show_settings.value.on"}]}'},luigis_mansion:{option:{id:"show_settings/toggle/open_map_when_collecting_a_key",namespace:"luigis_mansion"}}}}
execute if entity @s[tag=stop_map_on_key_collect] run data modify storage luigis_mansion:data menu_options.options[{tag:{luigis_mansion:{option:{id:"show_settings/toggle/open_map_when_collecting_a_key",namespace:"luigis_mansion"}}}}] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:59,HideFlags:63,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.show_settings.value","with":[{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.show_settings.open_map_when_collecting_a_key"},{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.show_settings.value.off"}]}'},luigis_mansion:{option:{id:"show_settings/toggle/open_map_when_collecting_a_key",namespace:"luigis_mansion"}}}}

function luigis_mansion:entities/player/selection_menu/load