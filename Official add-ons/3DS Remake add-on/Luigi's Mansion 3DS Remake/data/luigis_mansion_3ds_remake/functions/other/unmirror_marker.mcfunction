data modify entity @s Pos[0] set from entity @a[tag=me,limit=1] Pos[0]
data modify entity @s Pos[1] set from entity @a[tag=me,limit=1] Pos[1]
scoreboard players operation #temp HomeZ *= #-1 Constants
execute store result entity @s Pos[2] double 0.01 run scoreboard players add #temp HomeZ 1500
scoreboard players operation #temp HomeRot *= #-1 Constants
execute store result entity @s Rotation[0] float 1 run scoreboard players add #temp HomeRot 180
data modify entity @s Rotation[1] set from entity @a[tag=me,limit=1] Rotation[1]
execute at @s in luigis_mansion:normal run teleport @a[tag=me,limit=1] ~ ~ ~ ~ ~
kill @s