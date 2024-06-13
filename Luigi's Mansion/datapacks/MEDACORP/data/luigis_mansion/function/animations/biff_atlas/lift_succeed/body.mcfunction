scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^-0.03 ^0.02
teleport @s[scores={AnimationProgress=2}] ^ ^-0.06 ^0.04
teleport @s[scores={AnimationProgress=3}] ^ ^-0.09 ^0.06
teleport @s[scores={AnimationProgress=4}] ^ ^-0.12 ^0.08
teleport @s[scores={AnimationProgress=5}] ^ ^-0.15 ^0.1
teleport @s[scores={AnimationProgress=6}] ^ ^-0.18 ^0.12
teleport @s[scores={AnimationProgress=7}] ^ ^-0.21 ^0.14
teleport @s[scores={AnimationProgress=8}] ^ ^-0.24 ^0.16
teleport @s[scores={AnimationProgress=9}] ^ ^-0.27 ^0.18
teleport @s[scores={AnimationProgress=10}] ^ ^-0.3 ^0.2
teleport @s[scores={AnimationProgress=11}] ^ ^-0.33 ^0.22
teleport @s[scores={AnimationProgress=12}] ^ ^-0.36 ^0.24
teleport @s[scores={AnimationProgress=13}] ^ ^-0.39 ^0.26
teleport @s[scores={AnimationProgress=14}] ^ ^-0.42 ^0.28
teleport @s[scores={AnimationProgress=15}] ^ ^-0.45 ^0.3
teleport @s[scores={AnimationProgress=16}] ^ ^-0.48 ^0.32
teleport @s[scores={AnimationProgress=17}] ^ ^-0.51 ^0.34
teleport @s[scores={AnimationProgress=18}] ^ ^-0.54 ^0.36
teleport @s[scores={AnimationProgress=19}] ^ ^-0.57 ^0.38
teleport @s[scores={AnimationProgress=20..40}] ^ ^-0.6 ^0.4
teleport @s[scores={AnimationProgress=41}] ^ ^-0.54 ^0.4
teleport @s[scores={AnimationProgress=42}] ^ ^-0.48 ^0.4
teleport @s[scores={AnimationProgress=43}] ^ ^-0.42 ^0.4
teleport @s[scores={AnimationProgress=44}] ^ ^-0.36 ^0.4
teleport @s[scores={AnimationProgress=45}] ^ ^-0.3 ^0.4
teleport @s[scores={AnimationProgress=46}] ^ ^-0.24 ^0.4
teleport @s[scores={AnimationProgress=47}] ^ ^-0.18 ^0.4
teleport @s[scores={AnimationProgress=48}] ^ ^-0.12 ^0.4
teleport @s[scores={AnimationProgress=49}] ^ ^-0.6 ^0.4
teleport @s[scores={AnimationProgress=50..120}] ^ ^ ^0.4
teleport @s[scores={AnimationProgress=121}] ^ ^ ^0.38
teleport @s[scores={AnimationProgress=122}] ^ ^ ^0.36
teleport @s[scores={AnimationProgress=123}] ^ ^ ^0.34
teleport @s[scores={AnimationProgress=124}] ^ ^ ^0.32
teleport @s[scores={AnimationProgress=125}] ^ ^ ^0.3
teleport @s[scores={AnimationProgress=126}] ^ ^ ^0.28
teleport @s[scores={AnimationProgress=127}] ^ ^ ^0.26
teleport @s[scores={AnimationProgress=128}] ^ ^ ^0.24
teleport @s[scores={AnimationProgress=129}] ^ ^ ^0.22
teleport @s[scores={AnimationProgress=130}] ^ ^ ^0.2
teleport @s[scores={AnimationProgress=131}] ^ ^ ^0.18
teleport @s[scores={AnimationProgress=132}] ^ ^ ^0.16
teleport @s[scores={AnimationProgress=133}] ^ ^ ^0.14
teleport @s[scores={AnimationProgress=134}] ^ ^ ^0.12
teleport @s[scores={AnimationProgress=135}] ^ ^ ^0.1
teleport @s[scores={AnimationProgress=136}] ^ ^ ^0.08
teleport @s[scores={AnimationProgress=137}] ^ ^ ^0.06
teleport @s[scores={AnimationProgress=138}] ^ ^ ^0.04
teleport @s[scores={AnimationProgress=139}] ^ ^ ^0.02
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 16
execute if entity @s[scores={AnimationProgress=41..50}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 32
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=160..}] AnimationProgress 0
execute if entity @s[scores={AnimationProgress=21}] run playsound luigis_mansion:entity.biff_atlas.lift_1 hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=41}] run playsound luigis_mansion:entity.biff_atlas.lift_4 hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=75}] run playsound luigis_mansion:entity.biff_atlas.lift_succeed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=81}] run playsound luigis_mansion:entity.biff_atlas.lift_1 hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=95}] run playsound luigis_mansion:entity.biff_atlas.lift_succeed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=115}] run playsound luigis_mansion:entity.biff_atlas.lift_succeed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=135}] run playsound luigis_mansion:entity.biff_atlas.lift_6 hostile @a[tag=same_room] ~ ~ ~ 1