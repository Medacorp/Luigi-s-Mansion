title @s subtitle ""
execute if entity @s[tag=looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute in minecraft:overworld run teleport @s 760 90 8.0 90 0
execute unless data storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"leaving_the_lab"}}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"leaving_the_lab"},room:0,progress:0}
scoreboard players set @s Room 0
function luigis_mansion:other/music/set/silence
stopsound @s music
playsound luigis_mansion:music.leaving_the_lab music @s ~ ~ ~ 1000
scoreboard players set @s Music 260
scoreboard players operation @s Health = @s MaxHealth
tag @s remove seen_room_name