execute if entity @s[scores={HurtTime=10,Health=1..},tag=!no_ai] run scoreboard players set @a[tag=me,scores={Sound=0},limit=1] Sound 1
execute if entity @s[scores={HurtTime=10,Health=1..},tag=!no_ai] at @s run function luigis_mansion:items/poltergust_3000/vacuuming/hurt_ghost
execute unless entity @s[scores={HurtTime=30..,Health=1..}] run tag @a[tag=me,limit=1] add is_pulling
scoreboard players operation #temp PullAngle = @s PullAngle
execute if score #global_difficulty Selected matches ..1 run scoreboard players add #temp PullAngle 40
execute if score #global_difficulty Selected matches 3 run scoreboard players operation #temp PullAngle /= #2 Constants
execute if score #temp PullAngle matches 180.. run scoreboard players set #temp PullAngle 180
scoreboard players operation #temp PullAngle *= #50 Constants
execute at @e[type=minecraft:marker,tag=position,limit=1] facing entity @s feet run teleport @e[type=minecraft:marker,tag=position,limit=1] ~ ~ ~ ~-180 0
execute store result score #temp Time run data get entity @e[type=minecraft:marker,tag=position,limit=1] Rotation[0] 100
execute at @e[type=minecraft:marker,tag=position,limit=1] facing entity @a[tag=me,limit=1] feet run teleport @e[type=minecraft:marker,tag=position,limit=1] ~ ~ ~ ~ 0
execute store result score #temp2 Time run data get entity @e[type=minecraft:marker,tag=position,limit=1] Rotation[0] 100
scoreboard players operation #temp Time -= #temp2 Time
execute if score #temp Time matches ..-18001 run scoreboard players add #temp Time 36000
execute if score #temp Time matches 18000.. run scoreboard players remove #temp Time 36000
execute if score #temp Time matches ..-1 run scoreboard players operation #temp Time *= #-1 Constants
execute if entity @s[scores={HurtTime=30..,Health=1..},tag=!no_ai] at @e[type=minecraft:marker,tag=position,limit=1] unless entity @a[tag=me,distance=..0.1,limit=1] unless score #temp Time > #temp PullAngle at @s run function luigis_mansion:items/poltergust_3000/vacuuming/hurt_ghost
scoreboard players reset #temp PullAngle
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["temp","target_direction"]}
execute store result score #temp PositionY run data get entity @s Pos[1] 10
execute store result entity @e[tag=target_direction,limit=1] Pos[1] double 0.1 run scoreboard players operation #temp PositionY += @s EntityYOffset
execute rotated as @a[tag=me,limit=1] positioned ^ ^ ^0.5 facing entity @e[tag=target_direction,limit=1] feet run function luigis_mansion:items/poltergust_3000/vacuuming/ghost_step
kill @e[tag=target_direction,limit=1]
scoreboard players reset #temp PositionY
scoreboard players reset #temp Steps
execute if entity @s[scores={Health=..0}] run tag @a[tag=me,limit=1] add capturing_ghost