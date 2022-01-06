effect give @s minecraft:instant_damage 1 0 true
scoreboard players set @s ForcedDamage 4
execute at @s positioned ^ ^ ^1 run function luigis_mansion:entities/player/knockback/medium_forward
tag @s remove exploding_poltergust