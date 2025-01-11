execute if entity @s[tag=looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/exit
advancement grant @s[scores={Health=..10}] only luigis_mansion:vanilla/look_at_me_full_of_bravery
function luigis_mansion:other/music/set/silence
execute unless score #boolossus_battle Ticking matches 1 unless data storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"boolossus_opening"}}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"boolossus_opening"},progress:0,room:75}
function luigis_mansion:entities/luigi/move/teleport {teleport:"586 27 -19.0 90 0"}