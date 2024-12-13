execute at @s[tag=!separated_camera,tag=!spectator] run function luigis_mansion:entities/player/camera/separate
attribute @s minecraft:gravity base set 0
# Set motion to 0
teleport @s 0 0 0 0 0
summon minecraft:marker ~ ~ ~ {Tags:["last_positon","remove_from_existence"]}
execute store result entity @e[tag=last_positon,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=last_positon,limit=1] Pos[1] double 0.01 run scoreboard players get @s PositionY
execute store result entity @e[tag=last_positon,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute store result entity @e[tag=last_positon,limit=1] Rotation[1] float 1 run scoreboard players get @s RotationX
execute store result entity @e[tag=last_positon,limit=1] Rotation[0] float 1 run scoreboard players get @s RotationY
# Return to position from last tick, so player movement between ticks is ignored
execute at @e[tag=last_positon,limit=1] run teleport @s ~ ~ ~ ~ ~
kill @e[tag=last_positon,limit=1]
# Actual movement
$execute $(execute) run teleport @s $(teleport)
execute at @s run function luigis_mansion:main/update_last_position
# Stop third person movement from triggering
scoreboard players operation @s OtherX = @s PositionX
scoreboard players operation @s OtherY = @s PositionY
scoreboard players operation @s OtherZ = @s PositionZ
scoreboard players operation @s OtherRotationY = @s RotationY
scoreboard players operation @s OtherRotationX = @s RotationX