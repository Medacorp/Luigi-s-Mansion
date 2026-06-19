scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^ ^-0.01
teleport @s[scores={AnimationProgress=2}] ^ ^ ^-0.02
teleport @s[scores={AnimationProgress=3}] ^ ^ ^-0.03
teleport @s[scores={AnimationProgress=4}] ^ ^ ^-0.04
teleport @s[scores={AnimationProgress=5}] ^ ^ ^-0.05
teleport @s[scores={AnimationProgress=6}] ^ ^ ^-0.06
teleport @s[scores={AnimationProgress=7}] ^ ^ ^-0.07
teleport @s[scores={AnimationProgress=8}] ^ ^ ^-0.08
teleport @s[scores={AnimationProgress=9}] ^ ^ ^-0.09
teleport @s[scores={AnimationProgress=10}] ^ ^ ^-0.1
teleport @s[scores={AnimationProgress=11}] ^ ^ ^-0.11
teleport @s[scores={AnimationProgress=12}] ^ ^ ^-0.12
teleport @s[scores={AnimationProgress=13}] ^ ^ ^-0.13
teleport @s[scores={AnimationProgress=14}] ^ ^ ^-0.14
teleport @s[scores={AnimationProgress=15}] ^ ^ ^-0.15
teleport @s[scores={AnimationProgress=16}] ^ ^ ^-0.16
teleport @s[scores={AnimationProgress=17}] ^ ^ ^-0.17
teleport @s[scores={AnimationProgress=18}] ^ ^ ^-0.18
teleport @s[scores={AnimationProgress=19}] ^ ^ ^-0.19
teleport @s[scores={AnimationProgress=20}] ^ ^ ^-0.2
teleport @s[scores={AnimationProgress=21}] ^ ^ ^-0.19
teleport @s[scores={AnimationProgress=22}] ^ ^ ^-0.18
teleport @s[scores={AnimationProgress=23}] ^ ^ ^-0.17
teleport @s[scores={AnimationProgress=24}] ^ ^ ^-0.16
teleport @s[scores={AnimationProgress=25}] ^ ^ ^-0.15
teleport @s[scores={AnimationProgress=26}] ^ ^ ^-0.14
teleport @s[scores={AnimationProgress=27}] ^ ^ ^-0.13
teleport @s[scores={AnimationProgress=28}] ^ ^ ^-0.12
teleport @s[scores={AnimationProgress=29}] ^ ^ ^-0.11
teleport @s[scores={AnimationProgress=30}] ^ ^ ^-0.1
teleport @s[scores={AnimationProgress=31}] ^ ^ ^-0.09
teleport @s[scores={AnimationProgress=32}] ^ ^ ^-0.08
teleport @s[scores={AnimationProgress=33}] ^ ^ ^-0.07
teleport @s[scores={AnimationProgress=34}] ^ ^ ^-0.06
teleport @s[scores={AnimationProgress=35}] ^ ^ ^-0.05
teleport @s[scores={AnimationProgress=36}] ^ ^ ^-0.04
teleport @s[scores={AnimationProgress=37}] ^ ^ ^-0.03
teleport @s[scores={AnimationProgress=38}] ^ ^ ^-0.02
teleport @s[scores={AnimationProgress=39}] ^ ^ ^-0.01
teleport @s[scores={AnimationProgress=41}] ^ ^ ^0.01
teleport @s[scores={AnimationProgress=42}] ^ ^ ^0.02
teleport @s[scores={AnimationProgress=43}] ^ ^ ^0.03
teleport @s[scores={AnimationProgress=44}] ^ ^ ^0.04
teleport @s[scores={AnimationProgress=45}] ^ ^ ^0.05
teleport @s[scores={AnimationProgress=46}] ^ ^ ^0.06
teleport @s[scores={AnimationProgress=47}] ^ ^ ^0.07
teleport @s[scores={AnimationProgress=48}] ^ ^ ^0.08
teleport @s[scores={AnimationProgress=49}] ^ ^ ^0.09
teleport @s[scores={AnimationProgress=50}] ^ ^ ^0.1
teleport @s[scores={AnimationProgress=51}] ^ ^ ^0.11
teleport @s[scores={AnimationProgress=52}] ^ ^ ^0.12
teleport @s[scores={AnimationProgress=53}] ^ ^ ^0.13
teleport @s[scores={AnimationProgress=54}] ^ ^ ^0.14
teleport @s[scores={AnimationProgress=55}] ^ ^ ^0.15
teleport @s[scores={AnimationProgress=56}] ^ ^ ^0.16
teleport @s[scores={AnimationProgress=57}] ^ ^ ^0.17
teleport @s[scores={AnimationProgress=58}] ^ ^ ^0.18
teleport @s[scores={AnimationProgress=59}] ^ ^ ^0.19
teleport @s[scores={AnimationProgress=60}] ^ ^ ^0.2
teleport @s[scores={AnimationProgress=61}] ^ ^ ^0.19
teleport @s[scores={AnimationProgress=62}] ^ ^ ^0.18
teleport @s[scores={AnimationProgress=63}] ^ ^ ^0.17
teleport @s[scores={AnimationProgress=64}] ^ ^ ^0.16
teleport @s[scores={AnimationProgress=65}] ^ ^ ^0.15
teleport @s[scores={AnimationProgress=66}] ^ ^ ^0.14
teleport @s[scores={AnimationProgress=67}] ^ ^ ^0.13
teleport @s[scores={AnimationProgress=68}] ^ ^ ^0.12
teleport @s[scores={AnimationProgress=69}] ^ ^ ^0.11
teleport @s[scores={AnimationProgress=70}] ^ ^ ^0.1
teleport @s[scores={AnimationProgress=71}] ^ ^ ^0.09
teleport @s[scores={AnimationProgress=72}] ^ ^ ^0.08
teleport @s[scores={AnimationProgress=73}] ^ ^ ^0.07
teleport @s[scores={AnimationProgress=74}] ^ ^ ^0.06
teleport @s[scores={AnimationProgress=75}] ^ ^ ^0.05
teleport @s[scores={AnimationProgress=76}] ^ ^ ^0.04
teleport @s[scores={AnimationProgress=77}] ^ ^ ^0.03
teleport @s[scores={AnimationProgress=78}] ^ ^ ^0.02
teleport @s[scores={AnimationProgress=79}] ^ ^ ^0.01
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -100
scoreboard players add @s[scores={AnimationProgress=1..20}] AnimationRotationX 5
scoreboard players remove @s[scores={AnimationProgress=21..60}] AnimationRotationX 5
scoreboard players add @s[scores={AnimationProgress=61..80}] AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=30}] run playsound luigis_mansion:furniture.rocking_chair.move_backward hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=70}] run playsound luigis_mansion:furniture.rocking_chair.move_forward hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0