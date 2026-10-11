execute if entity @s[tag=!show_credits] run function luigis_mansion:entities/player/selection_menu/close
execute if entity @s[tag=!show_credits] run function luigis_mansion:other/music/set/force/silence
tag @s[tag=!show_credits] remove title_menu
tag @s[tag=!show_credits] remove camera
tellraw @s[tag=show_credits] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:message.use_title_menu_during_credits"}]}
execute if entity @s[tag=show_credits] run function luigis_mansion:selection_menu/game_boy_horror/show_settings