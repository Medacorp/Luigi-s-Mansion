execute unless entity @s[scores={ActionTime=1}] run scoreboard players set @s AnimationProg 0
execute unless entity @s[scores={ActionTime=1}] facing entity @p[tag=same_room,gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute unless entity @s[scores={ActionTime=1}] store result score #temp Time run data get entity @s Rotation[0]
execute unless entity @s[scores={ActionTime=1}] run teleport @s ~ ~ ~ ~ ~
execute unless entity @s[scores={ActionTime=1}] store result score #temp2 Time run data get entity @s Rotation[0]
execute unless entity @s[scores={ActionTime=1}] run scoreboard players operation #temp Time -= #temp2 Time
execute unless entity @s[scores={ActionTime=1}] if score #temp Time matches ..-181 run scoreboard players add #temp Time 360
execute unless entity @s[scores={ActionTime=1}] if score #temp Time matches 180.. run scoreboard players remove #temp Time 360
execute unless entity @s[scores={ActionTime=1}] if score #temp Time matches ..-1 run tag @s add turn_left
scoreboard players set @s ActionTime 1
function luigis_mansion:animations/bowser/walk
execute facing entity @p[tag=same_room,gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute store result score #temp Time run data get entity @s Rotation[0]
teleport @s[tag=turn_left] ~ ~ ~ ~-5 ~
teleport @s[tag=!turn_left] ~ ~ ~ ~5 ~
execute store result score #temp2 Time run data get entity @s Rotation[0]
scoreboard players operation #temp Time -= #temp2 Time
execute if score #temp Time matches ..-181 run scoreboard players add #temp Time 360
execute if score #temp Time matches 180.. run scoreboard players remove #temp Time 360
execute if score #temp Time matches -3..3 run tag @s remove turn_left
execute if score #temp Time matches -3..3 run tag @s remove turn_around
execute if score #temp Time matches -3..3 run scoreboard players set @s AnimationProg 0
execute if score #temp Time matches -3..3 run scoreboard players reset @s ActionTime
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time