tag @s[tag=remove_from_existence,tag=cannot_be_removed] remove remove_from_existence

execute if entity @s[scores={Room=-2147483648..},tag=!captured] run function luigis_mansion:main/non_players_in_room

execute if entity @s[type=minecraft:item] run function luigis_mansion:main/items

# Fix multiple lightning loading in
execute if entity @s[type=minecraft:lightning_bolt] run kill @e[type=minecraft:lightning_bolt,distance=0.1..]

tag @s[tag=remove_from_existence] add dead
teleport @s[tag=dead,tag=!captured] ~ ~-100 ~
scoreboard players reset @s[tag=dead,tag=!captured]
tag @s[tag=dead,tag=!captured] add can_die
kill @s[tag=dead,tag=!captured]
tag @s[tag=dead] remove captured
scoreboard players reset @s Steps