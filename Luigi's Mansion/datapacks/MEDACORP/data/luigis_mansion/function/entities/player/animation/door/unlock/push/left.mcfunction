scoreboard players add @s AnimationProgress 1
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 1 run scoreboard players get @s HomeRotation
execute store result score #temp RotationY run data get entity @s Rotation[0]
execute store result score #temp RotationX run data get entity @s Rotation[1]
execute at @e[tag=home,limit=1] unless score #temp RotationY = @s HomeRotation run teleport @s[distance=..0.01] ~ ~ ~ ~ 40
execute at @e[tag=home,limit=1] unless score #temp RotationX matches 40 run teleport @s[distance=..0.01] ~ ~ ~ ~ 40
execute at @e[tag=home,limit=1] run teleport @s[distance=0.01..] 0 0 0
execute at @e[tag=home,limit=1] run teleport @s[distance=0.01..] ~ ~ ~ ~ 40
execute at @e[tag=home,limit=1] run teleport @s[scores={AnimationProgress=260}] ~ ~ ~ ~ 0
scoreboard players reset #temp RotationY
scoreboard players reset #temp RotationX
kill @e[tag=home,limit=1]
tag @s[scores={AnimationProgress=1}] add reset_rotation
tag @s[scores={AnimationProgress=1}] add door_animation
tag @s[tag=dark_room] add keep_poltergust_grabbed
execute if entity @s[scores={AnimationProgress=1}] run playsound luigis_mansion:item.key.grab block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=80}] run playsound luigis_mansion:item.key.use block @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s Sound 10
scoreboard players set @s Invulnerable 1
tag @s add pause_dialog
tag @s[scores={AnimationProgress=260}] remove reset_rotation
tag @s[scores={AnimationProgress=260}] remove door_animation
scoreboard players set @s[scores={AnimationProgress=260}] Invulnerable 0
execute unless entity @a[tag=!spectator,distance=0.1..,limit=1] run scoreboard players set #freeze_timer Selected 1
tag @s[scores={AnimationProgress=260}] add left_door
execute if entity @s[scores={AnimationProgress=260}] run function luigis_mansion:entities/player/animation/set/door/open/push