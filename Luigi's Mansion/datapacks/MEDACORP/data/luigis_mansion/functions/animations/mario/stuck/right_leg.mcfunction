scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..120}] rotated ~ 0 positioned ^ ^ ^-0.55 run teleport @s ~ ~-0.95 ~
execute if entity @s[scores={AnimationProgress=121}] rotated ~ 4.5 positioned ^ ^ ^-0.55 run teleport @s ~ ~-0.85 ~
execute if entity @s[scores={AnimationProgress=122}] rotated ~ 9 positioned ^ ^ ^-0.55 run teleport @s ~ ~-0.75 ~
execute if entity @s[scores={AnimationProgress=123}] rotated ~ 13.5 positioned ^ ^ ^-0.55 run teleport @s ~ ~-0.65 ~
execute if entity @s[scores={AnimationProgress=124}] rotated ~ 18 positioned ^ ^ ^-0.55 run teleport @s ~ ~-0.55 ~
execute if entity @s[scores={AnimationProgress=125}] rotated ~ 22.5 positioned ^ ^ ^-0.55 run teleport @s ~ ~-0.45 ~
execute if entity @s[scores={AnimationProgress=126}] rotated ~ 27 positioned ^ ^ ^-0.55 run teleport @s ~ ~-0.35 ~
execute if entity @s[scores={AnimationProgress=127}] rotated ~ 31.5 positioned ^ ^ ^-0.55 run teleport @s ~ ~-0.25 ~
execute if entity @s[scores={AnimationProgress=128}] rotated ~ 36 positioned ^ ^ ^-0.55 run teleport @s ~ ~-0.15 ~
execute if entity @s[scores={AnimationProgress=129}] rotated ~ 40.5 positioned ^ ^ ^-0.55 run teleport @s ~ ~-0.05 ~
execute if entity @s[scores={AnimationProgress=130}] rotated ~ 45 positioned ^ ^ ^-0.55 run teleport @s ~ ~0.05 ~
execute if entity @s[scores={AnimationProgress=132}] rotated ~ 49.5 positioned ^ ^ ^-0.55 run teleport @s ~ ~-0.05 ~
execute if entity @s[scores={AnimationProgress=133}] rotated ~ 54 positioned ^ ^ ^-0.55 run teleport @s ~ ~-0.1 ~
execute if entity @s[scores={AnimationProgress=134}] rotated ~ 58.5 positioned ^ ^ ^-0.55 run teleport @s ~ ~-0.15 ~
execute if entity @s[scores={AnimationProgress=135}] rotated ~ 63 positioned ^ ^ ^-0.55 run teleport @s ~ ~-0.2 ~
execute if entity @s[scores={AnimationProgress=136}] rotated ~ 67.5 positioned ^ ^ ^-0.55 run teleport @s ~ ~-0.25 ~
execute if entity @s[scores={AnimationProgress=137}] rotated ~ 72 positioned ^ ^ ^-0.55 run teleport @s ~ ~-0.3 ~
execute if entity @s[scores={AnimationProgress=138}] rotated ~ 76.5 positioned ^ ^ ^-0.55 run teleport @s ~ ~-0.35 ~
execute if entity @s[scores={AnimationProgress=139}] rotated ~ 90 positioned ^ ^ ^-0.55 run teleport @s ~ ~-0.4 ~
execute if entity @s[scores={AnimationProgress=140}] rotated ~ 90 positioned ^ ^ ^-0.55 run teleport @s ~ ~-0.45 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[70.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=21..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=31..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=61..70}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=71..80}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=101..110}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=111..120}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=121..140}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 8
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=140}] AnimationProgress 0