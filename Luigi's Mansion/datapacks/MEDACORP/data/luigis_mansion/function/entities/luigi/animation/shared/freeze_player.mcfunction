execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PositionY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 1 run scoreboard players get @s RotationY
execute store result entity @e[tag=home,limit=1] Rotation[1] float 1 run scoreboard players get @s RotationX
execute store result score #temp RotationY run data get entity @s Rotation[0]
execute store result score #temp RotationX run data get entity @s Rotation[1]
execute store result score #temp2 RotationY run data get entity @e[tag=home,limit=1] Rotation[0]
execute store result score #temp2 RotationX run data get entity @e[tag=home,limit=1] Rotation[1]
execute unless score #temp RotationY = #temp2 RotationY run tag @s[tag=!animation_free_rotation,tag=!separated_camera] add teleport_now
execute unless score #temp RotationX = #temp2 RotationX run tag @s[tag=!animation_free_rotation,tag=!separated_camera] add teleport_now
execute if entity @e[tag=home,distance=0.01..,limit=1] run tag @s add teleport_now
scoreboard players reset #temp RotationY
scoreboard players reset #temp RotationX
scoreboard players reset #temp2 RotationY
scoreboard players reset #temp2 RotationX
execute if entity @s[tag=teleport_now,tag=!separated_camera,tag=!animation_free_rotation] run function luigis_mansion:entities/luigi/move/execute {execute:"at @e[tag=home,limit=1]",teleport:"0 0 0 0 0"}
execute if entity @s[tag=teleport_now,tag=!separated_camera,tag=animation_free_rotation] run function luigis_mansion:entities/luigi/move/execute {execute:"at @e[tag=home,limit=1]",teleport:"0 0 0"}
$execute if entity @s[tag=teleport_now,tag=!animation_free_rotation] run function luigis_mansion:entities/luigi/move/execute {execute:"at @e[tag=home,limit=1]",teleport:"~ ~ ~ $(rotated)"}
execute if entity @s[tag=teleport_now,tag=animation_free_rotation] run function luigis_mansion:entities/luigi/move/execute {execute:"at @e[tag=home,limit=1]",teleport:"~ ~ ~"}
tag @s remove teleport_now
tag @s add already_froze_player
kill @e[tag=home,limit=1]