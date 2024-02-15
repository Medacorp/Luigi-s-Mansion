function luigis_mansion:entities/reflection/tick

tag @s[tag=remove_from_existence] add dead
teleport @s[tag=dead] ~ ~-100 ~
scoreboard players reset @s[tag=dead]
kill @s[tag=dead]