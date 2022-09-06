execute store result score @s JumpHeight run data get entity @s Pos[1] 100
scoreboard players remove @s JumpHeight 200
scoreboard players operation @s JumpHeight -= @s HomeY
teleport @s ~ ~-0.125 ~
tag @s[scores={JumpHeight=..-90}] add move_up
execute if entity @s[scores={JumpHeight=..-90}] run playsound luigis_mansion:entity.boolossus.bounce hostile @a[tag=same_room] ~ ~ ~ 3
execute store result score @s[tag=move_up] HomeRot run data get entity @s Rotation[0]
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRot
execute if score #temp Move matches 1.. at @s rotated ~ 0 run function luigis_mansion:entities/boo/move_forward
execute positioned as @s run teleport @s ~ ~ ~ ~ ~