scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -1800
scoreboard players remove @s[scores={AnimationProgress=186..220}] AnimationRotationZ 180
data modify entity @s[scores={AnimationProgress=181..230}] Pos set from entity @s data.old_position.Pos
data modify entity @s[scores={AnimationProgress=181..230}] Rotation set from entity @s data.old_position.Rotation
execute at @s[scores={AnimationProgress=156}] run teleport @s ^ ^-0.1 ^-0.04
execute at @s[scores={AnimationProgress=157}] run teleport @s ^ ^-0.2 ^-0.08
execute at @s[scores={AnimationProgress=158}] run teleport @s ^ ^-0.3 ^-0.12
execute at @s[scores={AnimationProgress=159}] run teleport @s ^ ^-0.4 ^-0.16
execute at @s[scores={AnimationProgress=160..180}] run teleport @s ^ ^-0.5 ^-0.2
execute at @s[scores={AnimationProgress=181}] run teleport @s ^ ^ ^ ~18 ~
execute at @s[scores={AnimationProgress=181..205}] run teleport @s ^-0.025 ^-0.1 ^ ~ ~
execute at @s[scores={AnimationProgress=206..230}] run teleport @s ^-0.025 ^0.15 ^ ~ ~
data modify entity @s[scores={AnimationProgress=180..230}] data.old_position.Pos set from entity @s Pos
data modify entity @s[scores={AnimationProgress=180..230}] data.old_position.Rotation set from entity @s Rotation
data modify entity @s[scores={AnimationProgress=145}] item merge from entity @s item.components."minecraft:custom_data".model_data.visible
data modify entity @s[scores={AnimationProgress=225}] item merge from entity @s item.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=340..}] AnimationProgress 0