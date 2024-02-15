execute if entity @s[tag=!intro_done] run function 3ds_remake:old_entities/chauncey/battle_intro/hidden
scoreboard players add @s[scores={Dialog=1784..},tag=intro_done] Dialog 1
scoreboard players add @s[scores={Dialog=582..1782},tag=intro_done] Dialog 1
execute positioned ~-1 ~ ~-1 if entity @e[type=minecraft:armor_stand,tag=ball,scores={Room=73},tag=spit,dx=2,dy=2,dz=2] run scoreboard players set @s[scores={Dialog=381..581},tag=intro_done] Dialog 582
execute unless entity @e[type=minecraft:armor_stand,tag=ball,scores={Room=73}] run scoreboard players set @s[scores={Dialog=381..581},tag=intro_done] Dialog 0
scoreboard players add @s[scores={Dialog=382..580},tag=intro_done] Dialog 1
execute if entity @e[type=minecraft:armor_stand,tag=ball,scores={Room=73},tag=can_spit_2] run scoreboard players add @s[scores={Dialog=381},tag=intro_done] Dialog 1
scoreboard players add @s[scores={Dialog=83,Health=5001..},tag=intro_done] Dialog 100
scoreboard players set @s[scores={Dialog=240..380},tag=laugh,tag=intro_done] Dialog 380
scoreboard players add @s[scores={Dialog=240..380},tag=intro_done] Dialog 1
scoreboard players add @s[scores={Dialog=239},tag=!laugh,tag=intro_done] Dialog 1
scoreboard players add @s[scores={Dialog=121..238},tag=intro_done] Dialog 1
scoreboard players add @s[scores={Dialog=120},tag=!laugh,tag=intro_done] Dialog 1
scoreboard players add @s[scores={Dialog=82..119},tag=intro_done] Dialog 1
execute at @e[tag=rocking_horse] positioned ~ ~-3 ~-1.5 if entity @e[tag=same_room,tag=!spectator,tag=player,limit=1,dx=20,dy=3,dz=2] run scoreboard players add @s[scores={Dialog=81},tag=intro_done] Dialog 1
scoreboard players add @s[scores={Dialog=61..80},tag=intro_done] Dialog 1
scoreboard players add @s[scores={Dialog=60},tag=!laugh,tag=intro_done] Dialog 1
scoreboard players add @s[scores={Dialog=22..59},tag=intro_done] Dialog 1
execute at @e[tag=rocking_horse] positioned ~ ~-3 ~-1.5 if entity @e[tag=same_room,tag=!spectator,tag=player,limit=1,dx=20,dy=3,dz=2] run scoreboard players add @s[scores={Dialog=21},tag=intro_done] Dialog 1
scoreboard players add @s[scores={Dialog=..20},tag=intro_done] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s[tag=intro_done] Dialog 1
execute if entity @s[scores={Dialog=1},tag=intro_done] run tag @s remove laugh
scoreboard players set @s[scores={Dialog=1},tag=intro_done] ActionTime 0
execute if entity @s[scores={Dialog=1},tag=intro_done] run function luigis_mansion:old_entities/chauncey/grab_rambler
tag @s[scores={Dialog=1},tag=intro_done] remove grab_rambler
teleport @s[scores={Dialog=1..20,Health=..5000},tag=intro_done] ~ ~ ~ -180 0
teleport @s[scores={Dialog=1..20,Health=5001..},tag=intro_done] ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=20,Health=..5001},tag=intro_done] run data modify storage luigis_mansion:data entity set value {tags:["zigzag_left"]}
execute if entity @s[scores={Dialog=20,Health=..5000},tag=intro_done] positioned ~-2.5 ~1 ~-11.5 rotated 0 0 run function luigis_mansion:spawn_entities/rocking_horse/big
execute if entity @s[scores={Dialog=20,Health=..5000},tag=intro_done] positioned ~-2.5 ~1 ~-11.5 run scoreboard players operation @e[distance=..0.7,limit=1,tag=rocking_horse] Owner = @s GhostNr
execute if entity @s[scores={Dialog=20,Health=5001..},tag=intro_done] positioned ~-2.5 ~1 ~11.5 rotated -180 0 run function luigis_mansion:spawn_entities/rocking_horse/big
execute if entity @s[scores={Dialog=20,Health=5001..},tag=intro_done] positioned ~-2.5 ~1 ~11.5 run scoreboard players operation @e[distance=..0.7,limit=1,tag=rocking_horse] Owner = @s GhostNr
execute if entity @s[scores={Dialog=21},tag=intro_done] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ 0
tag @s[scores={Dialog=21},tag=intro_done] add rambling
scoreboard players set @s[scores={Dialog=22},tag=intro_done] AnimationProgress 0
tag @s[scores={Dialog=22},tag=intro_done] remove rambling
tag @s[scores={Dialog=22},tag=intro_done] add attack
execute if entity @s[scores={Dialog=22},tag=intro_done] rotated -90 10 as @e[tag=rocking_horse,limit=1] run function luigis_mansion:entities/rocking_horse/trigger_attack
scoreboard players set @s[scores={Dialog=22},tag=intro_done] ActionTime 11
teleport @s[scores={Dialog=61..80,Health=..5000},tag=intro_done] ~ ~ ~ 0 0
teleport @s[scores={Dialog=61..80,Health=5001..},tag=intro_done] ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=80,Health=..5000},tag=intro_done] positioned ~-2.5 ~1 ~11.5 rotated -180 0 run function luigis_mansion:spawn_entities/rocking_horse/big
execute if entity @s[scores={Dialog=80,Health=..5000},tag=intro_done] positioned ~-2.5 ~1 ~11.5 run scoreboard players operation @e[distance=..0.7,limit=1,tag=rocking_horse] Owner = @s GhostNr
execute if entity @s[scores={Dialog=80,Health=5001..},tag=intro_done] run data modify storage luigis_mansion:data entity set value {tags:["zigzag_left"]}
execute if entity @s[scores={Dialog=80,Health=5001..},tag=intro_done] positioned ~-2.5 ~1 ~-11.5 rotated 0 0 run function luigis_mansion:spawn_entities/rocking_horse/big
execute if entity @s[scores={Dialog=80,Health=5001..},tag=intro_done] positioned ~-2.5 ~1 ~-11.5 run scoreboard players operation @e[distance=..0.7,limit=1,tag=rocking_horse] Owner = @s GhostNr
execute if entity @s[scores={Dialog=81},tag=intro_done] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ 0
tag @s[scores={Dialog=81},tag=intro_done] add rambling
scoreboard players set @s[scores={Dialog=82},tag=intro_done] AnimationProgress 0
tag @s[scores={Dialog=82},tag=intro_done] remove rambling
tag @s[scores={Dialog=82},tag=intro_done] add attack
execute if entity @s[scores={Dialog=82},tag=intro_done] rotated -90 10 as @e[tag=rocking_horse,limit=1] run function luigis_mansion:entities/rocking_horse/trigger_attack
scoreboard players set @s[scores={Dialog=82},tag=intro_done] ActionTime 11
teleport @s[scores={Dialog=121..140},tag=intro_done] ~ ~ ~ -90 0
execute if entity @s[scores={Dialog=140,Health=..5001},tag=intro_done] run data modify storage luigis_mansion:data entity set value {tags:["zigzag_left"]}
execute if entity @s[scores={Dialog=140},tag=intro_done] positioned ~-2.5 ~1 ~-11.5 rotated 0 0 run function luigis_mansion:spawn_entities/rocking_horse/big
execute if entity @s[scores={Dialog=140},tag=intro_done] positioned ~-2.5 ~1 ~-11.5 run scoreboard players operation @e[distance=..0.7,limit=1,tag=rocking_horse] Owner = @s GhostNr
execute if entity @s[scores={Dialog=140,Health=..5001},tag=intro_done] run data modify storage luigis_mansion:data entity set value {tags:["zigzag_left"]}
execute if entity @s[scores={Dialog=140},tag=intro_done] positioned ~-2.5 ~1 ~11.5 rotated -180 0 run function luigis_mansion:spawn_entities/rocking_horse/big
execute if entity @s[scores={Dialog=140},tag=intro_done] positioned ~-2.5 ~1 ~11.5 run scoreboard players operation @e[distance=..0.7,limit=1,tag=rocking_horse] Owner = @s GhostNr
execute if entity @s[scores={Dialog=141..381},tag=intro_done] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ 0
tag @s[scores={Dialog=141},tag=intro_done] add rambling
scoreboard players set @s[scores={Dialog=182},tag=intro_done] AnimationProgress 0
tag @s[scores={Dialog=182},tag=intro_done] remove rambling
tag @s[scores={Dialog=182},tag=intro_done] add attack
execute if entity @s[scores={Dialog=182},tag=intro_done] rotated -90 10 as @e[tag=rocking_horse,limit=2] run function luigis_mansion:entities/rocking_horse/trigger_attack
scoreboard players set @s[scores={Dialog=182},tag=intro_done] ActionTime 11
tag @s[scores={Dialog=240},tag=intro_done] add rambling
tag @s[scores={Dialog=260},tag=intro_done] remove rambling
tag @s[scores={Dialog=260},tag=intro_done] add grab_rambler
tag @s[scores={Dialog=280},tag=intro_done] remove grab_rambler
tag @s[scores={Dialog=280},tag=intro_done] add rambling
execute if entity @s[scores={Dialog=280},tag=!laugh,tag=intro_done] positioned ~17 ~3 ~-6.5 facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run function luigis_mansion:spawn_entities/ball/chauncey/big
execute if entity @s[scores={Dialog=280},tag=!laugh,tag=intro_done] positioned ~17 ~2.6 ~-6.5 run scoreboard players operation @e[distance=..0.7,limit=1,tag=ball] Owner = @s GhostNr
execute if entity @s[scores={Dialog=300},tag=!laugh,tag=intro_done] positioned ~17 ~3 ~6.5 facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run function luigis_mansion:spawn_entities/ball/chauncey/big
execute if entity @s[scores={Dialog=300},tag=!laugh,tag=intro_done] positioned ~17 ~2.6 ~6.5 run scoreboard players operation @e[distance=..0.7,limit=1,tag=ball] Owner = @s GhostNr
scoreboard players set @s[scores={Dialog=310},tag=!laugh,tag=intro_done] AnimationProgress 0
tag @s[scores={Dialog=310},tag=!laugh,tag=intro_done] remove rambling
tag @s[scores={Dialog=310},tag=!laugh,tag=intro_done] add grab_rambler
tag @s[scores={Dialog=330},tag=!laugh,tag=intro_done] remove grab_rambler
tag @s[scores={Dialog=330},tag=!laugh,tag=intro_done] add rambling
execute if entity @s[scores={Dialog=320},tag=!laugh,tag=intro_done] positioned ~2 ~3 ~ facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run function luigis_mansion:spawn_entities/ball/chauncey/real
execute if entity @s[scores={Dialog=320},tag=!laugh,tag=intro_done] positioned ~2 ~2.6 ~ run scoreboard players operation @e[distance=..0.7,limit=1,tag=ball] Owner = @s GhostNr
execute if entity @s[scores={Dialog=340},tag=!laugh,tag=intro_done] positioned ~17 ~3 ~-6.5 facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run function luigis_mansion:spawn_entities/ball/chauncey/big
execute if entity @s[scores={Dialog=340},tag=!laugh,tag=intro_done] positioned ~17 ~2.6 ~-6.5 run scoreboard players operation @e[distance=..0.7,limit=1,tag=ball] Owner = @s GhostNr
execute if entity @s[scores={Dialog=360},tag=!laugh,tag=intro_done] positioned ~17 ~3 ~6.5 facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run function luigis_mansion:spawn_entities/ball/chauncey/big
execute if entity @s[scores={Dialog=360},tag=!laugh,tag=intro_done] positioned ~17 ~2.6 ~6.5 run scoreboard players operation @e[distance=..0.7,limit=1,tag=ball] Owner = @s GhostNr
scoreboard players set @s[scores={Dialog=380},tag=intro_done] AnimationProgress 0
tag @s[scores={Dialog=380},tag=intro_done] remove rambling
tag @s[scores={Dialog=380..539},tag=intro_done] add laugh
scoreboard players set @s[scores={Dialog=381..539},tag=intro_done] ActionTime 2
tag @s[scores={Dialog=540},tag=intro_done] remove laugh
scoreboard players set @s[scores={Dialog=540},tag=intro_done] ActionTime 0
tag @s[scores={Dialog=540},tag=intro_done] add rambling
tag @s[scores={Dialog=560},tag=intro_done] remove rambling
tag @s[scores={Dialog=561},tag=intro_done] add grab_rambler
tag @s[scores={Dialog=581},tag=intro_done] remove grab_rambler
execute if entity @s[scores={Dialog=581},tag=intro_done] run tag @e[type=minecraft:armor_stand,tag=ball,scores={Room=73}] add dead
scoreboard players set @s[scores={Dialog=582},tag=intro_done] VulnerableTime 240
scoreboard players set @s[scores={Dialog=582},tag=intro_done] AnimationProgress 0
tag @s[scores={Dialog=582},tag=intro_done] remove laugh
tag @s[scores={Dialog=582},tag=intro_done] add dizzy
execute if entity @s[scores={Dialog=582},tag=intro_done] run playsound luigis_mansion:entity.chauncey.hit_by_ball hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=582},tag=intro_done] ActionTime 0
execute at @s[scores={Dialog=582},tag=intro_done] rotated ~ 0 run teleport @s ~4 ~-2 ~ ~ ~
execute if entity @s[scores={Dialog=802}] run playsound luigis_mansion:entity.chauncey.recover hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=822}] remove dizzy
teleport @s[scores={Dialog=822}] 792.0 20 64.0
scoreboard players set @s[scores={Dialog=822}] Dialog 0
execute at @s[scores={Dialog=1662}] run tag @s[z=56.0,dz=7] add left
teleport @s[scores={Dialog=1662}] 796.0 20 ~
execute if entity @s[scores={Dialog=1722..1781}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ 0
scoreboard players set @s[scores={Dialog=1722}] AnimationProgress 0
tag @s[scores={Dialog=1722}] add scream
execute if entity @s[scores={Dialog=1722}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=1742}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
tag @s[scores={Dialog=1762}] remove scream
teleport @s[scores={Dialog=1762..1781}] ~ ~-0.1 ~
teleport @s[scores={Dialog=1782},tag=!left] ~ ~ ~ -180 0
teleport @s[scores={Dialog=1782},tag=left] ~ ~ ~ 0 0
tag @s[scores={Dialog=1782}] add bounce
scoreboard players set @s[scores={Dialog=1782}] PathStep 0
scoreboard players add @s[scores={Dialog=1783}] PathStep 1
teleport @s[scores={Dialog=1783,PathStep=1..5}] ^ ^0.2 ^0.4
teleport @s[scores={Dialog=1783,PathStep=6..10}] ^ ^-0.2 ^0.4
execute at @s[scores={Dialog=1783,PathStep=10}] as @e[distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute at @s[scores={Dialog=1783,PathStep=10}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"bounced_on"},amount:10,animation:"knockback/large",attacker:-1,no_delete:1b}
execute at @s[scores={Dialog=1783,PathStep=10}] store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute at @s[scores={Dialog=1783,PathStep=10}] run advancement grant @a[distance=..1,gamemode=!spectator] only luigis_mansion:vanilla/waluigi_pinball/chauncey
execute at @s[scores={Dialog=1783,PathStep=10}] as @a[distance=..1,gamemode=!spectator] run function luigis_mansion:entities/player/damage
execute at @s[scores={Dialog=1783,PathStep=10}] run data remove storage luigis_mansion:data damage
execute at @s[y_rotation=135..-135,scores={Dialog=1783},tag=!left] unless block ^ ^1 ^2 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ ~90 0
execute at @s[y_rotation=-135..-45,scores={Dialog=1783},tag=!left] unless block ^ ^1 ^2 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ ~90 0
execute at @s[y_rotation=-45..45,scores={Dialog=1783},tag=!left] unless block ^ ^1 ^2 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ ~90 0
execute at @s[y_rotation=135..-135,scores={Dialog=1783},tag=left] unless block ^ ^1 ^2 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ ~-90 0
execute at @s[y_rotation=-135..-45,scores={Dialog=1783},tag=left] unless block ^ ^1 ^2 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ ~-90 0
execute at @s[y_rotation=-45..45,scores={Dialog=1783},tag=left] unless block ^ ^1 ^2 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ ~-90 0
execute at @s[y_rotation=45..135,scores={Dialog=1783},x=792.0,dx=1] run scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=1783,PathStep=10}] PathStep 0
teleport @s[scores={Dialog=1784}] 792.0 20 64.0
execute if entity @s[scores={Dialog=1785..}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ 0
scoreboard players set @s[scores={Dialog=1785}] AnimationProgress 0
tag @s[scores={Dialog=1785}] remove bounce
scoreboard players set @s[scores={Dialog=1814}] AnimationProgress 0
tag @s[scores={Dialog=1814}] add scream
execute if entity @s[scores={Dialog=1814}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
tag @s[scores={Dialog=1834}] remove scream
tag @s[scores={Dialog=1834}] add grab_rambler
tag @s[scores={Dialog=1834}] remove left
tag @s[scores={Dialog=1854}] remove grab_rambler
scoreboard players set @s[scores={Dialog=1854}] Dialog 0

execute if entity @s[scores={Health=..5000,Dialog=..140}] run tag @e[tag=rocking_horse] add fast
tag @s[tag=laugh] remove attack
tag @s[tag=laugh] remove rambling
tag @s[tag=laugh] remove grab_rambler