scoreboard players add @s AnimationProgress 1
teleport @s[scores={ActionTime=1}] ~ ~0.0025 ~
teleport @s[scores={ActionTime=2}] ~ ~0.005 ~
teleport @s[scores={ActionTime=3}] ~ ~0.0075 ~
teleport @s[scores={ActionTime=4}] ~ ~0.01 ~
teleport @s[scores={ActionTime=5}] ~ ~0.0125 ~
teleport @s[scores={ActionTime=6}] ~ ~0.015 ~
teleport @s[scores={ActionTime=7}] ~ ~0.0175 ~
teleport @s[scores={ActionTime=8}] ~ ~0.02 ~
teleport @s[scores={ActionTime=9}] ~ ~0.0225 ~
teleport @s[scores={ActionTime=10}] ~ ~0.025 ~
teleport @s[scores={ActionTime=11}] ~ ~0.0275 ~
teleport @s[scores={ActionTime=12}] ~ ~0.03 ~
teleport @s[scores={ActionTime=13}] ~ ~0.0325 ~
teleport @s[scores={ActionTime=14}] ~ ~0.035 ~
teleport @s[scores={ActionTime=15}] ~ ~0.0375 ~
teleport @s[scores={ActionTime=16}] ~ ~0.04 ~
teleport @s[scores={ActionTime=17}] ~ ~0.0425 ~
teleport @s[scores={ActionTime=18}] ~ ~0.045 ~
teleport @s[scores={ActionTime=19}] ~ ~0.0475 ~
teleport @s[scores={ActionTime=20}] ~ ~0.05 ~
teleport @s[scores={ActionTime=21}] ~ ~0.0525 ~
teleport @s[scores={ActionTime=22}] ~ ~0.055 ~
teleport @s[scores={ActionTime=23}] ~ ~0.0575 ~
teleport @s[scores={ActionTime=24}] ~ ~0.06 ~
teleport @s[scores={ActionTime=25}] ~ ~0.0625 ~
teleport @s[scores={ActionTime=26}] ~ ~0.065 ~
teleport @s[scores={ActionTime=27}] ~ ~0.0675 ~
teleport @s[scores={ActionTime=28}] ~ ~0.08 ~
teleport @s[scores={ActionTime=29}] ~ ~0.0825 ~
teleport @s[scores={ActionTime=30}] ~ ~0.085 ~
teleport @s[scores={ActionTime=31}] ~ ~0.0875 ~
teleport @s[scores={ActionTime=32}] ~ ~0.09 ~
teleport @s[scores={ActionTime=33}] ~ ~0.0925 ~
teleport @s[scores={ActionTime=34}] ~ ~0.095 ~
teleport @s[scores={ActionTime=35}] ~ ~0.0975 ~
teleport @s[scores={ActionTime=36}] ~ ~0.1 ~
teleport @s[scores={ActionTime=37}] ~ ~0.1025 ~
teleport @s[scores={ActionTime=38}] ~ ~0.105 ~
teleport @s[scores={ActionTime=39}] ~ ~-0.4425 ~
teleport @s[scores={ActionTime=40..}] ~ ~-0.99 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,0.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..38}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=40..41}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 87
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0