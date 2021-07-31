scoreboard players set #force_gbh_screen Selected 1
execute if entity @e[tag=this_model,limit=1] run tag @e[tag=this_model] add dead
execute if score #training_choice Selected matches 1 unless entity @a[scores={TrainingOption=0..}] as @a[scores={Room=-2}] unless entity @s[scores={TrainingOption=-1}] run function #luigis_mansion:dialog/training_room/option
execute if score #training_choice Selected matches 1 unless entity @a[scores={TrainingOption=0..}] as @a[scores={Room=-2}] unless entity @s[scores={TrainingOption=-1}] run scoreboard players set @s TrainingOption -1
execute if score #training_choice Selected matches 1 unless entity @a[scores={TrainingOption=0..}] as @a[scores={Room=-2}] if entity @s[scores={TrainingOption=-1}] run scoreboard players enable @s TrainingOption
execute if score #training_choice Selected matches 1 if entity @a[scores={TrainingOption=0..}] as @a[scores={TrainingOption=-1}] run trigger TrainingOption set -1
execute if score #training_choice Selected matches 1 if entity @a[scores={TrainingOption=0..}] run function #luigis_mansion:dialog/training_room/play

execute if score #training_choice Selected matches 0 run function luigis_mansion:dialog/training_room/play
execute unless entity @a[gamemode=!spectator,scores={Room=-2}] run scoreboard players reset @a TrainingOption