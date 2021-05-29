scoreboard players set @s Damage 1
scoreboard players operation @s[scores={Room=1..}] Damage *= #multiply_hurt Selected
scoreboard players operation @s[scores={Room=1..}] Damage /= #100 Constants
scoreboard players operation @s Health -= @s Damage
scoreboard players operation @s TotalDamage += @s Damage
execute if entity @s[scores={Damage=1..}] run function luigis_mansion:entities/player/damage_particle
function luigis_mansion:entities/player/get_my_coins
execute if entity @s[scores={Health=1..}] if score #temp ActionTime matches 1.. run function luigis_mansion:entities/player/drop_gold_coins
function luigis_mansion:entities/player/reduce_my_coins
playsound luigis_mansion:entity.player.hurt player @a[tag=same_room] ~ ~ ~ 1
execute if score @s Health > @s MaxHealth run scoreboard players operation @s Health = @s MaxHealth
scoreboard players reset #temp ActionTime
scoreboard players operation @s LastTotalDamage = @s TotalDamage