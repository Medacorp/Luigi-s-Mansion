summon minecraft:marker ^ ^-1 ^ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] double 0.01 run scoreboard players get @s KnockbackX
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] double 0.01 run scoreboard players get @s KnockbackZ

execute if entity @s[scores={IdleTime=-60}] run playsound luigis_mansion:entity.player.slip player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-60,Sound=0,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.hurt_scare.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-60,Sound=0,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.hurt_scare.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={IdleTime=-60,Sound=0,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.hurt_scare.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-60,Sound=0,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.hurt_scare.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={IdleTime=-60,Sound=0}] Sound 20
execute if entity @s[scores={IdleTime=-40,Sound=0,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.hurt_bounce.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-40,Sound=0,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.hurt_bounce.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={IdleTime=-40,Sound=0,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.hurt_bounce.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-40,Sound=0,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.hurt_bounce.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={IdleTime=-40,Sound=0}] Sound 20
execute if entity @s[scores={IdleTime=-40}] run function luigis_mansion:entities/player/memory/get with entity @s
execute if entity @s[scores={IdleTime=-40}] run data modify storage luigis_mansion:data damage set value {amount:0,attacker:-1}
execute if entity @s[scores={IdleTime=-40}] store result storage luigis_mansion:data damage.amount int 1 run scoreboard players get @s KnockbackDamage
execute if entity @s[scores={IdleTime=-40}] run data modify storage luigis_mansion:data damage.attacker set from storage luigis_mansion:data my_memory.hurt_by.attacker
execute if entity @s[scores={IdleTime=-40}] run function luigis_mansion:entities/player/damage
execute if entity @s[scores={IdleTime=-10,Sound=0,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.recover.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-10,Sound=0,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.recover.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={IdleTime=-10,Sound=0,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.recover.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-10,Sound=0,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.recover.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={IdleTime=-10,Sound=0}] Sound 10
execute at @s[scores={IdleTime=-60..-41}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^0.05 ~ ~
execute at @s[scores={IdleTime=-60..-51},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet if block ~ ~2 ~ #luigis_mansion:players_ignore run teleport @s ~ ~0.15 ~
execute at @s[scores={IdleTime=-50..-41},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet if block ~ ~-0.1 ~ #luigis_mansion:players_ignore run teleport @s ~ ~-0.15 ~
execute at @s[scores={IdleTime=-60..-51},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet if block ~ ~-0.1 ~ #luigis_mansion:players_ignore run teleport @s ~ ~-0.15 ~
execute at @s[scores={IdleTime=-50..-41},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet if block ~ ~2 ~ #luigis_mansion:players_ignore run teleport @s ~ ~0.15 ~

execute at @s if block ~ ~2 ~ #luigis_mansion:players_ignore unless block ~ ~1.9 ~ #luigis_mansion:players_ignore run teleport @s ~ ~-0.16 ~
execute at @s unless block ~ ~ ~ #luigis_mansion:players_ignore if block ~ ~0.1 ~ #luigis_mansion:players_ignore run teleport @s ~ ~0.16 ~
execute at @s unless block ~0.3 ~ ~ #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run teleport @s ~-0.16 ~ ~
execute at @s unless block ~-0.3 ~ ~ #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run teleport @s ~0.16 ~ ~
execute at @s unless block ~ ~ ~0.3 #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run teleport @s ~ ~ ~-0.16
execute at @s unless block ~ ~ ~-0.3 #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run teleport @s ~ ~ ~0.16
execute at @s unless block ~0.3 ~1 ~ #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run teleport @s ~-0.16 ~ ~
execute at @s unless block ~-0.3 ~1 ~ #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run teleport @s ~0.16 ~ ~
execute at @s unless block ~ ~1 ~0.3 #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run teleport @s ~ ~ ~-0.16
execute at @s unless block ~ ~1 ~-0.3 #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run teleport @s ~ ~ ~0.16
kill @e[type=minecraft:marker,tag=temp,limit=1]
tag @s remove vacuuming_ghost