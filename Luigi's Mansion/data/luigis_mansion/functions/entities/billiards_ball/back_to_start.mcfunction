execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
data modify entity @s Pose.Head[0] set value 0.0f
tag @s remove disappear
tag @s remove can_spit_2
tag @s remove can_spit
tag @s remove spit
tag @s remove in_vacuum
tag @s remove collision
tag @s remove vacuumable
execute at @s run teleport @s ~ ~1.19 ~
scoreboard players set @s Dialog 0
scoreboard players set @s SpawnTime 0