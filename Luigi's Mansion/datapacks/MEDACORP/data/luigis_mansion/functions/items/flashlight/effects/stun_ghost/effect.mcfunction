playsound luigis_mansion:entity.heart.flash hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set #temp VulnerableTime 16
scoreboard players operation #temp VulnerableTime *= #temp PathStep
scoreboard players remove #temp VulnerableTime 16
execute unless score #global_difficulty Selected matches 3 run scoreboard players set @s VulnerableTime 80
execute if score #global_difficulty Selected matches 3 run scoreboard players set @s VulnerableTime 20
scoreboard players operation @s VulnerableTime -= #temp VulnerableTime
scoreboard players set @s[scores={VulnerableTime=..0}] VulnerableTime 2
scoreboard players operation @s StunTime = @s VulnerableTime
scoreboard players reset #temp VulnerableTime
tag @s add visible