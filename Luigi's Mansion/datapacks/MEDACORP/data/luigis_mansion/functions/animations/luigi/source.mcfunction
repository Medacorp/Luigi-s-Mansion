# Rotate if moving
execute store result score @s PositionX run scoreboard players get @a[tag=this_luigi,limit=1] PositionX
execute store result score @s PositionZ run scoreboard players get @a[tag=this_luigi,limit=1] PositionZ
execute store result score @s HomeX run scoreboard players get @a[tag=this_luigi,limit=1] OtherX
execute store result score @s HomeZ run scoreboard players get @a[tag=this_luigi,limit=1] OtherZ
scoreboard players operation @s HomeX -= @s PositionX
scoreboard players operation @s HomeZ -= @s PositionZ
execute unless entity @s[scores={HomeX=0,HomeZ=0}] at @s[tag=!stop_model] positioned ^ ^-1.65 ^.25 rotated as @a[tag=this_luigi,limit=1] rotated ~ 0 positioned ^ ^ ^-0.5 if entity @a[tag=this_luigi,limit=1,distance=..0.49] run tag @s add moving_backwards
execute unless entity @s[scores={HomeX=0,HomeZ=0}] at @s[tag=!stop_model,tag=!moving_backwards] facing entity @a[tag=this_luigi,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!stop_model,tag=moving_backwards] rotated as @a[tag=this_luigi,limit=1] rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute unless entity @s[tag=!stop_model,scores={HomeX=0,HomeZ=0}] store result score @s PlayerRotation run data get entity @s Rotation[0] 1000
scoreboard players remove @s[scores={PlayerRotation=360000..}] PlayerRotation 360000
scoreboard players add @s[scores={PlayerRotation=..-1}] PlayerRotation 360000

# Get rotation
execute store result score @s HomeRotation run data get entity @a[tag=this_luigi,limit=1] Rotation[0] 1000
scoreboard players add @s[scores={HomeRotation=..0}] HomeRotation 360000
execute unless entity @s[scores={PlayerRotation=..2147483647}] run scoreboard players operation @s PlayerRotation = @s HomeRotation
execute if data storage luigis_mansion:data luigi{reset_rotation:1b} run scoreboard players operation @s PlayerRotation = @s HomeRotation
scoreboard players operation @s RotationDifference = @s PlayerRotation

# Rotated based on looking direction
execute if entity @s[scores={RotationDifference=..90000,HomeRotation=270000..}] run scoreboard players add @s RotationDifference 360000
execute if entity @s[scores={RotationDifference=270000..,HomeRotation=..90000}] run scoreboard players remove @s RotationDifference 360000
scoreboard players operation @s RotationDifference -= @s HomeRotation
execute unless entity @s[scores={RotationDifference=-50000..50000},tag=!stop_model] run function luigis_mansion:animations/luigi/rotate_body
scoreboard players remove @s[scores={PlayerRotation=360000..}] PlayerRotation 360000
scoreboard players add @s[scores={PlayerRotation=..0}] PlayerRotation 360000
execute store result entity @s[tag=!stop_model,tag=!moving_backwards] Rotation[0] float 0.001 run scoreboard players get @s PlayerRotation
tag @s remove moving_backwards

# Move with
execute rotated as @s run teleport @s[tag=!stop_model,tag=!flipped_gravity,tag=!sneak_pos,tag=!shrunk] ^ ^1.65 ^-0.25
execute rotated as @s run teleport @s[tag=!stop_model,tag=!flipped_gravity,tag=sneak_pos,tag=!shrunk] ^ ^1.4 ^-0.25
execute rotated as @s run teleport @s[tag=!stop_model,tag=!flipped_gravity,tag=!sneak_pos,tag=shrunk] ^ ^0.87 ^-0.125
execute rotated as @s run teleport @s[tag=!stop_model,tag=!flipped_gravity,tag=sneak_pos,tag=shrunk] ^ ^0.78 ^-0.125
execute rotated as @s run teleport @s[tag=!stop_model,tag=flipped_gravity,tag=!sneak_pos,tag=!shrunk] ^ ^-0.6 ^-0.25
execute rotated as @s run teleport @s[tag=!stop_model,tag=flipped_gravity,tag=sneak_pos,tag=!shrunk] ^ ^-0.65 ^-0.25
execute rotated as @s run teleport @s[tag=!stop_model,tag=flipped_gravity,tag=!sneak_pos,tag=shrunk] ^ ^-0.92 ^-0.125
execute rotated as @s run teleport @s[tag=!stop_model,tag=flipped_gravity,tag=sneak_pos,tag=shrunk] ^ ^-0.945 ^-0.125

execute unless data storage luigis_mansion:data luigi{swimming:0b,gliding:0b} run teleport @s ~ ~-1 ~
execute unless data storage luigis_mansion:data luigi{swimming:0b,gliding:0b} if entity @s[tag=!stop_model] run data modify entity @s Rotation[1] set from entity @a[tag=this_luigi,limit=1] Rotation[1]
execute unless data storage luigis_mansion:data luigi{swimming:0b,gliding:0b} if entity @s[tag=!stop_model] run data modify entity @s Rotation[0] set from entity @a[tag=this_luigi,limit=1] Rotation[0]
execute if data storage luigis_mansion:data luigi{swimming:0b,gliding:0b} if entity @s[tag=!stop_model] run data modify entity @s Rotation[1] set value 0.0f