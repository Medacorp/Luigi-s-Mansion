execute store result score #temp Time run data get entity @e[type=minecraft:marker,tag=position,limit=1] Pos[0] 100
execute store result score #temp2 Time run data get entity @a[tag=me,limit=1] Pos[0] 100
scoreboard players operation #temp Time -= #temp2 Time
scoreboard players operation #temp Time *= #temp Time
execute store result score #temp2 Time run data get entity @e[type=minecraft:marker,tag=position,limit=1] Pos[1] 100
execute store result score #temp3 Time run data get entity @a[tag=me,limit=1] Pos[1] 100
scoreboard players operation #temp2 Time -= #temp3 Time
scoreboard players operation #temp2 Time *= #temp2 Time
scoreboard players operation #temp Time += #temp2 Time
execute store result score #temp2 Time run data get entity @e[type=minecraft:marker,tag=position,limit=1] Pos[2] 100
execute store result score #temp3 Time run data get entity @a[tag=me,limit=1] Pos[2] 100
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
tag @a[tag=me,limit=1] add is_pulling
execute unless entity @s[scores={ErrorTime=2..}] unless entity @a[tag=me,limit=1,scores={ErrorTime=2..}] run function luigis_mansion:entities/ghost/damage/weak
execute unless entity @s[scores={ErrorTime=2..}] if entity @a[tag=me,limit=1,scores={ErrorTime=2..}] run function luigis_mansion:entities/ghost/damage/strong
execute if entity @s[scores={ErrorTime=2..}] run function luigis_mansion:entities/ghost/damage/strong
execute if entity @s[scores={Health=..0}] run playsound luigis_mansion:item.poltergust_3000.reel_in player @a[tag=same_room] ~ ~ ~ 1

execute at @a[tag=me,scores={Sound=0,Health=41..,Shrunk=0},limit=1] run playsound luigis_mansion:entity.player.pull.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @a[tag=me,scores={Sound=0,Health=41..,Shrunk=1..},limit=1] run playsound luigis_mansion:entity.player.pull.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @a[tag=me,scores={Sound=0,Health=..40,Shrunk=0},limit=1] run playsound luigis_mansion:entity.player.pull.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @a[tag=me,scores={Sound=0,Health=..40,Shrunk=1..},limit=1] run playsound luigis_mansion:entity.player.pull.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @a[tag=me,scores={Sound=0}] Sound 10