execute unless entity @s[scores={WarpTime=1..}] if entity @s[tag=looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/map/close
execute unless entity @s[scores={WarpTime=1..}] run function luigis_mansion:entities/player/selection_menu/close
execute unless entity @s[scores={WarpTime=1..}] run function luigis_mansion:entities/player/run_command_as_model {command:"function luigis_mansion:entities/luigi/animation/set/none"}
execute unless entity @s[scores={WarpTime=1..}] run tag @s remove game_boy_horror_menu
execute unless entity @s[scores={WarpTime=1..}] run tag @s remove scanning

execute if entity @s[scores={WarpTime=1..}] run function luigis_mansion:entities/player/memory/get with entity @s
execute if entity @s[scores={WarpTime=1..}] run function luigis_mansion:entities/player/selection_menu/reload
execute if entity @s[scores={WarpTime=1..}] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[scores={WarpTime=1..}] run data remove storage luigis_mansion:data my_memory