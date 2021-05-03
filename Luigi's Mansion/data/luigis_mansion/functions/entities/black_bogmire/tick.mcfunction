scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=black_bogmire_body] if score @s GhostNr = #temp GhostNr run tag @s add this_model

teleport @s[tag=!big] ~ ~0.5 ~
execute if entity @s[tag=!big] as @e[tag=this_model] run teleport @s ~ ~0.5 ~
teleport @s[tag=big] ~ ~ ~
execute if entity @s[tag=big] as @e[tag=this_model] run teleport @s ~ ~ ~

scoreboard players add @s SpawnTime 1
scoreboard players add @s[tag=in_vacuum,scores={SpawnTime=100..}] VacuumTime 1
scoreboard players set @s[tag=!in_vacuum_2,tag=!in_vacuum] VacuumTime 0
tag @s[tag=in_vacuum,scores={SpawnTime=100..}] add fleeing
tag @s[tag=!in_vacuum_2,tag=!in_vacuum] remove fleeing
tag @s[tag=!in_vacuum] remove in_vacuum_2
tag @s[tag=in_vacuum] add in_vacuum_2
tag @s[tag=in_vacuum] remove in_vacuum
tag @s[tag=!big,scores={VacuumTime=40}] add shadow_death
tag @s[tag=big,scores={VacuumTime=60}] add shadow_death
tag @s remove disappear

execute at @s[tag=shadow_death] run function luigis_mansion:entities/black_bogmire/vanish
execute if entity @s[tag=dead] run teleport @s ~ -100 ~

execute if entity @s[scores={HurtTime=1},tag=hurt] run playsound luigis_mansion:entity.black_bogmire.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt] Sound 40

execute at @a[gamemode=!spectator,distance=..0.7,limit=1] if entity @s[tag=!dead,tag=!shadow_death,tag=!removed_from_existence] run function luigis_mansion:entities/black_bogmire/collide

execute at @s[tag=!fleeing,tag=!collided,tag=!shadow_death,scores={SpawnTime=100..}] facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!fleeing,tag=!collided,tag=!shadow_death,scores={SpawnTime=100..}] run function luigis_mansion:entities/ghost/move_forward
execute at @s[tag=fleeing,tag=!shadow_death] run function luigis_mansion:entities/black_bogmire/flee

execute at @s[tag=vanish] run function luigis_mansion:entities/black_bogmire/vanish
execute at @s[tag=appear] run function luigis_mansion:entities/black_bogmire/appear
execute at @s[tag=vanish_flee] run function luigis_mansion:animations/bogmire/flee
execute at @s[tag=!hurt,tag=!fleeing,tag=!appear,tag=!vanish,tag=!shadow_death] run function luigis_mansion:animations/bogmire/idle
execute at @s[tag=fleeing,tag=!shadow_death] run function luigis_mansion:animations/bogmire/flee

execute unless entity @s[tag=!dead,tag=!remove_from_existence] run teleport @e[tag=this_model] ~ -100 ~
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run tag @e[tag=this_model] add dead

execute at @s[tag=!big] run teleport @s ~ ~-0.5 ~
execute if entity @s[tag=!big] as @e[tag=this_model] at @s run teleport @s ~ ~-0.5 ~
execute at @s[tag=big] run teleport @s ~ ~ ~
execute if entity @s[tag=big] as @e[tag=this_model] at @s run teleport @s ~ ~ ~

scoreboard players reset #temp GhostNr
tag @e[tag=this_model,limit=1] remove this_model

tag @s remove fleeing
tag @s remove hurt
tag @s remove element_hurt
tag @s remove freeze