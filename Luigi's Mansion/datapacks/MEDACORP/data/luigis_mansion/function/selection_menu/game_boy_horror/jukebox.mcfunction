data modify storage luigis_mansion:data menu_options set value {back:{id:"original_menu",to:'{"type":"translatable","translate":"luigis_mansion:item.menu.original_menu"}'},options:[]}

function #luigis_mansion:selection_menu/game_boy_horror/jukebox/tracks
data modify storage luigis_mansion:data menu_options.options append value {}
data modify storage luigis_mansion:data menu_options.options append value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:menu/game_boy_horror/jukebox/track_options","minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:attribute_modifiers":{modifiers:[]},"minecraft:item_name":'{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.jukebox.track_options"}',"minecraft:custom_data":{option:{id:"jukebox/track_options"}}}}
data modify storage luigis_mansion:data menu_options.options append value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:menu/game_boy_horror/jukebox/stop","minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:attribute_modifiers":{modifiers:[]},"minecraft:item_name":'{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.jukebox.stop"}',"minecraft:custom_data":{option:{id:"reload",action:"jukebox/stop"}}}}

function luigis_mansion:entities/player/selection_menu/load