scoreboard players operation #temp LastHealth = @s Health
scoreboard players set #temp Health 25
execute if entity @s[tag=dark_room] run scoreboard players operation #temp Health /= #5 Constants
scoreboard players operation #temp Health *= #multiply_damage Selected
scoreboard players operation #temp Health /= #100 Constants
scoreboard players operation @s Health -= #temp Health
scoreboard players operation #temp Health = @s Health
scoreboard players operation #temp LastHealth /= #100 Constants
scoreboard players operation #temp Health /= #100 Constants
scoreboard players set @s[scores={Health=..-1}] Health 0
execute at @s[scores={Health=0}] run playsound luigis_mansion:entity.boo.poltergust_latched_on hostile @a[tag=same_room] ~ ~ ~ 1
execute unless score #temp LastHealth = #temp Health at @s run playsound luigis_beta_mansion:entity.boo.lose_health hostile @a[tag=same_room] ~ ~ ~ 1
execute unless score #temp LastHealth = #temp Health at @s run particle minecraft:damage_indicator ~ ~0.6 ~ 0.2 0.2 0.2 0 1
scoreboard players reset #temp LastHealth
scoreboard players reset #temp Health
tag @s remove attack
tag @s remove laugh
tag @s remove complain
tag @s remove hurt
tag @s add already_hurt