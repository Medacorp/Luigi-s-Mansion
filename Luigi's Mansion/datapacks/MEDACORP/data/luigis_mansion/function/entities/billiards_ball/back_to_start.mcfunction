execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
data modify entity @s transformation.left_rotation set value [0.0f,0.0f,0.0f,1.0f]
tag @s remove can_spit_2
tag @s remove can_spit
tag @s remove spit
tag @s remove collision
tag @s remove vacuumable
scoreboard players set @s Dialog 0
scoreboard players set @s SpawnTime 0