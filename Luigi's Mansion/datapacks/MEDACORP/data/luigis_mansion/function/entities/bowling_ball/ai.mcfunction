scoreboard players set #temp Move 40
execute store result score @s HomeRotation run data get entity @s Pose.Head[0]
execute store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRotation 10
execute at @s[tag=!drop] run function luigis_mansion:entities/bowling_ball/move_forward
execute at @s if entity @e[distance=..1,tag=luigi,limit=1] run function luigis_mansion:entities/bowling_ball/hit
execute if entity @s[scores={Sound=0}] run playsound luigis_mansion:entity.bowling_ball.roll hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 20
execute at @s[tag=drop] run teleport @s ~ ~-0.2 ~
execute at @s[tag=drop] unless block ~ ~1 ~ #luigis_mansion:ghosts_ignore run tag @s add dead
execute if data entity @s[tag=dead,tag=hit] data.owner run function luigis_mansion:entities/ghost/owner_laugh with entity @s data
execute if data entity @s[tag=dead,tag=!hit] data.owner run function luigis_mansion:entities/ghost/owner_complain with entity @s data