execute store result entity @s data.target_pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s data.target_pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s data.target_pos[2] double 0.01 run scoreboard players get @s HomeZ
data remove entity @s data.path