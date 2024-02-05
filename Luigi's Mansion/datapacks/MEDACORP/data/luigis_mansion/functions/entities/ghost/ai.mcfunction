tag @s[scores={StunTime=0}] remove stunned
tag @s[scores={StunTime=1..}] add stunned
execute unless entity @s[tag=portrait_ghost,scores={StunTime=1..}] run scoreboard players remove @s[scores={VulnerableTime=1..},tag=!hurt,tag=!dying] VulnerableTime 1
scoreboard players remove @s[scores={StunTime=1..},tag=!hurt,tag=!dying] StunTime 1
scoreboard players add @s[scores={StunTime=0}] SpawnTime 1
execute unless entity @s[tag=!hurt,tag=!element_hurt,tag=!dying] run scoreboard players set @s SpawnTime 0
execute if entity @s[scores={VanishTime=1..}] if score @s SpawnTime = @s VanishTime run tag @s add vanish
scoreboard players set @s[tag=vanish] VulnerableTime 0
scoreboard players set @s[tag=vanish] StunTime 0
scoreboard players set @s[tag=vanish] HurtTime 0

execute if entity @s[tag=!hurt,tag=flee,tag=!dying,scores={VulnerableTime=0..}] run function luigis_mansion:entities/ghost/hurt/vacuum
execute if entity @s[tag=hurt,tag=!disappear,tag=!dying,scores={VulnerableTime=0..}] run function luigis_mansion:entities/ghost/hurt/vacuum
execute if entity @s[tag=!hurt,tag=!disappear,tag=element_hurt,tag=!dying,scores={VulnerableTime=0..}] run function luigis_mansion:entities/ghost/hurt_element

tag @s[tag=stunned,tag=!hurt,tag=!freeze_animation] add stun_freeze_animation
tag @s[tag=stunned,tag=!hurt] add freeze_animation
execute unless entity @s[tag=stunned,tag=!hurt] run tag @s[tag=stun_freeze_animation] remove freeze_animation
execute unless entity @s[tag=stunned,tag=!hurt] run tag @s remove stun_freeze_animation

tag @s[tag=!flee] remove turned
execute at @s[tag=flee] unless entity @s[scores={DeathTime=1..}] run function luigis_mansion:entities/ghost/flee

execute if entity @s[scores={Health=-2147483648..}] unless entity @s[scores={StunTime=0},tag=!hurt,tag=!element_hurt,tag=!show_health,tag=!spawned_health_display] at @s run function luigis_mansion:entities/ghost/health/show
execute if entity @s[scores={Health=-2147483648..}] unless entity @s[scores={VulnerableTime=0},tag=!burning_heart,tag=!watery_heart,tag=!frozen_heart,tag=!spawned_ghost_heart] at @s run function luigis_mansion:entities/ghost/heart/show

execute at @s[scores={Health=0},tag=!element_hurt,tag=!element_death] run function luigis_mansion:entities/ghost/death
execute at @s[scores={Health=0}] unless entity @s[tag=!element_hurt,tag=!element_death] run function luigis_mansion:entities/ghost/death_element

tag @a remove vacuuming_this_ghost

tag @a[tag=exact_same_room,tag=!spectator] add potential_target
tag @e[tag=exact_same_room,tag=game_boy_horror_location] add potential_target

execute store result score #temp ID if data entity @s data.target run data get entity @s data.target
execute as @a[tag=potential_target] if score @s ID = #temp ID run tag @s add target
execute unless entity @a[tag=target,limit=1] run data remove entity @s data.target
scoreboard players reset #temp ID

execute unless data entity @s data.target run function luigis_mansion:entities/ghost/set_random_target

execute unless data entity @s data.target unless data entity @s data.target_pos run scoreboard players set @s[scores={TargetTask=1..}] TargetTask 4

scoreboard players operation #temp Move = @s Move
execute unless entity @s[scores={ActionTime=0..}] unless data entity @s data.animation run tag @s add appear
execute unless entity @s[scores={ActionTime=0..}] run scoreboard players add @s ActionTime 0
execute unless entity @s[scores={TargetTask=0..}] run scoreboard players add @s TargetTask 0
#execute at @s[tag=!hurt,tag=!flee,scores={TargetTask=0,StunTime=0,ActionTime=0}] run function luigis_mansion:entities/ghost/target_task/do_nothing
execute at @s[tag=!hurt,tag=!flee,scores={TargetTask=1,StunTime=0,ActionTime=0}] run function luigis_mansion:entities/ghost/target_task/move_to_target
execute at @s[tag=!hurt,tag=!flee,scores={TargetTask=2,StunTime=0,ActionTime=0}] run function luigis_mansion:entities/ghost/target_task/circle_to_target
execute at @s[tag=!hurt,tag=!flee,scores={TargetTask=3,StunTime=0,ActionTime=0}] run function luigis_mansion:entities/ghost/target_task/move_to_target_pos
execute at @s[tag=!hurt,tag=!flee,scores={TargetTask=4,StunTime=0,ActionTime=0}] run function luigis_mansion:entities/ghost/target_task/wander

execute at @s[tag=captured] run function luigis_mansion:other/drop_loot

execute at @s[tag=!portrait_ghost,tag=disappear] run function luigis_mansion:entities/ghost/disappear with entity @s ArmorItems[3].tag.luigis_mansion.entity
execute if entity @s[tag=portrait_ghost,tag=disappear] run function luigis_mansion:entities/ghost/disappear_portrait_ghost with entity @s ArmorItems[3].tag.luigis_mansion.entity