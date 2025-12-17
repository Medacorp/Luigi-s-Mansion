execute unless entity @s[tag=portrait_ghost,scores={StunTime=1..}] run scoreboard players remove @s[scores={VulnerableTime=1..},tag=!hurt,tag=!dying] VulnerableTime 1
scoreboard players remove @s[scores={StunTime=1..},tag=!hurt,tag=!dying] StunTime 1
scoreboard players add @s[scores={StunTime=0}] SpawnTime 1
execute unless entity @s[tag=!hurt,tag=!element_hurt,tag=!dying] run scoreboard players set @s SpawnTime 0
execute if entity @s[scores={VanishTime=1..}] if score @s SpawnTime = @s VanishTime run function luigis_mansion:entities/ghost/timer_vanish
scoreboard players set @s[tag=vanish] VulnerableTime 0
scoreboard players set @s[tag=vanish] StunTime 0
scoreboard players set @s[tag=vanish] HurtTime 0

execute if entity @s[tag=in_vacuum,tag=pulled_by_vacuum,tag=!hurt,tag=!appear,tag=!vanish] run function luigis_mansion:entities/ghost/hurt/vacuum_pull
execute if entity @s[tag=in_vacuum,tag=vacuumable,tag=!hurt,tag=!appear,tag=!vanish] run function luigis_mansion:entities/ghost/hurt/vacuum_capture
execute if entity @s[tag=in_vacuum,scores={VulnerableTime=1..},tag=!appear,tag=!vanish,tag=!dying,tag=!captured,tag=!dead] run function luigis_mansion:entities/ghost/hurt/vacuum_attack
execute if entity @s[tag=!dying,tag=!captured,tag=!dead,scores={VulnerableTime=0..},tag=!show_health] unless entity @s[tag=!hurt,tag=!flee] run function luigis_mansion:entities/ghost/hurt/vacuum
execute if entity @s[tag=!hurt,tag=!disappear,tag=!dying,tag=!captured,tag=!dead,tag=element_hurt] run function luigis_mansion:entities/ghost/hurt/element
execute if entity @s[tag=in_fire,tag=hurt_by_fire,tag=!burning_heart,tag=!watery_heart,tag=!hurt,tag=!appear,tag=!vanish,tag=!dying,tag=!captured,tag=!dead] run function luigis_mansion:entities/ghost/hurt/fire
execute if entity @s[tag=in_water,tag=hurt_by_water,tag=!watery_heart,tag=!frozen_heart,tag=!hurt,tag=!appear,tag=!vanish,tag=!dying,tag=!captured,tag=!dead] run function luigis_mansion:entities/ghost/hurt/water
execute if entity @s[tag=in_ice,tag=hurt_by_ice,tag=!burning_heart,tag=!frozen_heart,tag=!hurt,tag=!appear,tag=!vanish,tag=!dying,tag=!captured,tag=!dead] run function luigis_mansion:entities/ghost/hurt/ice

tag @s[tag=stunned,tag=!hurt,tag=!freeze_animation] add stun_freeze_animation
tag @s[tag=stunned,tag=!hurt] add freeze_animation
execute unless entity @s[tag=stunned,tag=!hurt] run tag @s[tag=stun_freeze_animation] remove freeze_animation
execute unless entity @s[tag=stunned,tag=!hurt] run tag @s remove stun_freeze_animation
tag @s[scores={StunTime=0}] remove stunned
tag @s[scores={StunTime=1..}] add stunned

scoreboard players set @s[tag=!flee,tag=!freeze,tag=!show_health] FleeTime 0
execute at @s[tag=flee,tag=!freeze,tag=!show_health] unless entity @s[scores={DeathTime=1..}] run function luigis_mansion:entities/ghost/flee

execute if entity @s[scores={Health=-2147483648..},tag=show_health] at @s run function luigis_mansion:entities/ghost/health/show
execute if entity @s[scores={Health=-2147483648..,StunTime=0..},tag=!show_health] unless entity @s[scores={StunTime=0},tag=!hurt,tag=!element_hurt,tag=!spawned_health_display] at @s run function luigis_mansion:entities/ghost/health/show
execute if entity @s[scores={VulnerableTime=0..,Health=-2147483648..}] unless entity @s[scores={VulnerableTime=0},tag=!burning_heart,tag=!watery_heart,tag=!frozen_heart,tag=!spawned_ghost_heart] unless entity @s[tag=!spawned_ghost_heart,tag=vanish] at @s run function luigis_mansion:entities/ghost/heart/show

execute at @s[tag=normal_death,tag=!captured,tag=!dead] run function luigis_mansion:entities/ghost/death
execute at @s[scores={Health=0},tag=!element_hurt,tag=!element_death,tag=!normal_death,tag=!captured,tag=!dead] run function luigis_mansion:entities/ghost/death
execute at @s[tag=!captured,tag=!dead] unless entity @s[scores={Health=1..}] unless entity @s[tag=!element_hurt,tag=!element_death] run function luigis_mansion:entities/ghost/death_element

scoreboard players set @s[tag=!hurt,tag=!flee,tag=!freeze,scores={TargetTask=1..,ActionTime=0,Move=..0}] TargetTask 0
execute at @s[tag=!hurt,tag=!flee,tag=!freeze,scores={TargetTask=0,ActionTime=0}] unless entity @s[scores={StunTime=1..}] run function luigis_mansion:entities/ghost/target_task/do_nothing
execute at @s[tag=!hurt,tag=!flee,tag=!freeze,scores={TargetTask=1,ActionTime=0}] unless entity @s[scores={StunTime=1..}] run function luigis_mansion:entities/ghost/target_task/move_to_target
execute at @s[tag=!hurt,tag=!flee,tag=!freeze,scores={TargetTask=2,ActionTime=0}] unless entity @s[scores={StunTime=1..}] run function luigis_mansion:entities/ghost/target_task/stay_away_from_target
execute at @s[tag=!hurt,tag=!flee,tag=!freeze,scores={TargetTask=3,ActionTime=0}] unless entity @s[scores={StunTime=1..}] run function luigis_mansion:entities/ghost/target_task/move_to_target_pos
execute at @s[tag=!hurt,tag=!flee,tag=!freeze,scores={TargetTask=4,ActionTime=0}] unless entity @s[scores={StunTime=1..}] run function luigis_mansion:entities/ghost/target_task/wander
execute at @s[tag=!hurt,tag=!flee,tag=!freeze,scores={TargetTask=5,ActionTime=0}] unless entity @s[scores={StunTime=1..}] run function luigis_mansion:entities/ghost/target_task/follow_path
execute at @s[tag=!hurt,tag=!flee,tag=!freeze,scores={TargetTask=6,ActionTime=0}] unless entity @s[scores={StunTime=1..}] run function luigis_mansion:entities/ghost/target_task/circle_above_target

execute at @s[tag=!portrait_ghost,tag=disappear] run function luigis_mansion:entities/ghost/disappear with entity @s data.entity
execute at @s[tag=portrait_ghost,tag=disappear] run function luigis_mansion:entities/ghost/disappear_portrait_ghost with entity @s data.entity