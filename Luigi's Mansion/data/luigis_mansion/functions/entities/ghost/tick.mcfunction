execute unless entity @s[scores={Health=1..},tag=!dialog] run tag @s add dying
execute if entity @s[tag=dying,tag=normal_death,tag=!dialog] run function luigis_mansion:entities/ghost/death
execute if entity @s[tag=dying,tag=hurt,tag=!normal_death,tag=!dialog] run function luigis_mansion:entities/ghost/death
execute if entity @s[tag=dying,tag=element_death,tag=!dialog] run function luigis_mansion:entities/ghost/death_element
execute if entity @s[tag=dying,tag=element_hurt,tag=!element_hurt,tag=!dialog] run function luigis_mansion:entities/ghost/death_element
scoreboard players operation #temp Move = @s Move
execute unless score @s ActionTime matches 1.. run tag @s[tag=disappear_next_tick,tag=vanish] add disappear
execute unless score @s ActionTime matches 1.. run tag @s[tag=vanish] add disappear_next_tick
function #luigis_mansion:entities/ghosts

scoreboard players add @s[scores={StunTime=0}] SpawnTime 1
scoreboard players set @s[tag=attack,scores={SpawnTime=21..}] SpawnTime 20
scoreboard players set @s[tag=fleeing,scores={SpawnTime=21..}] SpawnTime 20
scoreboard players set @s[tag=collided,scores={SpawnTime=21..}] SpawnTime 20
scoreboard players set @s[tag=laugh,scores={SpawnTime=21..}] SpawnTime 20
scoreboard players set @s[tag=complain,scores={SpawnTime=21..}] SpawnTime 20
scoreboard players set @s[tag=element_hurt,scores={SpawnTime=21..}] SpawnTime 20
scoreboard players reset @s[tag=vanish] HurtTime
scoreboard players remove @s[tag=!dying,scores={StunTime=1..}] StunTime 1
execute unless entity @s[tag=portrait_ghost,scores={StunTime=1..}] run scoreboard players remove @s[tag=!dying,scores={VulnerableTime=1..},tag=!hurt] VulnerableTime 1
execute if entity @s[scores={VulnerableTime=1..},tag=!spawned_heart] run function luigis_mansion:entities/ghost/spawn_heart
execute if entity @s[tag=!spawned_heart] unless entity @s[tag=!burning_heart,tag=!watery_heart,tag=!frozen_heart] run function luigis_mansion:entities/ghost/spawn_heart
execute if entity @s[scores={StunTime=1..},tag=!spawned_health_display,tag=!dialog,tag=!vanish] run function luigis_mansion:entities/ghost/spawn_health_display
execute if entity @s[tag=hurt,tag=!spawned_health_display,tag=!dialog,tag=!vanish] run function luigis_mansion:entities/ghost/spawn_health_display
execute if entity @s[tag=element_hurt,tag=!spawned_health_display,tag=!dialog,tag=!vanish] run function luigis_mansion:entities/ghost/spawn_health_display
execute if entity @s[tag=boo,tag=!cutscene,tag=!spawned_health_display,tag=!dialog,tag=!vanish] run function luigis_mansion:entities/ghost/spawn_health_display
execute if entity @s[tag=king_boo,tag=battle,tag=!spawned_health_display,tag=!dialog,tag=!vanish] run function luigis_mansion:entities/ghost/spawn_health_display
tag @s[scores={VulnerableTime=0},tag=spawned_heart,tag=!burning_heart,tag=!watery_heart,tag=!frozen_heart] remove spawned_heart
tag @s[scores={StunTime=0},tag=!hurt,tag=!fleeing,tag=!element_hurt,tag=!boo,tag=!king_boo,tag=spawned_health_display] remove spawned_health_display
tag @s[tag=vanish] remove spawned_heart
tag @s[tag=vanish] remove spawned_health_display
execute if entity @s[tag=!hurt,tag=fleeing,tag=!dying,scores={VulnerableTime=0..}] run function luigis_mansion:entities/ghost/hurt
execute if entity @s[tag=hurt,tag=!disappear,tag=!dying,scores={VulnerableTime=0..}] run function luigis_mansion:entities/ghost/hurt
tag @s[tag=!element_hurt,tag=last_element_hurt] remove last_element_hurt
execute if entity @s[tag=!hurt,tag=!disappear,tag=element_hurt,tag=!dying,scores={VulnerableTime=0..}] run function luigis_mansion:entities/ghost/hurt_element
execute if entity @s[tag=!hurt,tag=!disappear,tag=!element_hurt,tag=freeze,tag=!dying,scores={VulnerableTime=0..}] run function luigis_mansion:entities/ghost/hurt_element
execute unless entity @s[scores={HomeY=9300..10199}] if entity @s[tag=!ceiling_ghost,tag=!no_y_sync] run scoreboard players set @s[y=93,dy=6,tag=!vanish,tag=!disappear] HomeY 9300
execute unless entity @s[scores={HomeY=10200..11099}] if entity @s[tag=!ceiling_ghost,tag=!no_y_sync] run scoreboard players set @s[y=102,dy=6,tag=!vanish,tag=!disappear] HomeY 10200
execute unless entity @s[scores={HomeY=11100..11999}] if entity @s[tag=!ceiling_ghost,tag=!no_y_sync] run scoreboard players set @s[y=111,dy=6,tag=!vanish,tag=!disappear] HomeY 11100
execute unless entity @s[scores={HomeY=12000..13199}] if entity @s[tag=!ceiling_ghost,tag=!no_y_sync] run scoreboard players set @s[y=120,dy=6,tag=!vanish,tag=!disappear] HomeY 12000
execute unless entity @s[scores={HomeY=13200..13299}] if entity @s[tag=!ceiling_ghost,tag=!no_y_sync] run scoreboard players set @s[y=132,dy=6,tag=!vanish,tag=!disappear] HomeY 13100
execute unless entity @s[scores={HomeY=9300..10199}] if entity @s[tag=ceiling_ghost,tag=!no_y_sync] run scoreboard players set @s[y=93,dy=6,tag=!vanish,tag=!disappear] HomeY 9600
execute unless entity @s[scores={HomeY=10200..11099}] if entity @s[tag=ceiling_ghost,tag=!no_y_sync] run scoreboard players set @s[y=102,dy=6,tag=!vanish,tag=!disappear] HomeY 10500
execute unless entity @s[scores={HomeY=11100..11999}] if entity @s[tag=ceiling_ghost,tag=!no_y_sync] run scoreboard players set @s[y=111,dy=6,tag=!vanish,tag=!disappear] HomeY 11400
execute unless entity @s[scores={HomeY=12000..13199}] if entity @s[tag=ceiling_ghost,tag=!no_y_sync] run scoreboard players set @s[y=120,dy=6,tag=!vanish,tag=!disappear] HomeY 12300
execute unless entity @s[scores={HomeY=13200..13299}] if entity @s[tag=ceiling_ghost,tag=!no_y_sync] run scoreboard players set @s[y=132,dy=6,tag=!vanish,tag=!disappear] HomeY 13400

execute if entity @s[tag=fleeing,tag=!vanish,tag=!disappear,tag=!vacuumable,tag=!dialog,tag=!dying] run function luigis_mansion:entities/ghost/flee
tag @s[tag=in_vacuum] remove in_vacuum
execute if entity @s[tag=!portrait_ghost,tag=disappear] run function luigis_mansion:entities/ghost/disappear
execute if entity @s[tag=portrait_ghost,tag=disappear] run function luigis_mansion:entities/ghost/disappear_portrait_ghost
scoreboard players reset #temp Move