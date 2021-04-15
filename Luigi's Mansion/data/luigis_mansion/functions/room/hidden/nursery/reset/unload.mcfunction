execute as @e[scores={Room=9},type=!minecraft:player] unless entity @s[tag=chauncey,tag=fight] run tag @s add remove_from_existence
scoreboard players reset #nursery