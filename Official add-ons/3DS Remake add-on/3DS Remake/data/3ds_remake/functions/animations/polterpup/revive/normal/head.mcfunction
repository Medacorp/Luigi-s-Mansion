scoreboard players add @s AnimationProgress 1
execute at @s[scores={AnimationProgress=21}] run teleport @s ^ ^0.05 ^-0.02
execute at @s[scores={AnimationProgress=22}] run teleport @s ^ ^0.1 ^-0.04
execute at @s[scores={AnimationProgress=23}] run teleport @s ^ ^0.15 ^-0.06
execute at @s[scores={AnimationProgress=24}] run teleport @s ^ ^0.2 ^-0.08
execute at @s[scores={AnimationProgress=25}] run teleport @s ^ ^0.25 ^-0.1
execute at @s[scores={AnimationProgress=26}] run teleport @s ^ ^0.3 ^-0.12
execute at @s[scores={AnimationProgress=27}] run teleport @s ^ ^0.35 ^-0.14
execute at @s[scores={AnimationProgress=28}] run teleport @s ^ ^0.4 ^-0.16
execute at @s[scores={AnimationProgress=29}] run teleport @s ^ ^0.45 ^-0.18
execute at @s[scores={AnimationProgress=30..70}] run teleport @s ^ ^0.5 ^-0.2
execute at @s[scores={AnimationProgress=71}] run teleport @s ^ ^0.45 ^-0.18
execute at @s[scores={AnimationProgress=72}] run teleport @s ^ ^0.4 ^-0.16
execute at @s[scores={AnimationProgress=73}] run teleport @s ^ ^0.35 ^-0.14
execute at @s[scores={AnimationProgress=74}] run teleport @s ^ ^0.3 ^-0.12
execute at @s[scores={AnimationProgress=75}] run teleport @s ^ ^0.25 ^-0.1
execute at @s[scores={AnimationProgress=76}] run teleport @s ^ ^0.2 ^-0.08
execute at @s[scores={AnimationProgress=77}] run teleport @s ^ ^0.15 ^-0.06
execute at @s[scores={AnimationProgress=78}] run teleport @s ^ ^0.1 ^-0.04
execute at @s[scores={AnimationProgress=79}] run teleport @s ^ ^0.05 ^-0.02
execute at @s[scores={AnimationProgress=156}] run teleport @s ^ ^0.1 ^-0.04
execute at @s[scores={AnimationProgress=157}] run teleport @s ^ ^0.2 ^-0.08
execute at @s[scores={AnimationProgress=158}] run teleport @s ^ ^0.3 ^-0.12
execute at @s[scores={AnimationProgress=159}] run teleport @s ^ ^0.4 ^-0.16
execute at @s[scores={AnimationProgress=160..180}] run teleport @s ^ ^0.5 ^-0.2
execute at @s[scores={AnimationProgress=181}] run teleport @s ^ ^0.4 ^-0.16
execute at @s[scores={AnimationProgress=182}] run teleport @s ^ ^0.3 ^-0.12
execute at @s[scores={AnimationProgress=183}] run teleport @s ^ ^0.2 ^-0.08
execute at @s[scores={AnimationProgress=184}] run teleport @s ^ ^0.1 ^-0.04
execute at @s[scores={AnimationProgress=196}] run teleport @s ^ ^0.15 ^-0.13
execute at @s[scores={AnimationProgress=197}] run teleport @s ^ ^0.3 ^-0.26
execute at @s[scores={AnimationProgress=198}] run teleport @s ^ ^0.45 ^-0.39
execute at @s[scores={AnimationProgress=199}] run teleport @s ^ ^0.5 ^-0.52
execute at @s[scores={AnimationProgress=200..250}] run teleport @s ^ ^0.65 ^-0.65
execute at @s[scores={AnimationProgress=251}] run teleport @s ^ ^0.5 ^-0.52
execute at @s[scores={AnimationProgress=252}] run teleport @s ^ ^0.35 ^-0.39
execute at @s[scores={AnimationProgress=253}] run teleport @s ^ ^0.3 ^-0.26
execute at @s[scores={AnimationProgress=254}] run teleport @s ^ ^0.15 ^-0.13
execute at @s[scores={AnimationProgress=256}] run teleport @s ^ ^0.05 ^
execute at @s[scores={AnimationProgress=257}] run teleport @s ^ ^0.1 ^
execute at @s[scores={AnimationProgress=258}] run teleport @s ^ ^0.15 ^
execute at @s[scores={AnimationProgress=259}] run teleport @s ^ ^0.2 ^
execute at @s[scores={AnimationProgress=260}] run teleport @s ^ ^0.25 ^
execute at @s[scores={AnimationProgress=261}] run teleport @s ^ ^0.3 ^
execute at @s[scores={AnimationProgress=262}] run teleport @s ^ ^0.35 ^
execute at @s[scores={AnimationProgress=263}] run teleport @s ^ ^0.4 ^
execute at @s[scores={AnimationProgress=264}] run teleport @s ^ ^0.45 ^
execute at @s[scores={AnimationProgress=265..299}] run teleport @s ^ ^0.5 ^
execute at @s[scores={AnimationProgress=300}] run teleport @s ^ ^0.45 ^
execute at @s[scores={AnimationProgress=301}] run teleport @s ^ ^0.4 ^
execute at @s[scores={AnimationProgress=302}] run teleport @s ^ ^0.35 ^
execute at @s[scores={AnimationProgress=303}] run teleport @s ^ ^0.3 ^
execute at @s[scores={AnimationProgress=304}] run teleport @s ^ ^0.25 ^
execute at @s[scores={AnimationProgress=305}] run teleport @s ^ ^0.2 ^
execute at @s[scores={AnimationProgress=306}] run teleport @s ^ ^0.15 ^
execute at @s[scores={AnimationProgress=307}] run teleport @s ^ ^0.1 ^
execute at @s[scores={AnimationProgress=308}] run teleport @s ^ ^0.05 ^
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProgress=38..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=41..43}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=55..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=71..80}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=150..160}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=176..180}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 8
execute if entity @s[scores={AnimationProgress=181..185}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 8
execute if entity @s[scores={AnimationProgress=196..200}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 12
execute if entity @s[scores={AnimationProgress=221..225}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 12
execute if entity @s[scores={AnimationProgress=240..245}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=246..249}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=261..270}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=281..285}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=286..290}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=291..295}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=296..300}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=297..299}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=300..302}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=305..307}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=308..310}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=317..319}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=320..322}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=325..327}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=329..330}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=331..340}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
data modify entity @s[scores={AnimationProgress=38}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.bark
data modify entity @s[scores={AnimationProgress=42}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
data modify entity @s[scores={AnimationProgress=145}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.bark
data modify entity @s[scores={AnimationProgress=185}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
data modify entity @s[scores={AnimationProgress=200}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.bark
data modify entity @s[scores={AnimationProgress=220}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
data modify entity @s[scores={AnimationProgress=240}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.tongue_out_side
data modify entity @s[scores={AnimationProgress=250}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
data modify entity @s[scores={AnimationProgress=278}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.tongue_out
data modify entity @s[scores={AnimationProgress=297}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.bark
data modify entity @s[scores={AnimationProgress=302}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
data modify entity @s[scores={AnimationProgress=305}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.bark
data modify entity @s[scores={AnimationProgress=310}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
data modify entity @s[scores={AnimationProgress=317}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.bark
data modify entity @s[scores={AnimationProgress=322}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
data modify entity @s[scores={AnimationProgress=325}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.bark
data modify entity @s[scores={AnimationProgress=330}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=340..}] AnimationProgress 0