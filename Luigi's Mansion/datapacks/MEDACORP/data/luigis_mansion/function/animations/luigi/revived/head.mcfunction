scoreboard players remove @s[scores={DeathTime=1..}] DeathTime 1
execute at @s[scores={DeathTime=11..50}] unless score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^-0.03125 ^0.025 ^
execute at @s[scores={DeathTime=11..50}] unless score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^0.03125 ^-0.025 ^
execute at @s[scores={DeathTime=11..50}] if score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^0.03125 ^0.025 ^
execute at @s[scores={DeathTime=11..50}] if score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^-0.03125 ^-0.025 ^
data modify entity @s[scores={DeathTime=40}] item merge from entity @s item.components."minecraft:custom_data".model_data.default
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={DeathTime=1..15}] AnimationRotationY 40
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={DeathTime=26..40}] AnimationRotationY 40
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={DeathTime=1..15}] AnimationRotationY 40
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={DeathTime=26..40}] AnimationRotationY 40
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={DeathTime=11..50}] AnimationRotationZ 27
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={DeathTime=11..50}] AnimationRotationZ 27
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={DeathTime=59}] AnimationRotationZ 1100
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={DeathTime=59},tag=flipped_gravity] AnimationRotationZ -700
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={DeathTime=59}] AnimationRotationZ -1100
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={DeathTime=59},tag=flipped_gravity] AnimationRotationZ 700