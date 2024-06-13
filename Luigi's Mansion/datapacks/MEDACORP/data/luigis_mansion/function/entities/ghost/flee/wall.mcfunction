execute rotated ~ 0 unless block ^0.6 ^ ^ #luigis_mansion:ghosts_ignore run tag @s add can_turn_right
execute rotated ~ 0 unless block ^-0.6 ^ ^ #luigis_mansion:ghosts_ignore run tag @s add can_turn_left
teleport @s[tag=!can_turn_left,tag=!can_turn_right] ~ ~ ~ ~-180 ~
teleport @s[tag=can_turn_left,tag=!can_turn_right] ~ ~ ~ ~-90 ~
teleport @s[tag=!can_turn_left,tag=can_turn_right] ~ ~ ~ ~90 ~
execute if entity @s[tag=can_turn_left,tag=can_turn_right] if predicate luigis_mansion:50_50 run tag @s add turn_right
teleport @s[tag=can_turn_left,tag=can_turn_right,tag=!turn_right] ~ ~ ~ ~-90 ~
teleport @s[tag=can_turn_left,tag=can_turn_right,tag=turn_right] ~ ~ ~ ~90 ~
tag @s remove turn_right
tag @s remove can_turn_left
tag @s remove can_turn_right
tag @s remove wall
scoreboard players set @s Turn 10