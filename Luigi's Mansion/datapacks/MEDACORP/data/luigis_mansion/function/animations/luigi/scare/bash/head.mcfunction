scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=21},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=22},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=23},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=24},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=25},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=26},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.36 ~ ~ ~
teleport @s[scores={AnimationProgress=27},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.42 ~ ~ ~
teleport @s[scores={AnimationProgress=28},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.48 ~ ~ ~
teleport @s[scores={AnimationProgress=29},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.54 ~ ~ ~
teleport @s[scores={AnimationProgress=30..},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.6 ~ ~ ~
teleport @s[scores={AnimationProgress=21},tag=flipped_gravity,tag=!shrunk] ~ ~0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=22},tag=flipped_gravity,tag=!shrunk] ~ ~0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=23},tag=flipped_gravity,tag=!shrunk] ~ ~0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=24},tag=flipped_gravity,tag=!shrunk] ~ ~0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=25},tag=flipped_gravity,tag=!shrunk] ~ ~0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=26},tag=flipped_gravity,tag=!shrunk] ~ ~0.36 ~ ~ ~
teleport @s[scores={AnimationProgress=27},tag=flipped_gravity,tag=!shrunk] ~ ~0.42 ~ ~ ~
teleport @s[scores={AnimationProgress=28},tag=flipped_gravity,tag=!shrunk] ~ ~0.48 ~ ~ ~
teleport @s[scores={AnimationProgress=29},tag=flipped_gravity,tag=!shrunk] ~ ~0.54 ~ ~ ~
teleport @s[scores={AnimationProgress=30..},tag=flipped_gravity,tag=!shrunk] ~ ~0.6 ~ ~ ~
teleport @s[scores={AnimationProgress=21},tag=!flipped_gravity,tag=shrunk] ~ ~-0.03 ~ ~ ~
teleport @s[scores={AnimationProgress=22},tag=!flipped_gravity,tag=shrunk] ~ ~-0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=23},tag=!flipped_gravity,tag=shrunk] ~ ~-0.09 ~ ~ ~
teleport @s[scores={AnimationProgress=24},tag=!flipped_gravity,tag=shrunk] ~ ~-0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=25},tag=!flipped_gravity,tag=shrunk] ~ ~-0.15 ~ ~ ~
teleport @s[scores={AnimationProgress=26},tag=!flipped_gravity,tag=shrunk] ~ ~-0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=27},tag=!flipped_gravity,tag=shrunk] ~ ~-0.21 ~ ~ ~
teleport @s[scores={AnimationProgress=28},tag=!flipped_gravity,tag=shrunk] ~ ~-0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=29},tag=!flipped_gravity,tag=shrunk] ~ ~-0.27 ~ ~ ~
teleport @s[scores={AnimationProgress=30..},tag=!flipped_gravity,tag=shrunk] ~ ~-0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=21},tag=flipped_gravity,tag=shrunk] ~ ~0.03 ~ ~ ~
teleport @s[scores={AnimationProgress=22},tag=flipped_gravity,tag=shrunk] ~ ~0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=23},tag=flipped_gravity,tag=shrunk] ~ ~0.09 ~ ~ ~
teleport @s[scores={AnimationProgress=24},tag=flipped_gravity,tag=shrunk] ~ ~0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=25},tag=flipped_gravity,tag=shrunk] ~ ~0.15 ~ ~ ~
teleport @s[scores={AnimationProgress=26},tag=flipped_gravity,tag=shrunk] ~ ~0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=27},tag=flipped_gravity,tag=shrunk] ~ ~0.21 ~ ~ ~
teleport @s[scores={AnimationProgress=28},tag=flipped_gravity,tag=shrunk] ~ ~0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=29},tag=flipped_gravity,tag=shrunk] ~ ~0.27 ~ ~ ~
teleport @s[scores={AnimationProgress=30..},tag=flipped_gravity,tag=shrunk] ~ ~0.3 ~ ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.bash
data modify entity @s[scores={AnimationProgress=20}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
data merge entity @s[scores={AnimationProgress=30..}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=30..},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=31..32}] unless data storage luigis_mansion:data luigi{tags:["moved"]} unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=33..36}] unless data storage luigis_mansion:data luigi{tags:["moved"]} unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=37..38}] unless data storage luigis_mansion:data luigi{tags:["moved"]} unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=31..32}] unless data storage luigis_mansion:data luigi{tags:["moved"]} if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=33..36}] unless data storage luigis_mansion:data luigi{tags:["moved"]} if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=37..38}] unless data storage luigis_mansion:data luigi{tags:["moved"]} if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=31..32}] if data storage luigis_mansion:data luigi{tags:["moved"]} unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=33..36}] if data storage luigis_mansion:data luigi{tags:["moved"]} unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=37..38}] if data storage luigis_mansion:data luigi{tags:["moved"]} unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=31..32}] if data storage luigis_mansion:data luigi{tags:["moved"]} if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=33..36}] if data storage luigis_mansion:data luigi{tags:["moved"]} if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=37..38}] if data storage luigis_mansion:data luigi{tags:["moved"]} if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 5
scoreboard players set @s[scores={AnimationProgress=38..}] AnimationProgress 30
scoreboard players reset #temp Time