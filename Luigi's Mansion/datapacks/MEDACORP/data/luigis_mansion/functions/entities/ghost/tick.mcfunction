execute unless entity @s[scores={Health=1..},tag=!no_ai] run tag @s add dying
execute if entity @s[tag=!dead,tag=dying,tag=normal_death,tag=!no_ai] run function luigis_mansion:entities/ghost/death
execute if entity @s[tag=!dead,tag=dying,tag=hurt,tag=!normal_death,tag=!no_ai] run function luigis_mansion:entities/ghost/death
execute if entity @s[tag=!dead,tag=dying,tag=element_death,tag=!no_ai] run function luigis_mansion:entities/ghost/death_element
execute if entity @s[tag=!dead,tag=dying,tag=element_hurt,tag=!element_death,tag=!no_ai] run function luigis_mansion:entities/ghost/death_element
scoreboard players operation #temp Move = @s Move
execute if entity @s[tag=!freeze,tag=!captured] run function #luigis_mansion:entities/ghosts
scoreboard players add @s[scores={StunTime=0},tag=!hidden,tag=!no_ai] SpawnTime 1
scoreboard players set @s[tag=attack,scores={SpawnTime=21..},tag=!hidden] SpawnTime 20
scoreboard players set @s[tag=fleeing,scores={SpawnTime=21..},tag=!hidden] SpawnTime 20
scoreboard players set @s[tag=collided,scores={SpawnTime=21..},tag=!hidden] SpawnTime 20
scoreboard players set @s[tag=smug,scores={SpawnTime=21..},tag=!hidden] SpawnTime 20
scoreboard players set @s[tag=laugh,scores={SpawnTime=21..},tag=!hidden] SpawnTime 20
scoreboard players set @s[tag=complain,scores={SpawnTime=21..},tag=!hidden] SpawnTime 20
scoreboard players set @s[tag=element_hurt,scores={SpawnTime=21..},tag=!hidden] SpawnTime 20
execute if entity @s[scores={VanishTime=1..},tag=!hidden] if score @s SpawnTime = @s VanishTime run tag @s add vanish
scoreboard players reset @s[tag=vanish] HurtTime
scoreboard players remove @s[tag=!dying,scores={StunTime=1..}] StunTime 1
execute unless entity @s[tag=portrait_ghost,scores={StunTime=1..}] run scoreboard players remove @s[tag=!dying,scores={VulnerableTime=1..},tag=!hurt] VulnerableTime 1
execute if entity @s[scores={VulnerableTime=1..},tag=!spawned_heart] run function luigis_mansion:entities/ghost/spawn_heart
execute if entity @s[tag=!spawned_heart,tag=!hidden,tag=visible] unless entity @s[tag=!burning_heart,tag=!watery_heart,tag=!frozen_heart] run function luigis_mansion:entities/ghost/spawn_heart
execute if entity @s[scores={StunTime=1..},tag=!spawned_health_display,tag=!no_ai,tag=!vanish] run function luigis_mansion:entities/ghost/spawn_health_display
execute if entity @s[tag=hurt,tag=!spawned_health_display,tag=!no_ai,tag=!vanish] run function luigis_mansion:entities/ghost/spawn_health_display
execute if entity @s[tag=element_hurt,tag=!spawned_health_display,tag=!no_ai,tag=!vanish] run function luigis_mansion:entities/ghost/spawn_health_display
execute if entity @s[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boo"}}]},tag=show_health,tag=!spawned_health_display,tag=!no_ai,tag=!vanish] run function luigis_mansion:entities/ghost/spawn_health_display
execute if entity @s[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"king_boo"}}]},tag=show_health,tag=!spawned_health_display,tag=!no_ai,tag=!vanish] run function luigis_mansion:entities/ghost/spawn_health_display
tag @s[scores={VulnerableTime=0},tag=spawned_heart,tag=!burning_heart,tag=!watery_heart,tag=!frozen_heart] remove spawned_heart
tag @s[scores={StunTime=0},tag=!hurt,tag=!fleeing,tag=!element_hurt,nbt=!{ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boo"}}]},nbt=!{ArmorItems:[{tag:{namespace:"luigis_mansion",id:"king_boo"}}]},tag=spawned_health_display] remove spawned_health_display
tag @s[tag=hidden] remove spawned_heart
tag @s[tag=vanish] remove spawned_heart
tag @s[tag=vanish] remove spawned_health_display
scoreboard players set @s[tag=vanish] VulnerableTime 0
scoreboard players set @s[tag=vanish] StunTime 0
execute if entity @s[tag=!hurt,tag=fleeing,tag=!dying,scores={VulnerableTime=0..}] run function luigis_mansion:entities/ghost/hurt
execute if entity @s[tag=hurt,tag=!disappear,tag=!dying,scores={VulnerableTime=0..}] run function luigis_mansion:entities/ghost/hurt
execute if entity @s[tag=!hurt,tag=!disappear,tag=element_hurt,tag=!dying,scores={VulnerableTime=0..}] run function luigis_mansion:entities/ghost/hurt_element

execute if entity @s[tag=fleeing,tag=!vanish,tag=!disappear,tag=!vacuumable,tag=!no_ai,tag=!dying] run function luigis_mansion:entities/ghost/flee
tag @s[tag=in_vacuum] remove in_vacuum
execute at @s[tag=!portrait_ghost,tag=disappear] run function luigis_mansion:entities/ghost/disappear
execute if entity @s[tag=portrait_ghost,tag=disappear] run function luigis_mansion:entities/ghost/disappear_portrait_ghost with entity @s ArmorItems[3].tag
scoreboard players reset #temp Move
tag @s[tag=!spawn] remove spawn_last_tick
kill @s[tag=spawn_last_tick]
tag @s[tag=spawn] add spawn_last_tick