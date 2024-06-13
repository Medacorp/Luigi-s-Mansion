data modify entity @s data.target_pos set value [0.0d,0.0d,0.0d]
execute store result entity @s data.target_pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s data.target_pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s data.target_pos[2] double 0.01 run scoreboard players get @s HomeZ
scoreboard players set @s TargetTask 3
tag @s add turn_back
tag @s remove reached_target