scoreboard players operation @s FurnitureShake = @s FurnitureSearch
tag @e[tag=exact_same_room,tag=luigi,tag=walking] add can_trigger_treadmill
tag @e[tag=exact_same_room,tag=luigi,tag=running] add can_trigger_treadmill
tag @e[tag=exact_same_room,tag=luigi,tag=sneaking] add can_trigger_treadmill
execute positioned ~-0.5 ~1.83875 ~-0.5 positioned ^ ^ ^-0.5 unless entity @e[tag=luigi,dx=0,dy=0,dz=0,limit=1] positioned ^ ^ ^1 unless entity @e[tag=luigi,dx=0,dy=0,dz=0,limit=1] run scoreboard players set @s FurnitureSearch 0
execute positioned ~-0.5 ~1.83875 ~-0.5 positioned ^ ^ ^-0.5 if entity @e[tag=luigi,tag=can_trigger_treadmill,dx=0,dy=0,dz=0,limit=1] run scoreboard players add @s FurnitureSearch 1
execute positioned ~-0.5 ~1.83875 ~-0.5 positioned ^ ^ ^-0.5 unless entity @e[tag=luigi,tag=can_trigger_treadmill,dx=0,dy=0,dz=0,limit=1] positioned ^ ^ ^1 if entity @e[tag=luigi,tag=can_trigger_treadmill,dx=0,dy=0,dz=0,limit=1] run scoreboard players add @s FurnitureSearch 1

execute unless score @s FurnitureShake = @s FurnitureSearch if score @s FurnitureSearch matches 1 run tag @s[predicate=luigis_mansion:furniture/altered_pitch_chance] add altered_pitch
execute unless score @s FurnitureShake = @s FurnitureSearch if entity @s[tag=!altered_pitch,tag=start_sound,scores={RoomNoise=0}] run playsound luigis_mansion:furniture.treadmill.start block @a[tag=same_room] ~ ~ ~ 1 1
execute unless score @s FurnitureShake = @s FurnitureSearch if entity @s[tag=altered_pitch,tag=start_sound,scores={RoomNoise=0}] run playsound luigis_mansion:furniture.treadmill.start block @a[tag=same_room] ~ ~ ~ 1 1.4
execute unless score @s FurnitureShake = @s FurnitureSearch if entity @s[tag=!altered_pitch,tag=!start_sound,scores={RoomNoise=0}] run playsound luigis_mansion:furniture.treadmill.run block @a[tag=same_room] ~ ~ ~ 1 1
execute unless score @s FurnitureShake = @s FurnitureSearch if entity @s[tag=altered_pitch,tag=!start_sound,scores={RoomNoise=0}] run playsound luigis_mansion:furniture.treadmill.run block @a[tag=same_room] ~ ~ ~ 1 1.4
execute unless score @s FurnitureShake = @s FurnitureSearch run scoreboard players set @s[tag=!altered_pitch,scores={RoomNoise=0}] RoomNoise 3
execute unless score @s FurnitureShake = @s FurnitureSearch run scoreboard players set @s[tag=altered_pitch,scores={RoomNoise=0}] RoomNoise 2
execute unless score @s FurnitureShake = @s FurnitureSearch run tag @s remove start_sound
execute if score @s FurnitureShake = @s FurnitureSearch run tag @s add start_sound
execute if score @s FurnitureShake = @s FurnitureSearch run tag @s remove altered_pitch
execute unless score @s FurnitureShake = @s FurnitureSearch store result score #temp Time run data get entity @s equipment.head.components."minecraft:custom_model_data".floats[0]
execute unless score @s FurnitureShake = @s FurnitureSearch store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add #temp Time 1
execute unless score @s FurnitureShake = @s FurnitureSearch if score #temp Time matches 9.. store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set #temp Time 0
scoreboard players reset #temp Time

execute if entity @s[scores={FurnitureSearch=60,FurnitureShake=59}] positioned ~-0.5 ~1.83875 ~-0.5 positioned ^ ^ ^-0.5 run scoreboard players operation @s SearcherID = @e[tag=luigi,tag=can_trigger_treadmill,sort=nearest,dx=0,dy=0,dz=0,limit=1] ID
execute if entity @s[scores={FurnitureSearch=60,FurnitureShake=59}] positioned ~-0.5 ~1.83875 ~-0.5 positioned ^ ^ ^-0.5 unless entity @e[tag=luigi,tag=can_trigger_treadmill,dx=0,dy=0,dz=0,limit=1] positioned ^ ^ ^1 run scoreboard players operation @s SearcherID = @e[tag=luigi,tag=can_trigger_treadmill,sort=nearest,dx=0,dy=0,dz=0,limit=1] ID
execute if entity @s[scores={FurnitureSearch=60,FurnitureShake=59}] run function luigis_mansion:entities/furniture/search/generic

execute positioned ~-0.5 ~1.83875 ~-0.5 positioned ^ ^ ^-0.5 as @e[tag=luigi,scores={TeleportDelayTimer=0},dx=0,dy=0,dz=0,limit=1] positioned ^ ^ ^-0.9 as @s[dx=0,dy=0,dz=0] positioned as @s run function luigis_mansion:entities/luigi/move/execute {execute:"positioned ^ ^ ^0.6",teleport:"~ ~ ~"}
execute positioned ~-0.5 ~1.83875 ~-0.5 positioned ^ ^ ^-0.5 as @e[tag=luigi,scores={TeleportDelayTimer=0},dx=0,dy=0,dz=0,limit=1] positioned ^ ^ ^-0.8 as @s[dx=0,dy=0,dz=0] positioned as @s run function luigis_mansion:entities/luigi/move/execute {execute:"positioned ^ ^ ^0.5",teleport:"~ ~ ~"}
execute positioned ~-0.5 ~1.83875 ~-0.5 positioned ^ ^ ^-0.5 as @e[tag=luigi,scores={TeleportDelayTimer=0},dx=0,dy=0,dz=0,limit=1] positioned ^ ^ ^-0.7 as @s[dx=0,dy=0,dz=0] positioned as @s run function luigis_mansion:entities/luigi/move/execute {execute:"positioned ^ ^ ^0.4",teleport:"~ ~ ~"}
execute positioned ~-0.5 ~1.83875 ~-0.5 positioned ^ ^ ^-0.5 as @e[tag=luigi,scores={TeleportDelayTimer=0},dx=0,dy=0,dz=0,limit=1] positioned ^ ^ ^-0.6 as @s[dx=0,dy=0,dz=0] positioned as @s run function luigis_mansion:entities/luigi/move/execute {execute:"positioned ^ ^ ^0.3",teleport:"~ ~ ~"}
execute positioned ~-0.5 ~1.83875 ~-0.5 positioned ^ ^ ^-0.5 as @e[tag=luigi,scores={TeleportDelayTimer=0},dx=0,dy=0,dz=0,limit=1] positioned ^ ^ ^-0.5 as @s[dx=0,dy=0,dz=0] positioned as @s run function luigis_mansion:entities/luigi/move/execute {execute:"positioned ^ ^ ^0.2",teleport:"~ ~ ~"}
tag @e[tag=exact_same_room,tag=luigi] remove can_trigger_treadmill