scoreboard players set @a[tag=same_room] ForceScreen 1
execute if entity @e[tag=this_model,limit=1] run tag @e[tag=this_model] add dead
execute unless entity @a[scores={TrainingOption=0..}] as @a[tag=same_room,gamemode=!spectator,tag=!gameboy_horror,tag=!looking_at_map] unless entity @s[scores={TrainingOption=-1}] run function luigis_mansion:entities/player/animation/set/gameboy_horror
execute if score #training_choice Selected matches 1 unless entity @a[scores={TrainingOption=0..}] as @a[tag=same_room,gamemode=!spectator] unless entity @s[scores={TrainingOption=-1}] run function #luigis_mansion:dialog/training_room/option
execute unless entity @a[scores={TrainingOption=0..}] as @a[tag=same_room,gamemode=!spectator] unless entity @s[scores={TrainingOption=-1}] run scoreboard players set @s TrainingOption -1
execute if score #training_choice Selected matches 1 unless entity @a[scores={TrainingOption=0..}] as @a[tag=same_room,gamemode=!spectator] if entity @s[scores={TrainingOption=-1}] run scoreboard players enable @s TrainingOption
execute if score #training_choice Selected matches 1 if entity @a[scores={TrainingOption=0..}] as @a[scores={TrainingOption=-1}] run trigger TrainingOption set -1
execute if score #training_choice Selected matches 1 if entity @a[scores={TrainingOption=0..}] run function #luigis_mansion:dialog/training_room/play

execute if score #training_choice Selected matches 0 run function luigis_mansion:dialog/training_room/play
execute unless entity @a[gamemode=!spectator,tag=same_room] run scoreboard players reset @a TrainingOption