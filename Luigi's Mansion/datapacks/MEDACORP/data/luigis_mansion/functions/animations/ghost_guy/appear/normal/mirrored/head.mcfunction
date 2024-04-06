scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^3 ^ ~180 ~
teleport @s[scores={AnimationProgress=2}] ^ ^2.9 ^ ~162 ~
teleport @s[scores={AnimationProgress=3}] ^ ^2.8 ^ ~144 ~
teleport @s[scores={AnimationProgress=4}] ^ ^2.7 ^ ~126 ~
teleport @s[scores={AnimationProgress=5}] ^ ^2.6 ^ ~108 ~
teleport @s[scores={AnimationProgress=6}] ^ ^2.5 ^ ~90 ~
teleport @s[scores={AnimationProgress=7}] ^ ^2.4 ^ ~72 ~
teleport @s[scores={AnimationProgress=8}] ^ ^2.3 ^ ~54 ~
teleport @s[scores={AnimationProgress=9}] ^ ^2.2 ^ ~36 ~
teleport @s[scores={AnimationProgress=10}] ^ ^2.1 ^ ~18 ~
teleport @s[scores={AnimationProgress=11}] ^ ^2 ^ ~ ~
teleport @s[scores={AnimationProgress=12}] ^ ^1.9 ^ ~342 ~
teleport @s[scores={AnimationProgress=13}] ^ ^1.8 ^ ~324 ~
teleport @s[scores={AnimationProgress=14}] ^ ^1.7 ^ ~306 ~
teleport @s[scores={AnimationProgress=15}] ^ ^1.6 ^ ~288 ~
teleport @s[scores={AnimationProgress=16}] ^ ^1.5 ^ ~270 ~
teleport @s[scores={AnimationProgress=17}] ^ ^1.4 ^ ~252 ~
teleport @s[scores={AnimationProgress=18}] ^ ^1.3 ^ ~234 ~
teleport @s[scores={AnimationProgress=19}] ^ ^1.2 ^ ~216 ~
teleport @s[scores={AnimationProgress=20}] ^ ^1.1 ^ ~198 ~
teleport @s[scores={AnimationProgress=21}] ^ ^1 ^ ~180 ~
teleport @s[scores={AnimationProgress=22}] ^ ^0.9 ^ ~162 ~
teleport @s[scores={AnimationProgress=23}] ^ ^0.8 ^ ~144 ~
teleport @s[scores={AnimationProgress=24}] ^ ^0.7 ^ ~126 ~
teleport @s[scores={AnimationProgress=25}] ^ ^0.6 ^ ~108 ~
teleport @s[scores={AnimationProgress=26}] ^ ^0.5 ^ ~90 ~
teleport @s[scores={AnimationProgress=27}] ^ ^0.4 ^ ~72 ~
teleport @s[scores={AnimationProgress=28}] ^ ^0.3 ^ ~54 ~
teleport @s[scores={AnimationProgress=29}] ^ ^0.2 ^ ~36 ~
teleport @s[scores={AnimationProgress=30}] ^ ^0.1 ^ ~18 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute unless data storage luigis_mansion:data ghost{tags:["maskless"]} run data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.equipment
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0