execute store result score #temp Time run data get entity @s Rotation[0]
execute positioned as @s facing entity @e[tag=interact,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute store result score #temp2 Time run data get entity @s Rotation[0]
execute if entity @s[scores={FurnitureRotationDefault=..-90}] if score #temp Time matches 1.. run scoreboard players remove #temp Time 360
execute if entity @s[scores={FurnitureRotationDefault=90..}] if score #temp Time matches ..-1 run scoreboard players add #temp Time 360
execute if entity @s[scores={FurnitureRotationDefault=..-90}] if score #temp2 Time matches 1.. run scoreboard players remove #temp2 Time 360
execute if entity @s[scores={FurnitureRotationDefault=90..}] if score #temp2 Time matches ..-1 run scoreboard players add #temp2 Time 360
scoreboard players operation #temp3 Time = @s FurnitureRotationDefault
scoreboard players operation #temp4 Time = @s FurnitureRotationDefault
scoreboard players remove #temp3 Time 45
scoreboard players add #temp4 Time 45
execute if score #temp Time > @s FurnitureRotationDefault unless score #temp2 Time > @s FurnitureRotationDefault if score #temp2 Time > #temp3 Time if score #temp2 Time < #temp4 Time run scoreboard players remove @s FurnitureSpins 1
execute if score #temp Time < @s FurnitureRotationDefault unless score #temp2 Time < @s FurnitureRotationDefault if score #temp2 Time > #temp3 Time if score #temp2 Time < #temp4 Time run scoreboard players add @s FurnitureSpins 1
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
scoreboard players reset #temp4 Time