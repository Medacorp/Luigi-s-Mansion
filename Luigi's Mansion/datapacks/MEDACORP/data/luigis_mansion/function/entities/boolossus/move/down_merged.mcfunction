execute store result score @s JumpHeight run data get entity @s Pos[1] 100
scoreboard players add @s[scores={Health=1}] JumpHeight 18
scoreboard players remove @s[scores={Health=2}] JumpHeight 18
scoreboard players remove @s[scores={Health=3}] JumpHeight 29
scoreboard players remove @s[scores={Health=4}] JumpHeight 40
scoreboard players remove @s[scores={Health=5}] JumpHeight 51
scoreboard players remove @s[scores={Health=6}] JumpHeight 63
scoreboard players remove @s[scores={Health=7}] JumpHeight 74
scoreboard players remove @s[scores={Health=8}] JumpHeight 85
scoreboard players remove @s[scores={Health=9}] JumpHeight 96
scoreboard players remove @s[scores={Health=10}] JumpHeight 107
scoreboard players remove @s[scores={Health=11}] JumpHeight 118
scoreboard players remove @s[scores={Health=12}] JumpHeight 139
scoreboard players remove @s[scores={Health=13}] JumpHeight 141
scoreboard players remove @s[scores={Health=14}] JumpHeight 152
scoreboard players remove @s[scores={Health=15..}] JumpHeight 163
scoreboard players operation @s JumpHeight -= @s HomeY
teleport @s ~ ~-0.125 ~
tag @s[scores={JumpHeight=..-90}] add move_up
execute if entity @s[scores={JumpHeight=..-90}] run playsound luigis_mansion:entity.boolossus.bounce hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={JumpHeight=..-90}] run playsound luigis_mansion:entity.boolossus.shake_room hostile @a[tag=same_room] ~ ~ ~ 3
execute store result score @s[tag=move_up] HomeRotation run data get entity @s Rotation[0]
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRotation
execute if score #temp Move matches 1.. at @s[scores={HomeRotation=-2147483648..}] rotated ~ 0 run function luigis_mansion:entities/boo/move/forward
execute positioned as @s run teleport @s ~ ~ ~ ~ ~