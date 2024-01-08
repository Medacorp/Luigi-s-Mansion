execute unless score #global_difficulty Selected matches 0 run effect give @s minecraft:instant_damage 1 0 true
execute unless score #global_difficulty Selected matches 0 run scoreboard players operation @s[scores={Health=1..}] Health -= @s Damage
scoreboard players set @s[scores={Health=..0}] Health 0
execute unless score #global_difficulty Selected matches 0 run scoreboard players operation @s[scores={Health=1..}] TotalDamage += @s Damage
execute unless score #global_difficulty Selected matches 0 run playsound luigis_mansion:entity.player.hurt player @a[tag=same_room] ~ ~ ~ 1
execute unless score #global_difficulty Selected matches 0 if entity @s[scores={Room=1..}] run function #luigis_mansion:entities/player/damage/drop_item
execute unless score #global_difficulty Selected matches 0 run function luigis_mansion:entities/player/damage/particle
scoreboard players operation @s LastTotalDamage = @s TotalDamage
execute if score @s Health > @s MaxHealth run scoreboard players operation @s Health = @s MaxHealth
scoreboard players set @s Damage 0
scoreboard players set @s Invulnerable 60
execute if entity @s[scores={Invulnerable=60,IdleTime=..-1},tag=!idle] run scoreboard players operation @s Invulnerable -= @s IdleTime