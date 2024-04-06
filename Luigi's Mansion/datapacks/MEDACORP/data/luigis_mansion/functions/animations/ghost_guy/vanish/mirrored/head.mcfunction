scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ~ ~0.4 ~
teleport @s[scores={AnimationProgress=2}] ~ ~0.8 ~
teleport @s[scores={AnimationProgress=3}] ~ ~-0.4 ~
teleport @s[scores={AnimationProgress=5}] ^ ^0.1 ^ ~8 ~
teleport @s[scores={AnimationProgress=6}] ^ ^0.2 ^ ~16 ~
teleport @s[scores={AnimationProgress=7}] ^ ^0.3 ^ ~24 ~
teleport @s[scores={AnimationProgress=8}] ^ ^0.4 ^ ~32 ~
teleport @s[scores={AnimationProgress=9}] ^ ^0.5 ^ ~40 ~
teleport @s[scores={AnimationProgress=10}] ^ ^0.6 ^ ~48 ~
teleport @s[scores={AnimationProgress=11}] ^ ^0.7 ^ ~56 ~
teleport @s[scores={AnimationProgress=12}] ^ ^0.8 ^ ~64 ~
teleport @s[scores={AnimationProgress=13}] ^ ^0.9 ^ ~72 ~
teleport @s[scores={AnimationProgress=14}] ^ ^1 ^ ~80 ~
teleport @s[scores={AnimationProgress=15}] ^ ^1.1 ^ ~88 ~
teleport @s[scores={AnimationProgress=16}] ^ ^1.2 ^ ~96 ~
teleport @s[scores={AnimationProgress=17}] ^ ^1.3 ^ ~104 ~
teleport @s[scores={AnimationProgress=18}] ^ ^1.4 ^ ~112 ~
teleport @s[scores={AnimationProgress=19}] ^ ^1.5 ^ ~120 ~
teleport @s[scores={AnimationProgress=20}] ^ ^1.6 ^ ~128 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.01f,0.0f]}}
execute unless data storage luigis_mansion:data ghost{tags:["maskless"]} run data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.equipment
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0