effect give @s minecraft:instant_health 1 27 true
scoreboard players operation @s[scores={Health=1..,Invulnerable=0}] Health -= @s Damage
scoreboard players operation @s[scores={Health=1..,Invulnerable=0}] TotalDamage += @s Damage
execute if entity @s[scores={Damage=1..,Invulnerable=0}] run playsound luigis_mansion:entity.player.hurt player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Damage=1..,Invulnerable=0,Room=1..}] run function #luigis_mansion:entities/player/damage/drop_item
execute if entity @s[scores={Damage=1..,Invulnerable=0}] run function luigis_mansion:entities/player/damage_particle
scoreboard players operation @s LastTotalDamage = @s TotalDamage
execute if score @s Health > @s MaxHealth run scoreboard players operation @s Health = @s MaxHealth
scoreboard players set @s Damage 0
scoreboard players set @s ForcedDamage 0