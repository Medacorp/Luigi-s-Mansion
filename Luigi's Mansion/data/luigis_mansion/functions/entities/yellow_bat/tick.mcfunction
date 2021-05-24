execute if entity @s[tag=dead,tag=normal_death] run playsound luigis_mansion:entity.yellow_bat.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead,tag=element_death] run playsound luigis_mansion:entity.yellow_bat.element_death hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.2 0.2 1 10
execute if entity @s[tag=dead] run teleport @s ~ -100 ~

execute if entity @a[gamemode=!spectator,distance=..0.7,limit=1] if entity @s[tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/yellow_bat/collide

tag @s[scores={FlyTime=600..}] add turn_back
tag @s[tag=fleeing] add turn_back
tag @s[tag=fleeing] remove fleeing

scoreboard players operation #temp Room = @s Room
tag @s[tag=!fleeing,tag=!attack,tag=!collided,tag=vacuum_in_room] add attack
scoreboard players reset #temp Room
execute if entity @s[tag=attack,tag=!turn_back] run function luigis_mansion:entities/yellow_bat/target
execute if entity @s[tag=attack,tag=targetted,tag=turn_back] run function luigis_mansion:entities/yellow_bat/return
execute if entity @s[tag=turn_back,tag=!dead] run function luigis_mansion:entities/yellow_bat/move
execute if entity @s[tag=targetted,tag=!dead] run function luigis_mansion:entities/yellow_bat/move
execute if entity @s[tag=returned,tag=!dead] run function luigis_mansion:entities/yellow_bat/returned
tag @s remove vacuum_in_room
execute at @s[tag=!attack,tag=!fleeing] facing entity @p[tag=same_room,gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~-180 ~

execute at @s[tag=!attack] run function luigis_mansion:animations/bat/idle
execute at @s[tag=attack] run function luigis_mansion:animations/bat/flying
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall