scoreboard players operation @s Damage = @s Health
scoreboard players operation @s Damage -= @s MaxHealth
scoreboard players operation @s Health = @s MaxHealth
execute if entity @s[scores={Damage=1..}] run function luigis_mansion:entities/player/damage_particle
playsound luigis_mansion:entity.player.hurt player @a[tag=same_room] ~ ~ ~ 1