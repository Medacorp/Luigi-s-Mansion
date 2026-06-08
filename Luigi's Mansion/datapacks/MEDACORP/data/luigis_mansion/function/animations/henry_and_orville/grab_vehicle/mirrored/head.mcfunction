scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^ ^ ~180 ~
teleport @s[scores={AnimationProgress=2}] ^ ^ ^ ~162 ~
teleport @s[scores={AnimationProgress=3}] ^ ^ ^ ~144 ~
teleport @s[scores={AnimationProgress=4}] ^ ^ ^ ~126 ~
teleport @s[scores={AnimationProgress=5}] ^ ^ ^ ~108 ~
teleport @s[scores={AnimationProgress=6}] ^ ^ ^ ~90 ~
teleport @s[scores={AnimationProgress=7}] ^ ^ ^ ~72 ~
teleport @s[scores={AnimationProgress=8}] ^ ^ ^ ~54 ~
teleport @s[scores={AnimationProgress=9}] ^ ^ ^ ~36 ~
teleport @s[scores={AnimationProgress=10}] ^ ^ ^ ~18 ~
teleport @s[scores={AnimationProgress=12}] ^ ^ ^ ~342 ~
teleport @s[scores={AnimationProgress=13}] ^ ^ ^ ~324 ~
teleport @s[scores={AnimationProgress=14}] ^ ^ ^ ~306 ~
teleport @s[scores={AnimationProgress=15}] ^ ^ ^ ~288 ~
teleport @s[scores={AnimationProgress=16}] ^ ^ ^ ~270 ~
teleport @s[scores={AnimationProgress=17}] ^ ^ ^ ~252 ~
teleport @s[scores={AnimationProgress=18}] ^ ^ ^ ~234 ~
teleport @s[scores={AnimationProgress=19}] ^ ^ ^ ~216 ~
teleport @s[scores={AnimationProgress=20}] ^ ^ ^ ~198 ~
teleport @s[scores={AnimationProgress=21}] ^ ^ ^ ~180 ~
teleport @s[scores={AnimationProgress=22}] ^ ^ ^ ~162 ~
teleport @s[scores={AnimationProgress=23}] ^ ^ ^ ~144 ~
teleport @s[scores={AnimationProgress=24}] ^ ^ ^ ~126 ~
teleport @s[scores={AnimationProgress=25}] ^ ^ ^ ~108 ~
teleport @s[scores={AnimationProgress=26}] ^ ^ ^ ~90 ~
teleport @s[scores={AnimationProgress=27}] ^ ^ ^ ~72 ~
teleport @s[scores={AnimationProgress=28}] ^ ^ ^ ~54 ~
teleport @s[scores={AnimationProgress=29}] ^ ^ ^ ~36 ~
teleport @s[scores={AnimationProgress=30}] ^ ^ ^ ~18 ~
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players add @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=6..15}] run scoreboard players remove @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=16..20}] run scoreboard players add @s AnimationRotationX 2
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0