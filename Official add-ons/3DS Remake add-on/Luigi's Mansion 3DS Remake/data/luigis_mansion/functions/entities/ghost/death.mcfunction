tag @s[tag=!boo_hurt,tag=!boo_death] add normal_death
tag @s[tag=boo_hurt] add boo_death
tag @s[tag=boo_hurt] remove boo_hurt

scoreboard players add @s DeathTime 1

tag @s[scores={DeathTime=1}] add me
execute if entity @s[scores={DeathTime=1}] as @a run function luigis_mansion:entities/ghost/find_vacuumers
tag @s[scores={DeathTime=1}] remove me
execute if entity @s[scores={DeathTime=1}] run scoreboard players operation @s KillerID = @p[tag=!spectator,tag=player,tag=vacuuming_this_ghost] ID
execute if entity @s[scores={DeathTime=1}] run tag @a remove vacuuming_this_ghost

scoreboard players operation #temp KillerID = @s KillerID
execute as @a[tag=!spectator] if score @s ID = #temp KillerID run tag @s add killer
execute if entity @s[scores={DeathTime=1}] unless entity @a[tag=killer,limit=1] run function luigis_mansion:entities/ghost/cancel_death
scoreboard players reset #temp KillerID
execute at @s facing entity @a[tag=killer,limit=1] feet run teleport @s ~ ~ ~ ~-180 ~
execute store result score #temp HomeRotation run data get entity @s Rotation[1] 100
scoreboard players operation #temp HomeRotation *= #-1 Constants
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #temp HomeRotation
scoreboard players reset #temp HomeRotation

scoreboard players set @s[scores={DeathTime=1}] Move 0
execute at @s run teleport @s ^ ^ ^-0.4

execute at @s[scores={DeathTime=2,Health=-2147483648..},tag=!dont_drop_heart,tag=!dead,tag=!remove_from_existence] unless entity @s[scores={Room=..-1}] if entity @a[tag=killer,limit=1,scores={GhostCount=2..}] if score #heart_money_count Selected matches 1.. run function luigis_mansion:spawn_entities/item/small_heart
tag @e[tag=this_entity,limit=1] remove this_entity
execute at @s[scores={DeathTime=2,Health=-2147483648..},tag=!dead,tag=!remove_from_existence] if entity @a[tag=killer,limit=1,scores={GhostCount=2..}] if data storage luigis_mansion_3ds_remake:data current_state.trophy.easy{task_4:0b} run function luigis_mansion_3ds_remake:room/gallery/clear_task/easy/task_4
execute at @s[scores={DeathTime=1,Room=1..},tag=!dead,tag=!remove_from_existence] unless entity @s[scores={Health=-2147483648..}] run function luigis_mansion:entities/ghost/capture
execute at @s[scores={DeathTime=2..,Room=1..,Health=-2147483648..},tag=!dead,tag=!remove_from_existence] if entity @a[tag=!spectator,distance=..0.7] run function luigis_mansion:entities/ghost/capture
execute at @s[scores={DeathTime=2..,Room=-2},tag=!dead,tag=!remove_from_existence] if entity @a[tag=!spectator,distance=..0.7] run scoreboard players add #training_room TrainingRoomScore 1
execute at @s[scores={DeathTime=2..,Room=-2,TrainingRoomScore=1..},tag=!dead,tag=!remove_from_existence] run scoreboard players operation @a[tag=killer,distance=..0.7] TrainingRoomScore += @s TrainingRoomScore
execute at @s[scores={DeathTime=2..},tag=!dead,tag=!remove_from_existence] if entity @a[tag=!spectator,distance=..0.7] run tag @s add captured
tag @a[tag=killer,limit=1] add capturing_ghost
tag @a[tag=killer,limit=1] remove killer

execute if entity @s[scores={DeathTime=1},tag=!dead,tag=!remove_from_existence] unless entity @s[scores={Health=-2147483648..}] run tag @s add captured