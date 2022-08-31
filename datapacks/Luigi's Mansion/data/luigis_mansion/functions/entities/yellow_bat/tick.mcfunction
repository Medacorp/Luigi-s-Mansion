execute if entity @s[tag=dead] run function luigis_mansion:other/drop_loot

execute if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] if entity @s[tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/yellow_bat/collide

tag @s[scores={FlyTime=3000..}] add turn_back
tag @s[tag=fleeing,tag=attack] add turn_back
tag @s[tag=fleeing] add attack
tag @s[tag=fleeing] remove fleeing

execute store result score #temp Room run scoreboard players get @s Room
execute as @e[tag=same_room,tag=!spectator] if score @s Room = #temp Room run tag @s add this_room
execute if entity @a[tag=vacuuming,tag=this_room] run tag @s[tag=!fleeing,tag=!attack,tag=!collided] add attack
execute if entity @s[tag=attack,tag=!turn_back] run function luigis_mansion:entities/yellow_bat/target
execute if entity @s[tag=turn_back,tag=!dead] run function luigis_mansion:entities/yellow_bat/return
execute if entity @s[tag=targetted,tag=!dead] run function luigis_mansion:entities/yellow_bat/move
execute if entity @s[tag=returned,tag=!dead] run function luigis_mansion:entities/yellow_bat/returned
tag @s remove vacuum_in_room
execute at @s[tag=!attack,tag=!fleeing] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~-180 ~
tag @e[tag=this_room] remove this_room
scoreboard players reset #temp Room

execute at @s[tag=!attack] run function luigis_mansion:animations/bat/idle
execute at @s[tag=attack] run function luigis_mansion:animations/bat/flying
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall