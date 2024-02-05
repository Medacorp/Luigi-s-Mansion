scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=model_piece,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add this_model

teleport @s[tag=!big] ~ ~0.5 ~
execute if entity @s[tag=!big] as @e[tag=this_model] run teleport @s ~ ~0.5 ~
teleport @s[tag=big] ~ ~ ~
execute if entity @s[tag=big] as @e[tag=this_model] run teleport @s ~ ~ ~

scoreboard players add @s SpawnTime 1
scoreboard players add @s[tag=in_vacuum,scores={SpawnTime=100..}] VacuumTime 1
scoreboard players set @s[tag=!in_vacuum_2,tag=!in_vacuum] VacuumTime 0
tag @s[tag=in_vacuum,scores={SpawnTime=100..}] add flee
tag @s[tag=!in_vacuum_2,tag=!in_vacuum] remove flee
tag @s[tag=!in_vacuum] remove in_vacuum_2
tag @s[tag=in_vacuum] add in_vacuum_2
tag @s[tag=in_vacuum] remove in_vacuum
tag @s[tag=!big,scores={VacuumTime=40}] add shadow_death
tag @s[tag=big,scores={VacuumTime=60}] add shadow_death
tag @s remove disappear

execute at @s[tag=shadow_death] run function luigis_mansion:old_entities/black_bogmire/vanish

execute if entity @s[scores={VacuumTime=1}] run playsound luigis_mansion:entity.black_bogmire.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={VacuumTime=1}] Sound 40
execute if entity @s[scores={Sound=0},tag=!flee,tag=!vanish,tag=!new_black_bogmire,tag=!vanish_flee] run playsound luigis_mansion:entity.black_bogmire.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=!flee,tag=!vanish,tag=!new_black_bogmire,tag=!vanish_flee] Sound 30

execute at @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=!dead,tag=!shadow_death,tag=!removed_from_existence] run function luigis_mansion:old_entities/black_bogmire/collide

execute at @s[tag=!flee,tag=!collided,tag=!shadow_death,scores={SpawnTime=100..}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!flee,tag=!collided,tag=!shadow_death,scores={SpawnTime=100..}] run function luigis_mansion:old_entities/ghost/move_forward
execute at @s[tag=flee,tag=!shadow_death] run function luigis_mansion:old_entities/black_bogmire/flee

execute at @s[tag=vanish] run function luigis_mansion:old_entities/black_bogmire/vanish
execute at @s[tag=new_black_bogmire] run function luigis_mansion:old_entities/black_bogmire/appear
execute at @s[tag=vanish_flee] run function luigis_mansion:old_animations/bogmire/flee
execute at @s[tag=!flee,tag=!spawn,tag=!vanish,tag=!shadow_death] run function luigis_mansion:old_animations/bogmire/idle
execute at @s[tag=flee,tag=!shadow_death] run function luigis_mansion:old_animations/bogmire/flee

execute at @s[tag=!big] run teleport @s ~ ~-0.5 ~
execute if entity @s[tag=!big] as @e[tag=this_model] at @s run teleport @s ~ ~-0.5 ~
execute at @s[tag=big] run teleport @s ~ ~ ~
execute if entity @s[tag=big] as @e[tag=this_model] at @s run teleport @s ~ ~ ~

scoreboard players reset #temp GhostNr
tag @e[tag=this_model,limit=1] add found_owner
tag @e[tag=this_model,limit=1] remove this_model

tag @s remove flee
tag @s remove element_hurt
tag @s remove freeze
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall