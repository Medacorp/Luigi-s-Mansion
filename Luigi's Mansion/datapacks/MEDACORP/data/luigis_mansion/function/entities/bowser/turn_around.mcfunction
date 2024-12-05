execute unless entity @s[scores={ActionTime=1}] facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute unless entity @s[scores={ActionTime=1}] store result score #temp Time run data get entity @s Rotation[0]
execute unless entity @s[scores={ActionTime=1}] run teleport @s ~ ~ ~ ~ ~
execute unless entity @s[scores={ActionTime=1}] store result score #temp2 Time run data get entity @s Rotation[0]
execute unless entity @s[scores={ActionTime=1}] run scoreboard players operation #temp Time -= #temp2 Time
execute unless entity @s[scores={ActionTime=1}] if score #temp Time matches ..-181 run scoreboard players add #temp Time 360
execute unless entity @s[scores={ActionTime=1}] if score #temp Time matches 180.. run scoreboard players remove #temp Time 360
execute unless entity @s[scores={ActionTime=1}] if score #temp Time matches ..-1 run tag @s add turn_left
execute unless entity @s[scores={ActionTime=1}] run data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"walk"}
scoreboard players set @s ActionTime 1
execute unless score #temp Time matches -3..3 facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute unless score #temp Time matches -3..3 store result score #temp Time run data get entity @s Rotation[0]
execute unless score #temp Time matches -3..3 run teleport @s[tag=turn_left] ~ ~ ~ ~-5 ~
execute unless score #temp Time matches -3..3 run teleport @s[tag=!turn_left] ~ ~ ~ ~5 ~
execute unless score #temp Time matches -3..3 store result score #temp2 Time run data get entity @s Rotation[0]
execute unless score #temp Time matches -3..3 run scoreboard players operation #temp Time -= #temp2 Time
execute if score #temp Time matches ..-181 run scoreboard players add #temp Time 360
execute if score #temp Time matches 180.. run scoreboard players remove #temp Time 360
execute if score #temp Time matches -3..3 run tag @s remove turn_left
execute if score #temp Time matches -3..3 run tag @s remove turn_around
execute if score #temp Time matches -3..3 run data remove entity @s data.animation
execute if score #temp Time matches -3..3 run scoreboard players reset @s ActionTime
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time