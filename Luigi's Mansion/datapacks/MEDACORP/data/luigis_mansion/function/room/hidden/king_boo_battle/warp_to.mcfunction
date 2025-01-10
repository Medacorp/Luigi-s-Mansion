execute if entity @s[tag=looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/exit
advancement grant @s[scores={Health=..10}] only luigis_mansion:vanilla/look_at_me_full_of_bravery
function luigis_mansion:other/music/set/silence
execute unless storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"king_boo_opening"}}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"king_boo_opening"},progress:0,room:76}
function luigis_mansion:entities/luigi/move/teleport {teleport:"490 37 10 -20 0"}
function luigis_mansion:entities/player/run_command_as_model {command:"function luigis_mansion:entities/luigi/animation/set/none"}