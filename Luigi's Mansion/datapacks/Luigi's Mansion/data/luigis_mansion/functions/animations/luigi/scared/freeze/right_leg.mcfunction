scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2] 10
execute if entity @s[scores={AnimationProg=1..2}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=3..6}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=7..10}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=11..14}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=15..18}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=19..22}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=23..26}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=27..30}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=31..34}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=35..38}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=39..42}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=43..46}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=47..50}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=51..54}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=55..58}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=59..62}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=63..66}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=67..70}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=71..74}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=75..78}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=79..82}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=83..86}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=87..90}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=91..94}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=95..98}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=99..100}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
scoreboard players reset #temp Time
data merge entity @s[scores={AnimationProg=100}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=100},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProg=100..}] AnimationProg 0