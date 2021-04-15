execute as @e[scores={Room=25},type=!minecraft:player] unless entity @s[tag=bogmire,tag=fight] run tag @s add remove_from_existence
scoreboard players reset #graveyard