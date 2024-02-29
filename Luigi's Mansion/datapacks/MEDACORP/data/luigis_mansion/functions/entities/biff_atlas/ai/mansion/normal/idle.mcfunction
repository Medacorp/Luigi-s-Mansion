scoreboard players add @s Time 1
scoreboard players add @s AnimationProgress 1
execute as @s[tag=bigg_atlas_weights] unless entity @s[scores={HomeX=-2147483648..}] run function luigis_mansion:entities/biff_atlas/ai/mansion/normal/move_weights/set_home
execute if entity @s[tag=lift_fail] run function luigis_mansion:entities/biff_atlas/ai/mansion/normal/move_weights/fail
execute if entity @s[tag=lift_succeed] run function luigis_mansion:entities/biff_atlas/ai/mansion/normal/move_weights/succeed
scoreboard players set @s[scores={Time=1}] AnimationProgress 0
data modify entity @s[scores={Time=1}] data.animation set value {namespace:"luigis_mansion",id:"lift_fail"}
data modify entity @s[scores={Time=101}] data.animation set value {namespace:"luigis_mansion",id:"strech_neck"}
scoreboard players set @s[scores={Time=141}] AnimationProgress 0
data modify entity @s[scores={Time=141}] data.animation set value {namespace:"luigis_mansion",id:"lift_fail"}
data modify entity @s[scores={Time=241}] data.animation set value {namespace:"luigis_mansion",id:"strech_neck"}
scoreboard players set @s[scores={Time=281}] AnimationProgress 0
data modify entity @s[scores={Time=281}] data.animation set value {namespace:"luigis_mansion",id:"lift_fail"}
data modify entity @s[scores={Time=381}] data.animation set value {namespace:"luigis_mansion",id:"strech_neck"}
scoreboard players set @s[scores={Time=421}] AnimationProgress 0
data modify entity @s[scores={Time=421}] data.animation set value {namespace:"luigis_mansion",id:"lift_succeed"}
data modify entity @s[scores={Time=581}] data.animation set value {namespace:"luigis_mansion",id:"strech_neck"}
scoreboard players set @s[scores={Time=621}] AnimationProgress 0
data modify entity @s[scores={Time=621}] data.animation set value {namespace:"luigis_mansion",id:"lift_succeed"}
data modify entity @s[scores={Time=781}] data.animation set value {namespace:"luigis_mansion",id:"strech_neck"}
scoreboard players set @s[scores={Time=820}] Time 0