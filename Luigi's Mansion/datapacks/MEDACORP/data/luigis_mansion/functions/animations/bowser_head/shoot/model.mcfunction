scoreboard players add @s AnimationProgress 1
data modify entity @s Pose.Head[0] set from entity @e[tag=this_entity,limit=1] data.rotation
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.default
execute if entity @s[scores={AnimationProgress=15}] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.open_mouth
execute if entity @s[scores={AnimationProgress=25}] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.default
execute if entity @s[scores={AnimationProgress=15}] run playsound luigis_mansion:entity.bowser.spit hostile @a[tag=same_room] ~ ~ ~ 3
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0