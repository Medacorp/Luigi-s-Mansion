effect give @s minecraft:instant_damage 1 0 true
scoreboard players set @s ForcedDamage 4
execute at @s positioned ^ ^ ^1 run function luigis_mansion:entities/player/knockback/medium_forward
playsound luigis_mansion:item.poltergust_3000.explode player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.exploding_poltergust.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.exploding_poltergust.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.exploding_poltergust.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.exploding_poltergust.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s Sound 40
tag @s remove exploding_poltergust