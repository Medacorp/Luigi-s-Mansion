scoreboard players add @s[scores={Dialog=946..}] Dialog 1
scoreboard players add @s[scores={Dialog=582..944}] Dialog 1
execute positioned ~-1 ~ ~-1 if entity @e[type=minecraft:armor_stand,tag=ball,tag=exact_same_room,tag=spit,dx=2,dy=2,dz=2] run scoreboard players set @s[scores={Dialog=381..581}] Dialog 582
execute unless entity @e[type=minecraft:armor_stand,tag=ball,tag=exact_same_room] run scoreboard players set @s[scores={Dialog=381..581}] Dialog 0
scoreboard players add @s[scores={Dialog=382..580}] Dialog 1
execute if entity @e[type=minecraft:armor_stand,tag=ball,tag=exact_same_room,tag=can_spit_2] run scoreboard players add @s[scores={Dialog=381}] Dialog 1
scoreboard players add @s[scores={Dialog=83,Health=5001..}] Dialog 100
scoreboard players set @s[scores={Dialog=240..380},tag=laugh] Dialog 380
scoreboard players add @s[scores={Dialog=240..380}] Dialog 1
scoreboard players add @s[scores={Dialog=239},tag=!laugh] Dialog 1
scoreboard players add @s[scores={Dialog=121..238}] Dialog 1
scoreboard players add @s[scores={Dialog=120},tag=!laugh] Dialog 1
scoreboard players add @s[scores={Dialog=82..119}] Dialog 1
execute at @e[tag=rocking_horse] positioned ~ ~-3 ~-1.5 if entity @e[tag=same_room,tag=!spectator,tag=player,limit=1,dx=20,dy=3,dz=2] run scoreboard players add @s[scores={Dialog=81}] Dialog 1
scoreboard players add @s[scores={Dialog=61..80}] Dialog 1
scoreboard players add @s[scores={Dialog=60},tag=!laugh] Dialog 1
scoreboard players add @s[scores={Dialog=22..59}] Dialog 1
execute at @e[tag=rocking_horse] positioned ~ ~-3 ~-1.5 if entity @e[tag=same_room,tag=!spectator,tag=player,limit=1,dx=20,dy=3,dz=2] run scoreboard players add @s[scores={Dialog=21}] Dialog 1
scoreboard players add @s[scores={Dialog=..20}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1

tag @s[scores={Dialog=1}] remove laugh
scoreboard players set @s[scores={Dialog=1}] ActionTime 0
tag @s[scores={Dialog=1}] add has_equipment
data remove entity @s[scores={Dialog=1}] data.animation
teleport @s[scores={Dialog=1..20,Health=..5000}] ~ ~ ~ 0 0
teleport @s[scores={Dialog=1..20,Health=5001..}] ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=20}] run data modify storage luigis_mansion:data entity set value {owner:0,tags:["zigzag_right"]}
execute if entity @s[scores={Dialog=20}] store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
execute if entity @s[scores={Dialog=20,Health=..5000}] run data modify storage luigis_mansion:data entity.tags set value ["zigzag_left","fast"]
execute if entity @s[scores={Dialog=20,Health=..5000}] positioned ~-2.5 ~1 ~11.5 rotated -180 0 run function luigis_mansion:spawn_entities/rocking_horse/big
execute if entity @s[scores={Dialog=20,Health=5001..}] positioned ~-2.5 ~1 ~-11.5 rotated 0 0 run function luigis_mansion:spawn_entities/rocking_horse/big
execute if entity @s[scores={Dialog=21}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ 0
data modify entity @s[scores={Dialog=21}] data.animation set value {namespace:"luigis_mansion",id:"ramble"}
tag @s[scores={Dialog=22}] add fake_attack
execute if entity @s[scores={Dialog=22}] rotated -90 10 as @e[tag=rocking_horse,limit=1] run function luigis_mansion:entities/rocking_horse/trigger_attack
teleport @s[scores={Dialog=61..80,Health=..5000}] ~ ~ ~ -180 0
teleport @s[scores={Dialog=61..80,Health=5001..}] ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=80}] run data modify storage luigis_mansion:data entity set value {owner:0,tags:["zigzag_left"]}
execute if entity @s[scores={Dialog=80}] store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
execute if entity @s[scores={Dialog=80,Health=..5000}] run data modify storage luigis_mansion:data entity.tags set value ["zigzag_right","fast"]
execute if entity @s[scores={Dialog=80,Health=..5000}] positioned ~-2.5 ~1 ~-11.5 rotated 0 0 run function luigis_mansion:spawn_entities/rocking_horse/big
execute if entity @s[scores={Dialog=80,Health=5001..}] positioned ~-2.5 ~1 ~11.5 rotated -180 0 run function luigis_mansion:spawn_entities/rocking_horse/big
execute if entity @s[scores={Dialog=81}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ 0
data modify entity @s[scores={Dialog=81}] data.animation set value {namespace:"luigis_mansion",id:"ramble"}
tag @s[scores={Dialog=82}] add fake_attack
execute if entity @s[scores={Dialog=82}] rotated -90 10 as @e[tag=rocking_horse,limit=1] run function luigis_mansion:entities/rocking_horse/trigger_attack
teleport @s[scores={Dialog=121..140}] ~ ~ ~ -90 0
execute if entity @s[scores={Dialog=140}] run data modify storage luigis_mansion:data entity set value {owner:0,tags:["zigzag_left","fast"]}
execute if entity @s[scores={Dialog=140}] store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
execute if entity @s[scores={Dialog=140}] positioned ~-2.5 ~1 ~-11.5 rotated 0 0 run function luigis_mansion:spawn_entities/rocking_horse/big
execute if entity @s[scores={Dialog=140}] run data modify storage luigis_mansion:data entity set value {owner:0,tags:["zigzag_left","fast"]}
execute if entity @s[scores={Dialog=140}] store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
execute if entity @s[scores={Dialog=140}] positioned ~-2.5 ~1 ~11.5 rotated -180 0 run function luigis_mansion:spawn_entities/rocking_horse/big
execute if entity @s[scores={Dialog=141..381}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ 0
data modify entity @s[scores={Dialog=141}] data.animation set value {namespace:"luigis_mansion",id:"ramble"}
tag @s[scores={Dialog=182}] add fake_attack
execute if entity @s[scores={Dialog=182}] rotated -90 10 as @e[tag=rocking_horse,limit=2] run function luigis_mansion:entities/rocking_horse/trigger_attack
data modify entity @s[scores={Dialog=240},tag=!laugh] data.animation set value {namespace:"luigis_mansion",id:"ramble"}
data modify entity @s[scores={Dialog=260},tag=!laugh] data.animation set value {namespace:"luigis_mansion",id:"grab_rambler"}
data modify entity @s[scores={Dialog=280},tag=!laugh] data.animation set value {namespace:"luigis_mansion",id:"ramble"}
execute if entity @s[scores={Dialog=280}] run data modify storage luigis_mansion:data entity set value {owner:0}
execute if entity @s[scores={Dialog=280}] store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
execute if entity @s[scores={Dialog=280},tag=!laugh] positioned ~17 ~3 ~6.5 facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run function luigis_mansion:spawn_entities/ball/chauncey/big
execute if entity @s[scores={Dialog=300}] run data modify storage luigis_mansion:data entity set value {owner:0}
execute if entity @s[scores={Dialog=300}] store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
execute if entity @s[scores={Dialog=300},tag=!laugh] positioned ~17 ~3 ~-6.5 facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run function luigis_mansion:spawn_entities/ball/chauncey/big
data modify entity @s[scores={Dialog=310},tag=!laugh] data.animation set value {namespace:"luigis_mansion",id:"grab_rambler"}
execute if entity @s[scores={Dialog=320}] run data modify storage luigis_mansion:data entity set value {owner:0}
execute if entity @s[scores={Dialog=320}] store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
execute if entity @s[scores={Dialog=320},tag=!laugh] positioned ~2 ~3 ~ facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run function luigis_mansion:spawn_entities/ball/chauncey/real
data modify entity @s[scores={Dialog=330},tag=!laugh] data.animation set value {namespace:"luigis_mansion",id:"ramble"}
execute if entity @s[scores={Dialog=340}] run data modify storage luigis_mansion:data entity set value {owner:0}
execute if entity @s[scores={Dialog=340}] store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
execute if entity @s[scores={Dialog=340},tag=!laugh] positioned ~17 ~3 ~6.5 facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run function luigis_mansion:spawn_entities/ball/chauncey/big
execute if entity @s[scores={Dialog=360}] run data modify storage luigis_mansion:data entity set value {owner:0}
execute if entity @s[scores={Dialog=360}] store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
execute if entity @s[scores={Dialog=360},tag=!laugh] positioned ~17 ~3 ~-6.5 facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run function luigis_mansion:spawn_entities/ball/chauncey/big
tag @s[scores={Dialog=380..539}] add laugh
scoreboard players set @s[scores={Dialog=381..539}] ActionTime 1
tag @s[scores={Dialog=540}] remove laugh
scoreboard players set @s[scores={Dialog=540}] ActionTime 0
data modify entity @s[scores={Dialog=540}] data.animation set value {namespace:"luigis_mansion",id:"ramble"}
data modify entity @s[scores={Dialog=560}] data.animation set value {namespace:"luigis_mansion",id:"grab_rambler"}
execute if entity @s[scores={Dialog=581}] run tag @e[type=minecraft:armor_stand,tag=ball,tag=exact_same_room] add dead

scoreboard players set @s[scores={Dialog=582}] VulnerableTime 240
data modify entity @s[scores={Dialog=582}] data.animation set value {namespace:"luigis_mansion",id:"dizzy"}
tag @s[scores={Dialog=582}] remove laugh
scoreboard players set @s[scores={Dialog=582}] ActionTime 0
execute if entity @s[scores={Dialog=582}] run playsound luigis_mansion:entity.chauncey.hit_by_ball hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={Dialog=582}] rotated ~ 0 run teleport @s ~4 ~-2 ~ ~ ~
execute if entity @s[scores={Dialog=802}] run playsound luigis_mansion:entity.chauncey.recover hostile @a[tag=same_room] ~ ~ ~ 1
teleport @s[scores={Dialog=822}] 792.0 20 64.0
scoreboard players set @s[scores={Dialog=822}] Dialog 0

data remove entity @s[scores={Dialog=824}] data.animation
execute at @s[scores={Dialog=824}] run tag @s[z=56.0,dz=7] add left
teleport @s[scores={Dialog=824}] 796.0 20 ~
execute if entity @s[scores={Dialog=884..943}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ 0
data modify entity @s[scores={Dialog=884}] data.animation set value {namespace:"luigis_mansion",id:"scream"}
execute if entity @s[scores={Dialog=884}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=904}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
data remove entity @s[scores={Dialog=924}] data.animation
teleport @s[scores={Dialog=924..943}] ~ ~-0.1 ~
teleport @s[scores={Dialog=944},tag=!left] ~ ~ ~ -180 0
teleport @s[scores={Dialog=944},tag=left] ~ ~ ~ 0 0
data modify entity @s[scores={Dialog=944}] data.animation set value {namespace:"luigis_mansion",id:"fast_bounce"}
scoreboard players add @s[scores={Dialog=945}] PathStep 1
teleport @s[scores={Dialog=945,PathStep=1..5}] ^ ^0.4 ^0.4
teleport @s[scores={Dialog=945,PathStep=6..10}] ^ ^-0.4 ^0.4
execute at @s[scores={Dialog=945,PathStep=10}] as @e[distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute at @s[scores={Dialog=945,PathStep=10}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"bounced_on"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
execute at @s[scores={Dialog=945,PathStep=10}] run data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute at @s[scores={Dialog=945,PathStep=10}] run advancement grant @a[distance=..1,tag=!spectator] only luigis_mansion:vanilla/waluigi_pinball/chauncey
execute at @s[scores={Dialog=945,PathStep=10}] as @a[distance=..1,tag=!spectator] run function luigis_mansion:entities/player/damage
execute at @s[scores={Dialog=945,PathStep=10}] run data remove storage luigis_mansion:data damage
execute at @s[y_rotation=135..-135,scores={Dialog=945},tag=!left] unless block ^ ^1 ^2 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ ~90 0
execute at @s[y_rotation=-135..-45,scores={Dialog=945},tag=!left] unless block ^ ^1 ^2 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ ~90 0
execute at @s[y_rotation=-45..45,scores={Dialog=945},tag=!left] unless block ^ ^1 ^2 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ ~90 0
execute at @s[y_rotation=135..-135,scores={Dialog=945},tag=left] unless block ^ ^1 ^2 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ ~-90 0
execute at @s[y_rotation=-135..-45,scores={Dialog=945},tag=left] unless block ^ ^1 ^2 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ ~-90 0
execute at @s[y_rotation=-45..45,scores={Dialog=945},tag=left] unless block ^ ^1 ^2 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ ~-90 0
execute at @s[y_rotation=45..135,scores={Dialog=945},x=792.0,dx=1] run scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=945,PathStep=10}] PathStep 0
scoreboard players reset @s[scores={Dialog=946}] PathStep
teleport @s[scores={Dialog=946}] 792.0 20 64.0
execute if entity @s[scores={Dialog=947..}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ 0
data remove entity @s[scores={Dialog=947}] data.animation
data modify entity @s[scores={Dialog=976}] data.animation set value {namespace:"luigis_mansion",id:"scream"}
execute if entity @s[scores={Dialog=976}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
data modify entity @s[scores={Dialog=996}] data.animation set value {namespace:"luigis_mansion",id:"grab_rambler"}
tag @s[scores={Dialog=996}] remove left
scoreboard players set @s[scores={Dialog=1016}] Dialog 0

tag @s[tag=laugh] remove fake_attack