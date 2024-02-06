scoreboard players add @s TargetTask 0
scoreboard players add @s SpawnTime 0
scoreboard players add @s ActionTime 1
$execute if entity @s[scores={ActionTime=1}] run playsound $(namespace):entity.$(id).ambient hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"wait"}
execute at @s facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ 0
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0
execute if score #mirrored Selected matches 0 run function luigis_mansion:entities/bowling_ghost/ball_position/haunt/normal
execute if score #mirrored Selected matches 1 run function luigis_mansion:entities/bowling_ghost/ball_position/haunt/mirrored