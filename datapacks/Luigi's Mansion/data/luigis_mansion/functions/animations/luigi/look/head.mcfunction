scoreboard players operation @s AnimationProg = @a[tag=this_luigi,limit=1] IdleTime
scoreboard players add @s AnimationProg 41
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=1}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 2
execute if entity @s[scores={AnimationProg=2}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 4
execute if entity @s[scores={AnimationProg=3}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 6
execute if entity @s[scores={AnimationProg=4}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 8
execute if entity @s[scores={AnimationProg=5}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 10
execute if entity @s[scores={AnimationProg=6}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 12
execute if entity @s[scores={AnimationProg=7}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 14
execute if entity @s[scores={AnimationProg=8}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 16
execute if entity @s[scores={AnimationProg=9}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 18
execute if entity @s[scores={AnimationProg=10}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 20
execute if entity @s[scores={AnimationProg=11}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 21
execute if entity @s[scores={AnimationProg=12}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 22
execute if entity @s[scores={AnimationProg=13}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 23
execute if entity @s[scores={AnimationProg=14}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 24
execute if entity @s[scores={AnimationProg=15}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 25
execute if entity @s[scores={AnimationProg=16}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 24
execute if entity @s[scores={AnimationProg=17}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 23
execute if entity @s[scores={AnimationProg=18}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 22
execute if entity @s[scores={AnimationProg=19}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 21
execute if entity @s[scores={AnimationProg=20}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 20
execute if entity @s[scores={AnimationProg=21}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 21
execute if entity @s[scores={AnimationProg=22}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 22
execute if entity @s[scores={AnimationProg=23}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 23
execute if entity @s[scores={AnimationProg=24}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 24
execute if entity @s[scores={AnimationProg=25}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 25
execute if entity @s[scores={AnimationProg=26}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 24
execute if entity @s[scores={AnimationProg=27}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 23
execute if entity @s[scores={AnimationProg=28}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 22
execute if entity @s[scores={AnimationProg=29}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 21
execute if entity @s[scores={AnimationProg=30}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 20
execute if entity @s[scores={AnimationProg=31}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 21
execute if entity @s[scores={AnimationProg=32}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 22
execute if entity @s[scores={AnimationProg=33}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 23
execute if entity @s[scores={AnimationProg=34}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 24
execute if entity @s[scores={AnimationProg=35}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 25
execute if entity @s[scores={AnimationProg=36}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 24
execute if entity @s[scores={AnimationProg=37}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 23
execute if entity @s[scores={AnimationProg=38}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 22
execute if entity @s[scores={AnimationProg=39}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 21
execute if entity @s[scores={AnimationProg=40}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 20
scoreboard players reset #temp Time
data merge entity @s[scores={AnimationProg=21}] {Pose:{Head:[20.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=21},tag=flipped_gravity] {Pose:{Head:[20.0f,0.0f,-180.0f]}}