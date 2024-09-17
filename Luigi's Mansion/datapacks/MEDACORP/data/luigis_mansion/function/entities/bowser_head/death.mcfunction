scoreboard players add @s DeathTime 1
tag @s remove can_decapitate
data remove entity @s[scores={Time=1}] data.animation
scoreboard players add @s[scores={Time=3..}] Time 1
execute if entity @s[scores={Time=2}] unless block ~ ~0.8 ~ #luigis_mansion:ghosts_ignore run scoreboard players add @s Time 1
execute unless entity @s[scores={Time=2..}] run scoreboard players add @s Time 1
execute if entity @s[scores={Time=2}] run teleport @s ~ ~-0.2 ~ ~ 0
data modify entity @s[scores={Time=3}] data.animation set value {namespace:"luigis_mansion",id:"death"}
tag @s[scores={DeathTime=100}] add dead