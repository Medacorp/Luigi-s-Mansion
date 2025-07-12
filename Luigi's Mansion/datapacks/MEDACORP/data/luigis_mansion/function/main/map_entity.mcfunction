function luigis_mansion:entities/tick with entity @s data.entity

tag @s[tag=remove_from_existence] add dead
teleport @s[tag=dead] ~ ~-100 ~
scoreboard players reset @s[tag=dead]
kill @s[tag=dead]