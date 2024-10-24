scoreboard players set @s[scores={Invulnerable=1..2}] Invulnerable 0
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"poltergust_explosion"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/medium"}}
execute at @s positioned ^ ^ ^-1 run function luigis_mansion:entities/player/damage
playsound luigis_mansion:item.poltergust_3000.explode player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.exploding_poltergust.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.exploding_poltergust.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.exploding_poltergust.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.exploding_poltergust.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s Sound 40
tag @s remove exploding_poltergust
tag @s add exploding_poltergust_effect