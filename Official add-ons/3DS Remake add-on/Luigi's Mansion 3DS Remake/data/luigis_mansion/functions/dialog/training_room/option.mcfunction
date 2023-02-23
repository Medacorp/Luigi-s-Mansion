scoreboard players set @a[tag=same_room] ForceScreen 1
execute if entity @e[tag=this_model,limit=1] run tag @e[tag=this_model] add dead
execute unless entity @a[scores={TrainingRoomOption=0..}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] unless entity @s[scores={TrainingRoomOption=-1}] run function luigis_mansion:entities/player/animation/set/game_boy_horror
execute if data storage luigis_mansion:data rooms.training_room{cleared:0b} run scoreboard players set @a[tag=same_room] TrainingRoomOption 1
execute unless entity @a[scores={TrainingRoomOption=0..}] as @a[tag=same_room,gamemode=!spectator] unless entity @s[scores={TrainingRoomOption=-1}] run function #luigis_mansion:dialog/training_room/option
execute unless entity @a[scores={TrainingRoomOption=0..}] as @a[tag=same_room,gamemode=!spectator] unless entity @s[scores={TrainingRoomOption=-1}] run scoreboard players set @s TrainingRoomOption -1
execute unless entity @a[scores={TrainingRoomOption=0..}] as @a[tag=same_room,gamemode=!spectator] if entity @s[scores={TrainingRoomOption=-1}] run scoreboard players enable @s TrainingRoomOption
execute if entity @a[scores={TrainingRoomOption=0..}] as @a[scores={TrainingRoomOption=-1}] run trigger TrainingRoomOption set -1
execute if entity @a[scores={TrainingRoomOption=0..}] run function #luigis_mansion:dialog/training_room/play

execute unless entity @a[gamemode=!spectator,tag=same_room] run scoreboard players reset @a TrainingRoomOption