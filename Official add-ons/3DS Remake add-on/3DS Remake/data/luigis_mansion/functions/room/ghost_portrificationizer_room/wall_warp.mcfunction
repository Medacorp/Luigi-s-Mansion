teleport @s[scores={PositionIntZ=6..21,PositionIntX=778}] ~2 ~ ~
teleport @s[scores={PositionIntZ=-14..5,PositionIntX=778}] ~-1 ~ ~
teleport @s[scores={PositionIntX=764}] ~1 ~ ~
teleport @s[scores={PositionIntZ=23}] ~ ~ ~-1
execute if score #global_3ds_remake_gallery Selected matches 0 run teleport @s[scores={PositionIntZ=-15}] ~ ~ ~-2
execute if score #global_3ds_remake_gallery Selected matches 1 run teleport @s[scores={PositionIntZ=-15}] ~ ~-75 ~-2

teleport @s[scores={PositionIntY=75}] ~ ~1 ~
teleport @s[scores={PositionIntY=82}] ~ ~-1 ~