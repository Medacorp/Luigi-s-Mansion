execute in minecraft:overworld run summon minecraft:marker 0.0 0.0 0.0 {Tags:["temp","remove_from_existence"]}
execute store result score #pitch Time run data get entity @s Pose.Head[0] 10
execute store result entity @e[tag=temp,limit=1] Rotation[0] float 0.1 run scoreboard players add #pitch Time 900
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result score #cosx Time run data get entity @e[tag=temp,limit=1] Pos[2] 10

data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @s Pose.Head[1]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result score #cosy Time run data get entity @e[tag=temp,limit=1] Pos[2] 10

data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @s Pose.Head[2]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result score #cosz Time run data get entity @e[tag=temp,limit=1] Pos[2] 10

execute store result entity @e[tag=temp,limit=1] Rotation[0] float 0.1 run scoreboard players get #pitch Time
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^-1
execute store result score #sinx Time run data get entity @e[tag=temp,limit=1] Pos[0] 10

data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @s Pose.Head[1]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^-1
execute store result score #siny Time run data get entity @e[tag=temp,limit=1] Pos[0] 10

data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @s Pose.Head[2]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^-1
execute store result score #sinz Time run data get entity @e[tag=temp,limit=1] Pos[0] 10

teleport @e[tag=temp,limit=1] ~ ~ ~ ~ ~

#-sin(jaw)cos(pitch)cos(roll)+cos(pitch)sin(roll)
scoreboard players operation #offsetx Time -= #siny Time
scoreboard players operation #offsetx Time *= #cosx Time
scoreboard players operation #offsetx Time /= #10 Constants
scoreboard players operation #offsetx Time *= #cosz Time
scoreboard players operation #offsetx Time /= #10 Constants
scoreboard players operation #offsetx2 Time = #cosx Time
scoreboard players operation #offsetx2 Time *= #sinz Time
scoreboard players operation #offsetx2 Time /= #10 Constants
scoreboard players operation #offsetx Time += #offsetx2 Time
#cos(pitch)sin(jaw)sin(roll)-sin(pitch)cos(roll)
scoreboard players operation #offsety Time = #cosx Time
scoreboard players operation #offsety Time *= #siny Time
scoreboard players operation #offsety Time /= #10 Constants
scoreboard players operation #offsety Time *= #sinz Time
scoreboard players operation #offsety Time /= #10 Constants
scoreboard players operation #offsety2 Time = #sinx Time
scoreboard players operation #offsety2 Time *= #cosz Time
scoreboard players operation #offsety2 Time /= #10 Constants
scoreboard players operation #offsety Time -= #offsety2 Time
scoreboard players reset #offsety2 Time
#cos(pitch)cos(jaw)
scoreboard players operation #offsetz Time = #cosx Time
scoreboard players operation #offsetz Time *= #cosy Time
scoreboard players operation #offsetz Time /= #10 Constants

tellraw @p[tag=tell_me] ["Vector: [",{"score":{"name":"#offsetx","objective":"Time"},"color":"gold"},", ",{"score":{"name":"#offsety","objective":"Time"},"color":"gold"},", ",{"score":{"name":"#offsetz","objective":"Time"},"color":"gold"},"]"]

execute store result score #x Time run data get entity @s Pos[0] 10
execute store result score #y Time run data get entity @s Pos[1] 10
scoreboard players add #y Time 14
execute store result score #z Time run data get entity @s Pos[2] 10

execute store result entity @e[tag=temp,limit=1] Pos[0] double 0.1 run scoreboard players operation #x Time += #offsetx Time
execute store result entity @e[tag=temp,limit=1] Pos[1] double 0.1 run scoreboard players operation #y Time += #offsety Time
execute store result entity @e[tag=temp,limit=1] Pos[2] double 0.1 run scoreboard players operation #z Time += #offsetz Time

tellraw @p[tag=tell_me] ["Pos: ",{"nbt":"Pos","entity":"@e[tag=temp,limit=1]"}]
tellraw @p[tag=tell_me] ["Stand Pos: ",{"nbt":"Pos","entity":"@s"}]

execute at @s positioned ~ ~1.4 ~ facing entity @e[tag=temp,limit=1] feet run teleport @e[tag=temp,limit=1] ~ ~ ~ ~ ~
execute store result score #rotation Time run data get entity @s Rotation[0] 10
execute store result score #rotation2 Time run data get entity @e[tag=temp,limit=1] Rotation[0] 10
execute store result entity @e[tag=temp,limit=1] Rotation[0] float 0.1 run scoreboard players operation #rotation Time += #rotation2 Time
tellraw @p[tag=tell_me] ["Rotation: ",{"nbt":"Rotation","entity":"@e[tag=temp,limit=1]"}]
execute store result score #roll Time run data get entity @s Pose.Head[2] 10
scoreboard players operation #roll2 Time = #roll Time
scoreboard players add #roll2 Time 1800
tellraw @p[tag=tell_me] ["Roll: ",{"score":{"name":"#roll","objective":"Time"},"color":"gold"}]
execute if score #roll Time matches -900..900 as @e[tag=temp,limit=1] at @s run teleport @s ^ ^0.5 ^0.5
execute if score #roll Time matches -900..900 store result entity @e[tag=temp,limit=1] Rotation[1] float 0.1 run scoreboard players get #roll Time
execute unless score #roll Time matches -900..900 as @e[tag=temp,limit=1] at @s rotated ~90 ~ run teleport @s ^ ^0.5 ^0.5 ~ ~
execute unless score #roll Time matches -900..900 store result entity @e[tag=temp,limit=1] Rotation[1] float 0.1 run scoreboard players get #roll2 Time
execute at @e[tag=temp,limit=1] run particle minecraft:flame ^0.16 ^ ^ 0 0 0 0 1 normal @a[tag=same_room]
execute at @e[tag=temp,limit=1] run particle minecraft:flame ^0.06 ^ ^ 0 0 0 0 1 normal @a[tag=same_room]
execute at @e[tag=temp,limit=1] run particle minecraft:flame ^-0.04 ^ ^ 0 0 0 0 1 normal @a[tag=same_room]
tellraw @p[tag=tell_me] ["Rotation post-roll: ",{"nbt":"Rotation","entity":"@e[tag=temp,limit=1]"}]

tag @p[tag=tell_me] remove tell_me
scoreboard players reset #cosx Time
scoreboard players reset #cosy Time
scoreboard players reset #cosz Time
scoreboard players reset #sinx Time
scoreboard players reset #siny Time
scoreboard players reset #sinz Time
scoreboard players reset #offsetx Time
scoreboard players reset #offsety Time
scoreboard players reset #offsetz Time
scoreboard players reset #x Time
scoreboard players reset #y Time
scoreboard players reset #z Time
scoreboard players reset #pitch Time
scoreboard players reset #rotation Time
scoreboard players reset #rotation2 Time
scoreboard players reset #roll Time
scoreboard players reset #roll2 Time
kill @e[tag=temp]