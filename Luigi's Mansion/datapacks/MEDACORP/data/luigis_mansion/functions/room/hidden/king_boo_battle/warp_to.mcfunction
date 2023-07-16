execute if entity @s[tag=looking_at_map] run function luigis_mansion:items/game_boy_horror/map/close
advancement grant @s[scores={Health=..10}] only luigis_mansion:challenges/look_at_me_full_of_bravery
function luigis_mansion:other/music/set/king_boo_battle
execute positioned 490 37 10 rotated -20 0 run function luigis_mansion:entities/player/set_position
scoreboard players set @s KnockbackType 0
scoreboard players reset @s KnockbackTime