execute if entity @s[tag=looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/exit
advancement grant @s[scores={Health=..10}] only luigis_mansion:vanilla/look_at_me_full_of_bravery
function luigis_mansion:other/music/set/king_boo_battle
execute positioned 490 37 10 rotated -20 0 run function luigis_mansion:entities/player/set_position
function luigis_mansion:entities/player/animation/set/none