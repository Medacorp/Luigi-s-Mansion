teleport @e[tag=chauncey,tag=!intro_done,tag=!ball] 792.0 20 64.0
execute as @e[tag=chauncey,tag=!intro_done,tag=!ball] unless entity @s[scores={Dialog=330}] unless entity @s[scores={Dialog=669}] run scoreboard players set @s Dialog 329
scoreboard players set @e[tag=chauncey,tag=!intro_done,tag=!ball,scores={Dialog=330}] Dialog 669