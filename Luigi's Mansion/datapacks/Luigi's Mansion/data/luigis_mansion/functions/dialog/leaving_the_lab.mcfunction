scoreboard players add @s Dialog 1
teleport @s[scores={Dialog=1..219}] ~ ~ ~ facing entity @p[gamemode=!spectator]
tag @s[scores={Dialog=1}] add wave
scoreboard players set @s[scores={Dialog=1}] AnimationProg 0
tag @s[scores={Dialog=220}] remove wave
tag @s[scores={Dialog=220}] add walk
scoreboard players set @s[scores={Dialog=220}] AnimationProg 0
teleport @s[scores={Dialog=220..259}] ~ ~ ~0.1 0 0
teleport @s[scores={Dialog=260}] ~ ~-100 ~
tag @s[scores={Dialog=260}] add remove_from_existence