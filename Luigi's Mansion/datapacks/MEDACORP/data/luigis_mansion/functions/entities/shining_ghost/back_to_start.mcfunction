execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute store result entity @s Rotation[0] float 1 run random value -180..179
tag @s remove disappear
tag @s remove can_spit_2
tag @s remove can_spit
tag @s remove spit
tag @s remove in_vacuum
tag @s remove collision
tag @s remove played_sound
tag @s remove played_spit_sound
scoreboard players reset @s Dialog
scoreboard players reset @s KillerID