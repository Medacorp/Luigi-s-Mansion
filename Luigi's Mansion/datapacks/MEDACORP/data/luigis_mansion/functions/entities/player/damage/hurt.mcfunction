effect give @s minecraft:instant_damage 1 0 true
scoreboard players operation @s[scores={Health=1..,Invulnerable=0}] Health -= @s Damage
scoreboard players set @s[scores={Health=..0,Invulnerable=0}] Health 0
scoreboard players operation @s[scores={Health=1..,Invulnerable=0}] TotalDamage += @s Damage
execute if entity @s[scores={Damage=1..,Invulnerable=0}] run playsound luigis_mansion:entity.player.hurt player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Damage=1..,Invulnerable=0,Room=1..}] run function #luigis_mansion:entities/player/damage/drop_item
execute if entity @s[scores={Damage=1..,Invulnerable=0}] run function luigis_mansion:entities/player/damage/particle
scoreboard players operation @s LastTotalDamage = @s TotalDamage
execute if score @s Health > @s MaxHealth run scoreboard players operation @s Health = @s MaxHealth
scoreboard players set @s Damage 0
scoreboard players set @s[scores={Invulnerable=0}] Invulnerable 60
execute if entity @s[scores={Invulnerable=60,KnockbackTime=1..}] run scoreboard players operation @s Invulnerable += @s KnockbackTime