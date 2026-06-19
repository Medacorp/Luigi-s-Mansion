scoreboard players remove @s[scores={DeathTime=1..}] DeathTime 1
execute at @s[scores={DeathTime=11..50}] run teleport @s ^0.03125 ^-0.025 ^
data modify entity @s[scores={DeathTime=40}] item merge from entity @s item.components."minecraft:custom_data".model_data.default
scoreboard players remove @s[scores={DeathTime=1..15}] AnimationRotationY 40
scoreboard players add @s[scores={DeathTime=26..40}] AnimationRotationY 40
scoreboard players remove @s[scores={DeathTime=11..50}] AnimationRotationZ 27
scoreboard players set @s[scores={DeathTime=59}] AnimationRotationZ 1100
scoreboard players remove @s[scores={DeathTime=59}] AnimationRotationZ 1800