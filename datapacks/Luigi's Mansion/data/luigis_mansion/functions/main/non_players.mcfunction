tag @s[tag=remove_from_existence,tag=cannot_be_removed] remove remove_from_existence

execute if entity @s[scores={Room=-2147483648..},tag=!captured] run function luigis_mansion:main/non_players_in_room

data merge entity @s[type=minecraft:item] {Invulnerable:1b,Air:0}
data merge entity @s[type=minecraft:item] {Air:1}

# Fix multiple lightning loading in
execute if entity @s[type=minecraft:lightning_bolt] run kill @e[type=minecraft:lightning_bolt,distance=0.1..]

execute unless entity @s[scores={StunTime=1..},tag=!hurt,tag=!fleeing] run scoreboard players remove @s[scores={Sound=1..}] Sound 1
tag @s[tag=remove_from_existence] add dead
teleport @s[tag=dead] ~ ~-100 ~
scoreboard players reset @s[tag=dead]
tag @s[tag=dead] add can_die
kill @s[tag=dead]
scoreboard players reset @s Steps