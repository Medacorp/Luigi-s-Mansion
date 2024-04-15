# Look left/right
execute as @e[tag=this_gooigi,tag=source,limit=1] if entity @s[scores={PlayerRotation=..2147483647}] store result score #temp PlayerRotation run data get entity @s Rotation[0] 1000
execute store result score @s HomeRotation run data get entity @a[tag=gooigi,limit=1] Rotation[0] 1000
scoreboard players add @s[scores={HomeRotation=..0}] HomeRotation 360000
scoreboard players operation @s RotationDifference = #temp PlayerRotation
execute if entity @s[scores={RotationDifference=..90000,HomeRotation=270000..}] run scoreboard players add @s RotationDifference 360000
execute if entity @s[scores={RotationDifference=270000..,HomeRotation=..90000}] run scoreboard players remove @s RotationDifference 360000
scoreboard players operation @s RotationDifference -= @s HomeRotation
execute unless entity @s[scores={RotationDifference=-180000..}] run scoreboard players add @s RotationDifference 360000
execute unless entity @s[scores={RotationDifference=..180000}] run scoreboard players remove @s RotationDifference 360000
execute if entity @s[scores={RotationDifference=..-60000}] run scoreboard players add #temp PlayerRotation 60000
execute if entity @s[scores={RotationDifference=60000..}] run scoreboard players remove #temp PlayerRotation 60000
execute if score #temp PlayerRotation matches 360000.. run scoreboard players remove #temp PlayerRotation 360000
execute if score #temp PlayerRotation matches ..0 run scoreboard players add #temp PlayerRotation 360000
execute if entity @s[scores={RotationDifference=-60000..60000}] if entity @s[tag=!stop_model] store result entity @s Rotation[0] float 0.001 run scoreboard players get @s HomeRotation
execute unless entity @s[scores={RotationDifference=-60000..60000}] if entity @s[tag=!stop_model] store result entity @s Rotation[0] float 0.001 run scoreboard players get #temp PlayerRotation
scoreboard players reset #temp PlayerRotation

# Look up/down
execute if entity @s[tag=!stop_model,tag=!flipped_gravity] store result score #temp Time run data get entity @a[tag=gooigi,limit=1] Rotation[1]
execute if entity @s[tag=!stop_model,tag=flipped_gravity] store result score #temp Time run data get entity @a[tag=gooigi,limit=1] Rotation[1] -1
execute if entity @s[tag=!stop_model,tag=low_health] run scoreboard players add #temp Time 20
execute if entity @s[tag=!stop_model] store result entity @s Pose.Head[0] float 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time