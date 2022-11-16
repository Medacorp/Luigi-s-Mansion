execute if entity @s[tag=looking_at_map] run function luigis_mansion:items/game_boy_horror/map/close
advancement grant @s[scores={Health=..10}] only luigis_mansion:challenges/look_at_me_full_of_bravery
execute positioned 812 18 14.0 rotated 90 0 run function luigis_mansion:entities/player/set_position