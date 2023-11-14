execute store result entity @s Pos[0] double 0.01 run scoreboard players get @a[tag=me,limit=1] HomeX
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @a[tag=me,limit=1] HomeY
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @a[tag=me,limit=1] HomeZ
execute store result entity @s Rotation[0] float 1 run scoreboard players get @a[tag=me,limit=1] HomeRotationX
execute store result entity @s Rotation[1] float 1 run scoreboard players get @a[tag=me,limit=1] HomeRotationY
execute at @s run teleport @a[tag=me,limit=1] ~ ~ ~ ~ ~
execute as @a[tag=me,limit=1] run function luigis_mansion:main/update_last_position
kill @s