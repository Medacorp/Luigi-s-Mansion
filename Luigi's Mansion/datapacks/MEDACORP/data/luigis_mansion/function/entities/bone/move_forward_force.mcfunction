teleport @s ^ ^ ^0.01
execute if entity @s[scores={Sound=0}] run playsound luigis_mansion:entity.bone.fly hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 4
scoreboard players remove #temp Move 1
execute store result score #temp GhostNr run data get entity @s Pose.Head[0]
execute store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp GhostNr 5
$scoreboard players set @s[x=$(x),y=$(y),z=$(z),distance=..0.1] PathStep -1
$data merge entity @s[x=$(x),y=$(y),z=$(z),distance=..0.1] {Pose:{Head:[0.0f,0.0f,0.0f]}}
$execute if score #temp Move matches 1.. positioned as @s unless entity @s[x=$(x),y=$(y),z=$(z),distance=..0.1] run function luigis_mansion:entities/bone/move_forward_force {x:$(x)d,y:$(y)d,z:$(z)d}