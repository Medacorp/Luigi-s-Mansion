scoreboard players operation @s AnimationProgress = @a[tag=this_luigi,limit=1] IdleTime
scoreboard players add @s AnimationProgress 41
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProgress=1}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 2
execute if entity @s[scores={AnimationProgress=2}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 4
execute if entity @s[scores={AnimationProgress=3}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 6
execute if entity @s[scores={AnimationProgress=4}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 8
execute if entity @s[scores={AnimationProgress=5}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 10
execute if entity @s[scores={AnimationProgress=6}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 12
execute if entity @s[scores={AnimationProgress=7}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 14
execute if entity @s[scores={AnimationProgress=8}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 16
execute if entity @s[scores={AnimationProgress=9}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 18
execute if entity @s[scores={AnimationProgress=10}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 20
execute if entity @s[scores={AnimationProgress=11}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 21
execute if entity @s[scores={AnimationProgress=12}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 22
execute if entity @s[scores={AnimationProgress=13}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 23
execute if entity @s[scores={AnimationProgress=14}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 24
execute if entity @s[scores={AnimationProgress=15}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 25
execute if entity @s[scores={AnimationProgress=16}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 24
execute if entity @s[scores={AnimationProgress=17}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 23
execute if entity @s[scores={AnimationProgress=18}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 22
execute if entity @s[scores={AnimationProgress=19}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 21
execute if entity @s[scores={AnimationProgress=20}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 20
execute if entity @s[scores={AnimationProgress=21}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 21
execute if entity @s[scores={AnimationProgress=22}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 22
execute if entity @s[scores={AnimationProgress=23}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 23
execute if entity @s[scores={AnimationProgress=24}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 24
execute if entity @s[scores={AnimationProgress=25}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 25
execute if entity @s[scores={AnimationProgress=26}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 24
execute if entity @s[scores={AnimationProgress=27}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 23
execute if entity @s[scores={AnimationProgress=28}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 22
execute if entity @s[scores={AnimationProgress=29}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 21
execute if entity @s[scores={AnimationProgress=30}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 20
execute if entity @s[scores={AnimationProgress=31}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 21
execute if entity @s[scores={AnimationProgress=32}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 22
execute if entity @s[scores={AnimationProgress=33}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 23
execute if entity @s[scores={AnimationProgress=34}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 24
execute if entity @s[scores={AnimationProgress=35}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 25
execute if entity @s[scores={AnimationProgress=36}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 24
execute if entity @s[scores={AnimationProgress=37}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 23
execute if entity @s[scores={AnimationProgress=38}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 22
execute if entity @s[scores={AnimationProgress=39}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 21
execute if entity @s[scores={AnimationProgress=40}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 20
scoreboard players reset #temp Time
data merge entity @s[scores={AnimationProgress=21}] {Pose:{Head:[20.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=21},tag=flipped_gravity] {Pose:{Head:[20.0f,0.0f,-180.0f]}}