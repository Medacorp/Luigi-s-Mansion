scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2] 10
execute if entity @s[scores={AnimationProg=1..2}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=3..6}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=7..10}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=11..14}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=15..18}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=19..22}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=23..26}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=27..30}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=31..34}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=35..38}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=39..42}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=43..46}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=47..50}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=51..54}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=55..58}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=59..62}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=63..66}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=67..70}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=71..74}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=75..78}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=79..80}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=1..2}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=3..6}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=7..10}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=11..14}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=15..18}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=19..22}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=23..26}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=27..30}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=31..34}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=35..38}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=39..42}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=43..46}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=47..50}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=51..54}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=55..58}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=59..62}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=63..66}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=67..70}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=71..74}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=75..78}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=79..80}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
scoreboard players reset #temp Time
data merge entity @s[scores={AnimationProg=80}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=80},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProg=80..}] AnimationProg 0