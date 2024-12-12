execute store result score #temp Time run data get entity @e[type=minecraft:marker,tag=position,limit=1] Pos[0] 100
execute store result score #temp2 Time run data get entity @e[tag=me,limit=1] Pos[0] 100
scoreboard players operation #temp Time -= #temp2 Time
scoreboard players operation #temp Time *= #temp Time
execute store result score #temp2 Time run data get entity @e[type=minecraft:marker,tag=position,limit=1] Pos[1] 100
execute store result score #temp3 Time run data get entity @e[tag=me,limit=1] Pos[1] 100
scoreboard players operation #temp2 Time -= #temp3 Time
scoreboard players operation #temp2 Time *= #temp2 Time
scoreboard players operation #temp Time += #temp2 Time
execute store result score #temp2 Time run data get entity @e[type=minecraft:marker,tag=position,limit=1] Pos[2] 100
execute store result score #temp3 Time run data get entity @e[tag=me,limit=1] Pos[2] 100
scoreboard players operation #temp2 Time -= #temp3 Time
scoreboard players operation #temp2 Time *= #temp2 Time
scoreboard players operation #temp Time += #temp2 Time
scoreboard players set #temp2 Time 1
scoreboard players set #temp3 Time 0
function luigis_mansion:items/poltergust_3000/vacuuming/square_root
scoreboard players operation @s PulledStrength += #temp3 Time
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time

tag @s add is_pulled
tag @e[tag=me,limit=1] add is_pulling
execute unless entity @s[scores={ErrorTime=2..}] unless entity @e[tag=me,limit=1,scores={ErrorTime=2..}] run function luigis_mansion:entities/ghost/damage/weak
execute unless entity @s[scores={ErrorTime=2..}] if entity @e[tag=me,limit=1,scores={ErrorTime=2..}] run function luigis_mansion:entities/ghost/damage/strong
execute if entity @s[scores={ErrorTime=2..}] run function luigis_mansion:entities/ghost/damage/strong
execute if entity @s[scores={Health=..0}] run playsound luigis_mansion:item.poltergust_3000.reel_in player @a[tag=same_room] ~ ~ ~ 1

execute as @e[tag=me,limit=1] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.pull.high_health",medium:"luigis_mansion:entity.player.pull.high_health",low:"luigis_mansion:entity.player.pull.low_health",duration:10}