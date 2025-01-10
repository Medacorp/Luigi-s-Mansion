execute if entity @s[tag=looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/exit
stopsound @s ambient luigis_mansion:music.mansion.room.nursery
advancement grant @s[scores={Health=..10}] only luigis_mansion:vanilla/look_at_me_full_of_bravery
function luigis_mansion:other/music/set/silence
execute unless storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"hidden/chauncey_opening"}}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"hidden/chauncey_opening"},progress:0,room:73}
function luigis_mansion:entities/luigi/move/teleport {teleport:"801.0 18 -48.0 90 0"}