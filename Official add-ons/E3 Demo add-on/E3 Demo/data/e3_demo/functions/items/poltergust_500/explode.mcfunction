scoreboard players set @s[scores={Invulnerable=1..2}] Invulnerable 0
data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:poltergust_explosion",amount:10,knockback:"medium_forward"}
execute at @s positioned ^ ^ ^1 run function luigis_mansion:entities/player/damage
execute if entity @s[scores={OverheatMeter=300..}] if data storage e3_demo:data current_state.trophy{task_7:0b} run function e3_demo:room/gallery/clear_task/task_7
experience add @s -300 levels
playsound e3_demo:item.poltergust_500.explode player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.exploding_poltergust.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.exploding_poltergust.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.exploding_poltergust.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.exploding_poltergust.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s Sound 40
tag @s remove exploding_poltergust