playsound luigis_mansion:entity.heart.flash hostile @a[tag=same_room] ~ ~ ~ 1
execute unless score #global_difficulty Selected matches 3 run scoreboard players set @s StunTime 200
execute if score #global_difficulty Selected matches 3 run scoreboard players set #temp VulnerableTime 16
execute if score #global_difficulty Selected matches 3 run scoreboard players operation #temp VulnerableTime *= #temp PathStep
execute if score #global_difficulty Selected matches 3 run scoreboard players remove #temp VulnerableTime 16
execute if score #global_difficulty Selected matches 3 run scoreboard players set @s StunTime 20
execute if score #global_difficulty Selected matches 3 unless score #strobulb Selected matches 1 run scoreboard players operation @s StunTime -= #temp VulnerableTime
execute if score #global_difficulty Selected matches 3 run scoreboard players reset #temp VulnerableTime