scoreboard players add @s Dialog 1
teleport @e[tag=bowser_body] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=..220}] ~ ~-0.2 ~
teleport @s[scores={Dialog=220}] ~ 41 ~
tag @s[scores={Dialog=340}] add breathe_fire
tag @s[scores={Dialog=500}] add intro_done
scoreboard players reset @s[scores={Dialog=500}] Dialog