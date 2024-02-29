scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=11}] ~ ~-0.11 ~
teleport @s[scores={AnimationProgress=12}] ~ ~-0.22 ~
teleport @s[scores={AnimationProgress=13}] ~ ~-0.33 ~
teleport @s[scores={AnimationProgress=14}] ~ ~-0.44 ~
teleport @s[scores={AnimationProgress=15}] ~ ~-0.55 ~
teleport @s[scores={AnimationProgress=16}] ~ ~-0.66 ~
teleport @s[scores={AnimationProgress=17}] ~ ~-0.77 ~
teleport @s[scores={AnimationProgress=18}] ~ ~-0.88 ~
teleport @s[scores={AnimationProgress=19}] ~ ~-0.99 ~
teleport @s[scores={AnimationProgress=20}] ~ ~-1.1 ~
teleport @s[scores={AnimationProgress=21}] ~ ~-1.05 ~
teleport @s[scores={AnimationProgress=22}] ~ ~-1 ~
teleport @s[scores={AnimationProgress=23}] ~ ~-0.95 ~
teleport @s[scores={AnimationProgress=24}] ~ ~-0.9 ~
teleport @s[scores={AnimationProgress=25}] ~ ~-0.85 ~
teleport @s[scores={AnimationProgress=26}] ~ ~-0.8 ~
teleport @s[scores={AnimationProgress=27}] ~ ~-0.75 ~
teleport @s[scores={AnimationProgress=28}] ~ ~-0.7 ~
teleport @s[scores={AnimationProgress=29}] ~ ~-0.65 ~
teleport @s[scores={AnimationProgress=30}] ~ ~-0.6 ~
teleport @s[scores={AnimationProgress=31}] ~ ~-0.65 ~
teleport @s[scores={AnimationProgress=32}] ~ ~-0.7 ~
teleport @s[scores={AnimationProgress=33}] ~ ~-0.75 ~
teleport @s[scores={AnimationProgress=34}] ~ ~-0.8 ~
teleport @s[scores={AnimationProgress=35}] ~ ~-0.85 ~
teleport @s[scores={AnimationProgress=36}] ~ ~-0.9 ~
teleport @s[scores={AnimationProgress=37}] ~ ~-0.95 ~
teleport @s[scores={AnimationProgress=38}] ~ ~-1 ~
teleport @s[scores={AnimationProgress=39}] ~ ~-1.05 ~
teleport @s[scores={AnimationProgress=40..120}] ~ ~-1.1 ~
teleport @s[scores={AnimationProgress=121}] ~ ~-0.99 ~
teleport @s[scores={AnimationProgress=122}] ~ ~-0.88 ~
teleport @s[scores={AnimationProgress=123}] ~ ~-0.77 ~
teleport @s[scores={AnimationProgress=134}] ~ ~-0.66 ~
teleport @s[scores={AnimationProgress=125}] ~ ~-0.55 ~
teleport @s[scores={AnimationProgress=126}] ~ ~-0.44 ~
teleport @s[scores={AnimationProgress=127}] ~ ~-0.33 ~
teleport @s[scores={AnimationProgress=128}] ~ ~-0.22 ~
teleport @s[scores={AnimationProgress=129}] ~ ~-0.11 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[10.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 31
execute if entity @s[scores={AnimationProgress=21..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=31..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=121..130}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=31..40}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProgress=121..130}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 9
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=130..}] AnimationProgress 0