execute if entity @s[tag=dead,tag=normal_death] run playsound e3_demo:entity.bat.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead,tag=element_death] run playsound e3_demo:entity.bat.element_death hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run function luigis_mansion:other/drop_loot
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.2 0.2 1 10
execute if entity @s[tag=dead] run teleport @s ~ -100 ~

execute if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=!dead,tag=!removed_from_existence] run function e3_demo:old_entities/bat/collide

tag @s[tag=flee,tag=attack] add turn_back
tag @s[tag=flee] add attack
tag @s[tag=flee] remove flee

execute store result score #temp Room run scoreboard players get @s Room
execute as @e[tag=same_room,tag=!spectator,tag=player] if score @s Room = #temp Room run tag @s add this_room
execute if entity @s[tag=!flee,tag=!attack,tag=!collided] if entity @e[tag=this_room,tag=!spectator,tag=player,distance=..10,limit=1] run tag @s add attack
execute if entity @s[tag=attack,tag=!targetted,tag=!turn_back] run function e3_demo:old_entities/bat/target
execute if entity @s[tag=turn_back,tag=!dead] run function e3_demo:old_entities/bat/return
execute if entity @s[tag=targetted,tag=!dead] run function e3_demo:old_entities/bat/move
execute if entity @s[tag=returned,tag=!dead] run function e3_demo:old_entities/bat/returned
execute at @s[tag=!attack,tag=!flee] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~-180 ~
tag @e[tag=this_room] remove this_room
scoreboard players reset #temp Room

execute at @s[tag=!attack] run function luigis_mansion:old_animations/bat/idle
execute at @s[tag=attack] run function luigis_mansion:old_animations/bat/flying
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall