scoreboard players add @s AnimationProgress 1
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=1}] ~ ~-0.025 ~
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=2}] ~ ~-0.05 ~
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=3}] ~ ~-0.075 ~
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=4}] ~ ~-0.1 ~
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=5}] ~ ~-0.125 ~
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=6}] ~ ~-0.15 ~
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=7}] ~ ~-0.175 ~
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=8}] ~ ~-0.2 ~
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=9}] ~ ~-0.225 ~
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=10}] ~ ~-0.25 ~
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=11}] ~ ~-0.225 ~
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=12}] ~ ~-0.2 ~
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=13}] ~ ~-0.175 ~
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=14}] ~ ~-0.15 ~
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=15}] ~ ~-0.125 ~
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=16}] ~ ~-0.1 ~
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=17}] ~ ~-0.075 ~
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=18}] ~ ~-0.05 ~
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=19}] ~ ~-0.025 ~
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=1}] ~ ~-0.05 ~
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=2}] ~ ~-0.1 ~
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=3}] ~ ~-0.15 ~
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=4}] ~ ~-0.2 ~
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=5}] ~ ~-0.25 ~
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=6}] ~ ~-0.3 ~
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=7}] ~ ~-0.35 ~
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=8}] ~ ~-0.4 ~
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=9}] ~ ~-0.45 ~
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=10}] ~ ~-0.5 ~
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=11}] ~ ~-0.45 ~
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=12}] ~ ~-0.4 ~
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=13}] ~ ~-0.35 ~
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=14}] ~ ~-0.3 ~
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=15}] ~ ~-0.25 ~
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=16}] ~ ~-0.2 ~
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=17}] ~ ~-0.15 ~
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=18}] ~ ~-0.1 ~
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[scores={AnimationProgress=19}] ~ ~-0.05 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,-90.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=11..20}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0