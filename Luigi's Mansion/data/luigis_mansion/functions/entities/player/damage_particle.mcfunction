particle minecraft:damage_indicator ~ ~0.6 ~ 0.2 0.2 0.2 0 1
scoreboard players remove @s Damage 1
execute if entity @s[scores={Damage=1..}] run function luigis_mansion:entities/player/damage_particle