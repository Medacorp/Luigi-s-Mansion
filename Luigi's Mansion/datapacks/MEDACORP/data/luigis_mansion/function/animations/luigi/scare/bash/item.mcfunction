data modify entity @s equipment.head set value {id:"minecraft:leather_chestplate",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/luigi","minecraft:custom_model_data":{flags:[0b,0b],floats:[0f],strings:["hat"],colors:[37129]}}}
data modify entity @s equipment.head.components."minecraft:custom_model_data".colors[0] set from storage luigis_mansion:data luigi.animation.hat_model.color
execute if data storage luigis_mansion:data luigi.animation.hat_model{variant:1b} run data modify entity @s equipment.head.components."minecraft:custom_model_data".flags[1] set value 1b
data remove entity @s[scores={AnimationProgress=20..}] equipment.head
teleport @s[scores={AnimationProgress=1},tag=!flipped_gravity,tag=!shrunk] ~ ~0.2 ~ ~ ~
teleport @s[scores={AnimationProgress=2},tag=!flipped_gravity,tag=!shrunk] ~ ~0.4 ~ ~ ~
teleport @s[scores={AnimationProgress=3},tag=!flipped_gravity,tag=!shrunk] ~ ~0.6 ~ ~ ~
teleport @s[scores={AnimationProgress=4},tag=!flipped_gravity,tag=!shrunk] ~ ~0.8 ~ ~ ~
teleport @s[scores={AnimationProgress=5..15},tag=!flipped_gravity,tag=!shrunk] ~ ~1 ~ ~ ~
teleport @s[scores={AnimationProgress=16},tag=!flipped_gravity,tag=!shrunk] ~ ~0.8 ~ ~ ~
teleport @s[scores={AnimationProgress=17},tag=!flipped_gravity,tag=!shrunk] ~ ~0.6 ~ ~ ~
teleport @s[scores={AnimationProgress=18},tag=!flipped_gravity,tag=!shrunk] ~ ~0.4 ~ ~ ~
teleport @s[scores={AnimationProgress=19},tag=!flipped_gravity,tag=!shrunk] ~ ~0.2 ~ ~ ~
teleport @s[scores={AnimationProgress=1},tag=flipped_gravity,tag=!shrunk] ~ ~-0.2 ~ ~ ~
teleport @s[scores={AnimationProgress=2},tag=flipped_gravity,tag=!shrunk] ~ ~-0.4 ~ ~ ~
teleport @s[scores={AnimationProgress=3},tag=flipped_gravity,tag=!shrunk] ~ ~-0.6 ~ ~ ~
teleport @s[scores={AnimationProgress=4},tag=flipped_gravity,tag=!shrunk] ~ ~-0.8 ~ ~ ~
teleport @s[scores={AnimationProgress=5..15},tag=flipped_gravity,tag=!shrunk] ~ ~-1 ~ ~ ~
teleport @s[scores={AnimationProgress=16},tag=flipped_gravity,tag=!shrunk] ~ ~-0.8 ~ ~ ~
teleport @s[scores={AnimationProgress=17},tag=flipped_gravity,tag=!shrunk] ~ ~-0.6 ~ ~ ~
teleport @s[scores={AnimationProgress=18},tag=flipped_gravity,tag=!shrunk] ~ ~-0.4 ~ ~ ~
teleport @s[scores={AnimationProgress=19},tag=flipped_gravity,tag=!shrunk] ~ ~-0.2 ~ ~ ~
teleport @s[scores={AnimationProgress=1},tag=!flipped_gravity,tag=shrunk] ~ ~0.1 ~ ~ ~
teleport @s[scores={AnimationProgress=2},tag=!flipped_gravity,tag=shrunk] ~ ~0.2 ~ ~ ~
teleport @s[scores={AnimationProgress=3},tag=!flipped_gravity,tag=shrunk] ~ ~0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=4},tag=!flipped_gravity,tag=shrunk] ~ ~0.4 ~ ~ ~
teleport @s[scores={AnimationProgress=5..15},tag=!flipped_gravity,tag=shrunk] ~ ~0.5 ~ ~ ~
teleport @s[scores={AnimationProgress=16},tag=!flipped_gravity,tag=shrunk] ~ ~0.4 ~ ~ ~
teleport @s[scores={AnimationProgress=17},tag=!flipped_gravity,tag=shrunk] ~ ~0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=18},tag=!flipped_gravity,tag=shrunk] ~ ~0.2 ~ ~ ~
teleport @s[scores={AnimationProgress=19},tag=!flipped_gravity,tag=shrunk] ~ ~0.1 ~ ~ ~
teleport @s[scores={AnimationProgress=1},tag=flipped_gravity,tag=shrunk] ~ ~-0.1 ~ ~ ~
teleport @s[scores={AnimationProgress=2},tag=flipped_gravity,tag=shrunk] ~ ~-0.2 ~ ~ ~
teleport @s[scores={AnimationProgress=3},tag=flipped_gravity,tag=shrunk] ~ ~-0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=4},tag=flipped_gravity,tag=shrunk] ~ ~-0.4 ~ ~ ~
teleport @s[scores={AnimationProgress=5..15},tag=flipped_gravity,tag=shrunk] ~ ~-0.5 ~ ~ ~
teleport @s[scores={AnimationProgress=16},tag=flipped_gravity,tag=shrunk] ~ ~-0.4 ~ ~ ~
teleport @s[scores={AnimationProgress=17},tag=flipped_gravity,tag=shrunk] ~ ~-0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=18},tag=flipped_gravity,tag=shrunk] ~ ~-0.2 ~ ~ ~
teleport @s[scores={AnimationProgress=19},tag=flipped_gravity,tag=shrunk] ~ ~-0.1 ~ ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}