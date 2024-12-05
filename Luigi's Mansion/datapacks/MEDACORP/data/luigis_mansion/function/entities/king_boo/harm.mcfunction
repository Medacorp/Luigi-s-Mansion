scoreboard players operation #temp LastHealth = @s Health
scoreboard players set #temp Health 75
scoreboard players operation #temp Health *= #multiply_damage Selected
scoreboard players operation #temp Health /= #100 Constants
scoreboard players operation @s Health -= #temp Health
scoreboard players operation #temp Health = @s Health
scoreboard players operation #temp LastHealth /= #100 Constants
scoreboard players operation #temp Health /= #100 Constants
scoreboard players set @s[scores={Health=..-1}] Health 0
execute at @s[scores={Health=0}] run playsound luigis_mansion:entity.king_boo.poltergust_latched_on hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={Health=0}] run function luigis_mansion:entities/ghost/hurt/vacuum_latch
execute unless score #temp LastHealth = #temp Health at @s run playsound luigis_mansion:entity.king_boo.lose_health hostile @a[tag=same_room] ~ ~ ~ 1
execute unless score #temp LastHealth = #temp Health at @s run particle minecraft:damage_indicator ~ ~0.6 ~ 0.2 0.2 0.2 0 1
execute unless entity @e[tag=luigi,distance=..1.2,limit=1] if predicate luigis_mansion:boo/pull_chance positioned as @s facing entity @e[tag=vacuuming_me,sort=nearest,limit=1] feet run teleport @s ^ ^ ^0.01
scoreboard players reset #temp LastHealth
scoreboard players reset #temp Health