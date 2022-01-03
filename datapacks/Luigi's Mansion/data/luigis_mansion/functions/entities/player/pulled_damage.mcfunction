scoreboard players set @s[tag=!pulled_last_tick] Damage 1
tag @s remove pulled_last_tick
tag @s[scores={Damage=1}] add pulled_last_tick
scoreboard players operation @s[scores={Room=1..}] Damage *= #multiply_hurt Selected
scoreboard players operation @s[scores={Room=1..}] Damage /= #100 Constants
execute if entity @s[scores={Damage=1..}] run function luigis_mansion:entities/player/damage