scoreboard players add @s AnimationProg 1
teleport @s[scores={AnimationProg=11}] ~ ~-0.05 ~ ~ ~
teleport @s[scores={AnimationProg=12}] ~ ~-0.1 ~ ~ ~
teleport @s[scores={AnimationProg=13}] ~ ~-0.15 ~ ~ ~
teleport @s[scores={AnimationProg=14}] ~ ~-0.2 ~ ~ ~
teleport @s[scores={AnimationProg=15}] ~ ~-0.25 ~ ~ ~
teleport @s[scores={AnimationProg=16}] ~ ~-0.3 ~ ~ ~
teleport @s[scores={AnimationProg=17}] ~ ~-0.35 ~ ~ ~
teleport @s[scores={AnimationProg=18}] ~ ~-0.4 ~ ~ ~
teleport @s[scores={AnimationProg=19}] ~ ~-0.45 ~ ~ ~
teleport @s[scores={AnimationProg=20..50}] ~ ~-0.5 ~ ~ ~
teleport @s[scores={AnimationProg=51}] ~ ~-0.45 ~ ~ ~
teleport @s[scores={AnimationProg=52}] ~ ~-0.4 ~ ~ ~
teleport @s[scores={AnimationProg=53}] ~ ~-0.35 ~ ~ ~
teleport @s[scores={AnimationProg=54}] ~ ~-0.3 ~ ~ ~
teleport @s[scores={AnimationProg=55}] ~ ~-0.25 ~ ~ ~
teleport @s[scores={AnimationProg=56}] ~ ~-0.2 ~ ~ ~
teleport @s[scores={AnimationProg=57}] ~ ~-0.15 ~ ~ ~
teleport @s[scores={AnimationProg=58}] ~ ~-0.1 ~ ~ ~
teleport @s[scores={AnimationProg=59}] ~ ~-0.05 ~ ~ ~
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProg=60..}] AnimationProg 0