scoreboard players set @s Damage 1
scoreboard players operation @s[scores={Room=1..}] Damage *= #multiply_hurt Selected
scoreboard players operation @s[scores={Room=1..}] Damage /= #100 Constants
scoreboard players operation @s Health -= @s Damage
scoreboard players operation @s TotalDamage += @s Damage
execute if entity @s[scores={Damage=1..}] run function luigis_mansion:entities/player/damage_particle
execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.current_data.money.gold_coin
execute if entity @s[scores={Health=1..}] if score #temp ActionTime matches 1.. run function luigis_mansion:entities/player/drop_gold_coins
execute if score #temp ActionTime matches 1.. store result storage luigis_mansion:data current_state.current_data.money.gold_coin int 1 run scoreboard players remove #temp ActionTime 1
playsound luigis_mansion:entity.player.hurt player @a[tag=same_room] ~ ~ ~ 1
execute if score @s Health > @s MaxHealth run scoreboard players operation @s Health = @s MaxHealth
scoreboard players reset #temp ActionTime
scoreboard players operation @s LastTotalDamage = @s TotalDamage