scoreboard players set #temp Move 0
execute anchored eyes run summon minecraft:marker ^ ^ ^ {Tags:["me","furniture"],Duration:1}
scoreboard players operation #temp Room = @s Room
execute as @e[type=minecraft:marker,tag=me,limit=1] positioned as @s positioned ^ ^ ^0.1 run function luigis_mansion:selection_menu/game_boy_horror/show_settings/debug/target
kill @e[type=minecraft:marker,tag=me,limit=1]
scoreboard players reset #temp Room
scoreboard players reset #temp Move