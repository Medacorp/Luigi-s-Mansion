execute unless entity @s[scores={WarpTime=1..}] if entity @s[tag=looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/map/close
execute unless entity @s[scores={WarpTime=1..}] run function luigis_mansion:entities/player/selection_menu/close
execute unless entity @s[scores={WarpTime=1..}] run function luigis_mansion:entities/player/animation/set/none
execute unless entity @s[scores={WarpTime=1..}] run tag @s remove game_boy_horror_menu
execute unless entity @s[scores={WarpTime=1..}] run tag @s remove scanning