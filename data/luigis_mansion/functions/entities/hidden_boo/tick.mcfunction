execute unless entity @s[scores={HomeX=-2147483648..}] store result score @s HomeX run data get entity @s Pos[0] 100
execute unless entity @s[scores={HomeY=-2147483648..}] store result score @s HomeY run data get entity @s Pos[1] 100
execute unless entity @s[scores={HomeZ=-2147483648..}] store result score @s HomeZ run data get entity @s Pos[2] 100
execute if entity @s[tag=spawn] run function #luigis_mansion:entities/hidden_boo/spawn
execute if entity @s[scores={HideTime=0}] run function #luigis_mansion:entities/hidden_boo/swap_spot
scoreboard players remove @s[tag=!trap,scores={HideTime=1..}] HideTime 1