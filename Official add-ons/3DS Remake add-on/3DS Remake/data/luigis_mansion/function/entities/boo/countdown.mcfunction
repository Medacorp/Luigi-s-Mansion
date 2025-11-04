tag @s add no_music
tag @s remove warped
scoreboard players remove @s BooTimer 1
scoreboard players set #temp Time 0
execute as @e[tag=luigi,tag=exact_same_room] facing entity @s feet run function 3ds_remake:entities/boo/line_of_sigh
execute if score #temp Time matches 1 run function luigis_mansion:entities/boo/trigger_dialog
scoreboard players reset #temp Time
tag @s[scores={BooTimer=600..}] remove countdown
tag @s[scores={BooTimer=600..}] remove no_music
execute if entity @s[scores={BooTimer=600}] run function luigis_mansion:entities/boo/countdown_warp with entity @s data.mansion
scoreboard players set @s[scores={BooTimer=600..}] BooTimer 0