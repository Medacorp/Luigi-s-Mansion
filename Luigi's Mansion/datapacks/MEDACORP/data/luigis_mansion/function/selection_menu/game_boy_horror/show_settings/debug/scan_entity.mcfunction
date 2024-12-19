scoreboard players set #temp Move 0
execute anchored eyes run summon minecraft:marker ^ ^ ^ {Tags:["me","entity"],Duration:1}
scoreboard players operation #temp Room = @s Room
function luigis_mansion:entities/player/run_command_as_model {command:"tag @s add scanning_player"}
execute as @e[type=minecraft:marker,tag=me,limit=1] positioned as @s positioned ^ ^ ^0.1 run function luigis_mansion:selection_menu/game_boy_horror/show_settings/debug/target
kill @e[type=minecraft:marker,tag=me,limit=1]
function luigis_mansion:entities/player/run_command_as_model {command:"tag @s remove scanning_player"}
scoreboard players reset #temp Room
scoreboard players reset #temp Move