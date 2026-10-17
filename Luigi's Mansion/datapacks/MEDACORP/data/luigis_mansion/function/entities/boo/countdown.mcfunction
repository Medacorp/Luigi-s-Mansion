tag @s add no_music
tag @s remove warped
execute unless entity @s[scores={BooTimer=2..}] run scoreboard players add @s BooTimer 1
execute unless entity @e[tag=luigi,tag=exact_same_room,limit=1] run scoreboard players add @s BooTimer 1
execute at @s facing entity @e[tag=luigi,tag=same_room,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={BooTimer=2..}] if entity @e[tag=luigi,tag=exact_same_room,tag=!door_animation,limit=1] run function luigis_mansion:entities/boo/trigger_dialog
tag @s[scores={BooTimer=600..}] remove countdown
tag @s[scores={BooTimer=600..}] remove no_music
execute if entity @s[scores={BooTimer=600}] run function luigis_mansion:entities/boo/countdown_warp with entity @s data.mansion
scoreboard players set @s[scores={BooTimer=600..}] BooTimer 0