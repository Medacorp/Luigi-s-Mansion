scoreboard players set #temp Move 40
execute store result score @s HomeRotation run data get entity @s Pose.Head[0]
execute store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRotation 10
execute at @s[tag=!drop] run function luigis_mansion:entities/bowling_ball/move_forward
execute at @s if entity @e[distance=..1,tag=!spectator,tag=player,limit=1] run function luigis_mansion:entities/bowling_ball/hit
execute if entity @s[scores={Sound=0}] run playsound luigis_mansion:entity.bowling_ball.roll hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 20
execute at @s[tag=drop] run teleport @s ~ ~-0.2 ~
execute at @s[tag=drop] unless block ~ ~1 ~ #luigis_mansion:ghosts_ignore run tag @s add dead
execute at @s[tag=dead,scores={Owner=-2147483648..}] run function luigis_mansion:entities/bowling_ball/owner_response