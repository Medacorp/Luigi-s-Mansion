execute if entity @s[tag=spawn] run function #luigis_mansion:entities/hidden_boo/spawn
execute if entity @s[scores={HideTime=0}] run function #luigis_mansion:entities/hidden_boo/swap_spot
scoreboard players remove @s[tag=!trap,scores={HideTime=1..}] HideTime 1