effect give @s minecraft:instant_damage 1 0 true
scoreboard players set @s ForcedDamage 4
execute at @s positioned ^ ^ ^1 run function luigis_mansion:entities/player/knockback/medium_forward
playsound luigis_mansion:item.poltergust_3000.explode player @a[tag=same_room] ~ ~ ~ 1
tag @s remove exploding_poltergust