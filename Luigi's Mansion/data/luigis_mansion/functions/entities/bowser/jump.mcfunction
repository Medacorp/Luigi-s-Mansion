scoreboard players add @s ActionTime 1
teleport @s[scores={ActionTime=30..49}] ~ ~1 ~
execute if entity @s[scores={ActionTime=50}] at @r[gamemode=!spectator] run teleport @s ~ ~30 ~ ~ 0
teleport @s[scores={ActionTime=51..80}] ~ ~-1 ~
teleport @s[scores={ActionTime=80}] ~ 41 ~
tag @s[scores={ActionTime=100}] remove jump
scoreboard players reset @s[scores={ActionTime=100}] ActionTime