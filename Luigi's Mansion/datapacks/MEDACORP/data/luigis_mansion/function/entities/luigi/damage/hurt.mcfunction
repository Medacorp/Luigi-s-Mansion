execute unless score #global_difficulty Selected matches 0 run scoreboard players operation @s[scores={Health=1..}] Health -= @s Damage
scoreboard players set @s[scores={Health=..0}] Health 0
execute unless score #global_difficulty Selected matches 0 run scoreboard players operation @s[scores={Health=1..}] TotalDamage += @s Damage
execute unless score #global_difficulty Selected matches 0 run playsound luigis_mansion:entity.player.hurt player @a[tag=same_room] ~ ~ ~ 1
execute unless score #global_difficulty Selected matches 0 if entity @s[scores={Room=1..}] run function luigis_mansion:entities/luigi/run_command_as_owner {command:"function luigis_mansion:entities/luigi/damage/drop_item with storage luigis_mansion:data current_state.current_data.drop_item_on_damage"}
execute unless score #global_difficulty Selected matches 0 run function luigis_mansion:entities/luigi/damage/particle
scoreboard players operation @s LastTotalDamage = @s TotalDamage
execute if score @s Health > @s MaxHealth run scoreboard players operation @s Health = @s MaxHealth
scoreboard players set @s Damage 0
scoreboard players set @s Invulnerable 60