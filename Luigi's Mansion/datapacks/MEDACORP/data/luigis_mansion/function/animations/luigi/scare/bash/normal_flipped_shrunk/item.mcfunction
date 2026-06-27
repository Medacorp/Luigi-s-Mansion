data modify entity @s item set value {id:"minecraft:leather_chestplate",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/luigi","minecraft:custom_model_data":{flags:[0b,0b],floats:[0f],strings:["hat"],colors:[37129]}}}
data modify entity @s item.components."minecraft:custom_model_data".colors[0] set from storage luigis_mansion:data luigi.animation.hat_model.color
execute if data storage luigis_mansion:data luigi.animation.hat_model{variant:1b} run data modify entity @s item.components."minecraft:custom_model_data".flags[1] set value 1b
data remove entity @s[scores={AnimationProgress=20..}] item
teleport @s[scores={AnimationProgress=1}] ~ ~-0.1 ~ ~ ~
teleport @s[scores={AnimationProgress=2}] ~ ~-0.2 ~ ~ ~
teleport @s[scores={AnimationProgress=3}] ~ ~-0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=4}] ~ ~-0.4 ~ ~ ~
teleport @s[scores={AnimationProgress=5..15}] ~ ~-0.5 ~ ~ ~
teleport @s[scores={AnimationProgress=16}] ~ ~-0.4 ~ ~ ~
teleport @s[scores={AnimationProgress=17}] ~ ~-0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=18}] ~ ~-0.2 ~ ~ ~
teleport @s[scores={AnimationProgress=19}] ~ ~-0.1 ~ ~ ~