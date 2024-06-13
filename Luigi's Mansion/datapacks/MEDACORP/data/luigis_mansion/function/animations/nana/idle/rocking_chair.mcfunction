scoreboard players add @s AnimationProgress 1
teleport @s[scores={Dialog=1}] ^ ^ ^-0.01
teleport @s[scores={Dialog=2}] ^ ^ ^-0.02
teleport @s[scores={Dialog=3}] ^ ^ ^-0.03
teleport @s[scores={Dialog=4}] ^ ^ ^-0.04
teleport @s[scores={Dialog=5}] ^ ^ ^-0.05
teleport @s[scores={Dialog=6}] ^ ^ ^-0.06
teleport @s[scores={Dialog=7}] ^ ^ ^-0.07
teleport @s[scores={Dialog=8}] ^ ^ ^-0.08
teleport @s[scores={Dialog=9}] ^ ^ ^-0.09
teleport @s[scores={Dialog=10}] ^ ^ ^-0.1
teleport @s[scores={Dialog=11}] ^ ^ ^-0.11
teleport @s[scores={Dialog=12}] ^ ^ ^-0.12
teleport @s[scores={Dialog=13}] ^ ^ ^-0.13
teleport @s[scores={Dialog=14}] ^ ^ ^-0.14
teleport @s[scores={Dialog=15}] ^ ^ ^-0.15
teleport @s[scores={Dialog=16}] ^ ^ ^-0.16
teleport @s[scores={Dialog=17}] ^ ^ ^-0.17
teleport @s[scores={Dialog=18}] ^ ^ ^-0.18
teleport @s[scores={Dialog=19}] ^ ^ ^-0.19
teleport @s[scores={Dialog=20}] ^ ^ ^-0.2
teleport @s[scores={Dialog=21}] ^ ^ ^-0.19
teleport @s[scores={Dialog=22}] ^ ^ ^-0.18
teleport @s[scores={Dialog=23}] ^ ^ ^-0.17
teleport @s[scores={Dialog=24}] ^ ^ ^-0.16
teleport @s[scores={Dialog=25}] ^ ^ ^-0.15
teleport @s[scores={Dialog=26}] ^ ^ ^-0.14
teleport @s[scores={Dialog=27}] ^ ^ ^-0.13
teleport @s[scores={Dialog=28}] ^ ^ ^-0.12
teleport @s[scores={Dialog=29}] ^ ^ ^-0.11
teleport @s[scores={Dialog=30}] ^ ^ ^-0.1
teleport @s[scores={Dialog=31}] ^ ^ ^-0.09
teleport @s[scores={Dialog=32}] ^ ^ ^-0.08
teleport @s[scores={Dialog=33}] ^ ^ ^-0.07
teleport @s[scores={Dialog=34}] ^ ^ ^-0.06
teleport @s[scores={Dialog=35}] ^ ^ ^-0.05
teleport @s[scores={Dialog=36}] ^ ^ ^-0.04
teleport @s[scores={Dialog=37}] ^ ^ ^-0.03
teleport @s[scores={Dialog=38}] ^ ^ ^-0.02
teleport @s[scores={Dialog=39}] ^ ^ ^-0.01
teleport @s[scores={Dialog=41}] ^ ^ ^0.01
teleport @s[scores={Dialog=42}] ^ ^ ^0.02
teleport @s[scores={Dialog=43}] ^ ^ ^0.03
teleport @s[scores={Dialog=44}] ^ ^ ^0.04
teleport @s[scores={Dialog=45}] ^ ^ ^0.05
teleport @s[scores={Dialog=46}] ^ ^ ^0.06
teleport @s[scores={Dialog=47}] ^ ^ ^0.07
teleport @s[scores={Dialog=48}] ^ ^ ^0.08
teleport @s[scores={Dialog=49}] ^ ^ ^0.09
teleport @s[scores={Dialog=50}] ^ ^ ^0.1
teleport @s[scores={Dialog=51}] ^ ^ ^0.11
teleport @s[scores={Dialog=52}] ^ ^ ^0.12
teleport @s[scores={Dialog=53}] ^ ^ ^0.13
teleport @s[scores={Dialog=54}] ^ ^ ^0.14
teleport @s[scores={Dialog=55}] ^ ^ ^0.15
teleport @s[scores={Dialog=56}] ^ ^ ^0.16
teleport @s[scores={Dialog=57}] ^ ^ ^0.17
teleport @s[scores={Dialog=58}] ^ ^ ^0.18
teleport @s[scores={Dialog=59}] ^ ^ ^0.19
teleport @s[scores={Dialog=60}] ^ ^ ^0.2
teleport @s[scores={Dialog=61}] ^ ^ ^0.19
teleport @s[scores={Dialog=62}] ^ ^ ^0.18
teleport @s[scores={Dialog=63}] ^ ^ ^0.17
teleport @s[scores={Dialog=64}] ^ ^ ^0.16
teleport @s[scores={Dialog=65}] ^ ^ ^0.15
teleport @s[scores={Dialog=66}] ^ ^ ^0.14
teleport @s[scores={Dialog=67}] ^ ^ ^0.13
teleport @s[scores={Dialog=68}] ^ ^ ^0.12
teleport @s[scores={Dialog=69}] ^ ^ ^0.11
teleport @s[scores={Dialog=70}] ^ ^ ^0.1
teleport @s[scores={Dialog=71}] ^ ^ ^0.09
teleport @s[scores={Dialog=72}] ^ ^ ^0.08
teleport @s[scores={Dialog=73}] ^ ^ ^0.07
teleport @s[scores={Dialog=74}] ^ ^ ^0.06
teleport @s[scores={Dialog=75}] ^ ^ ^0.05
teleport @s[scores={Dialog=76}] ^ ^ ^0.04
teleport @s[scores={Dialog=77}] ^ ^ ^0.03
teleport @s[scores={Dialog=78}] ^ ^ ^0.02
teleport @s[scores={Dialog=79}] ^ ^ ^0.01
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-10.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=21..60}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=61..80}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProgress=30}] run playsound luigis_mansion:furniture.rocking_chair.move_backward hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=70}] run playsound luigis_mansion:furniture.rocking_chair.move_forward hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0