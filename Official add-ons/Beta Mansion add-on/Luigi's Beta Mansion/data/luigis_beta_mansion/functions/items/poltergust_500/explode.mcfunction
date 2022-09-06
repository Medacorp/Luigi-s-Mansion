effect give @s minecraft:instant_damage 1 0 true
scoreboard players set @s ForcedDamage 4
execute at @s positioned ^ ^ ^1 run function luigis_mansion:entities/player/knockback/large
execute if entity @s[scores={OverheatMeter=300..}] if data storage luigis_beta_mansion:data current_state.trophy{task_7:0b} run function luigis_beta_mansion:room/gallery/clear_task/task_7
experience add @s -300 levels
playsound luigis_beta_mansion:item.poltergust_500.explode player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.exploding_poltergust.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.exploding_poltergust.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.exploding_poltergust.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.exploding_poltergust.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s Sound 40
tag @s remove exploding_poltergust