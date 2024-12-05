scoreboard players operation @s Damage = @s Health
scoreboard players operation @s Damage -= @s MaxHealth
execute if score @s MaxHealth < @s Health run scoreboard players operation @s Health = @s MaxHealth
execute if entity @s[scores={Damage=1..}] run function luigis_mansion:entities/luigi/damage/particle
playsound luigis_mansion:entity.player.hurt player @a[tag=same_room] ~ ~ ~ 1
function luigis_mansion:entities/luigi/health/sync