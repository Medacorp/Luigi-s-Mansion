execute at @s run teleport @s ~ ~1 ~
scoreboard players set #temp Move 8
scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=bowling_ghost] if score @s GhostNr = #temp GhostNr run tag @s add this_bowling_ghost
scoreboard players reset #temp GhostNr
execute store result score @s HomeRot run data get entity @s Pose.Head[0] 1
execute if entity @s[tag=!held] store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRot 10
execute at @s[tag=!held,tag=!rotated] rotated as @e[tag=this_bowling_ghost,limit=1] rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
tag @s[tag=!held] add rotated
execute at @s[tag=!held,tag=rotated] run function luigis_mansion:entities/bowling_ball/move_forward
execute at @s[tag=!held] if entity @a[distance=..0.7,gamemode=!spectator] run tag @s add hit
execute at @s[tag=!held,tag=hit] run tag @e[tag=this_bowling_ghost,limit=1] add laugh
execute at @s[tag=!held,tag=hit] run effect give @a[distance=..0.7,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute at @s[tag=!held,tag=hit] run scoreboard players set @a[distance=..0.7,gamemode=!spectator] ForcedDamage 4
execute at @s[tag=drop] run teleport @s ~ ~-0.2 ~
execute at @s[tag=drop] unless block ~ ~1 ~ #luigis_mansion:ghosts_ignore run tag @s add dead
tag @s[tag=!held,tag=hit] add dead
tag @e[tag=this_bowling_ghost] remove this_bowling_ghost
execute at @s run teleport @s ~ ~-1 ~