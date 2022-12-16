scoreboard players operation @s[scores={Health=1..}] Damage += @s ForcedDamage
scoreboard players operation @s[scores={Room=1..}] Damage *= #multiply_hurt Selected
scoreboard players operation @s[scores={Room=1..}] Damage /= #100 Constants
execute if entity @s[scores={Damage=1..,KnockbackType=1..}] run function luigis_mansion:entities/player/damage
execute if entity @s[scores={Damage=1..,ScareType=1..}] unless entity @s[scores={KnockbackType=1..}] run function luigis_mansion:entities/player/damage
attribute @s minecraft:generic.max_health base set 100
effect give @s minecraft:instant_health 1 19 true