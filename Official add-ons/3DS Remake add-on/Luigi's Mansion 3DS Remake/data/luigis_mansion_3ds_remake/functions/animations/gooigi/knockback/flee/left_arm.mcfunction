scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[-180.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=1},tag=flipped_gravity] {Pose:{Head:[-180.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=21..22}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=23..26}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProg=27..30}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=31..34}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProg=35..38}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=39..42}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProg=43..46}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=47..50}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProg=51..54}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=55..58}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProg=59..60}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=21..22}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProg=23..26}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=27..30}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProg=31..34}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=35..38}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProg=39..42}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=43..46}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProg=47..50}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=51..54}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProg=55..58}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=59..60}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
scoreboard players reset #temp Time
data merge entity @s[scores={AnimationProg=60}] {Pose:{Head:[-180.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=60},tag=flipped_gravity] {Pose:{Head:[-180.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProg=60..}] AnimationProg 0