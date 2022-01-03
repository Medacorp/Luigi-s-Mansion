function luigis_mansion:entities/player/poltergust_breakage
scoreboard players operation @s[scores={Health=1..}] Damage += @s ForcedDamage
scoreboard players operation @s[scores={Room=1..}] Damage *= #multiply_hurt Selected
scoreboard players operation @s[scores={Room=1..}] Damage /= #100 Constants
execute if entity @s[scores={Damage=1..}] run function luigis_mansion:entities/player/damage
scoreboard players set @s Invulnerable 60
scoreboard players operation @s Invulnerable += @s KnockbackTime