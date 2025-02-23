scoreboard players add @s AnimationProgress 1
data modify entity @s[tag=held_item] ArmorItems[3].id set value "minecraft:diamond_pickaxe"
data modify entity @s[scores={AnimationProgress=1..119},tag=held_item] ArmorItems[3].components set from storage luigis_mansion:data luigi.animation.key_model
data modify entity @s[scores={AnimationProgress=120..},tag=held_item] ArmorItems[3].components."minecraft:item_model" set value "luigis_mansion:empty"
execute if entity @s[tag=held_item,scores={AnimationProgress=1}] rotated ~ ~-2 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=2}] rotated ~ ~-4 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=3}] rotated ~ ~-6 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=4}] rotated ~ ~-8 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=5}] rotated ~ ~-10 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=6}] rotated ~ ~-8 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=7}] rotated ~ ~-6 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=8}] rotated ~ ~-4 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=9}] rotated ~ ~-2 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=10..30}] rotated ~ ~ run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=31}] rotated ~ ~-5 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=32}] rotated ~ ~-10 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=33}] rotated ~ ~-15 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=34}] rotated ~ ~-20 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=35}] rotated ~ ~-25 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=36}] rotated ~ ~-30 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=37}] rotated ~ ~-35 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=38}] rotated ~ ~-40 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=39}] rotated ~ ~-45 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=40..45}] rotated ~ ~-50 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=46}] rotated ~ ~-51 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=47}] rotated ~ ~-52 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=48}] rotated ~ ~-53 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=49}] rotated ~ ~-54 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=50}] rotated ~ ~-55 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=51}] rotated ~ ~-56 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=52}] rotated ~ ~-57 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=53}] rotated ~ ~-58 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=54}] rotated ~ ~-59 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=55..95}] rotated ~ ~-60 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=96}] rotated ~ ~-59 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=97}] rotated ~ ~-58 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=98}] rotated ~ ~-57 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=99}] rotated ~ ~-56 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=100}] rotated ~ ~-55 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=101}] rotated ~ ~-54 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=102}] rotated ~ ~-53 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=103}] rotated ~ ~-52 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=104}] rotated ~ ~-51 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=105..110}] rotated ~ ~-50 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=111}] rotated ~ ~-45 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=112}] rotated ~ ~-40 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=113}] rotated ~ ~-35 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=114}] rotated ~ ~-30 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=115}] rotated ~ ~-25 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=116}] rotated ~ ~-20 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=117}] rotated ~ ~-15 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=118}] rotated ~ ~-10 run teleport @s ^ ^-0.74 ^
execute if entity @s[tag=held_item,scores={AnimationProgress=119}] rotated ~ ~-5 run teleport @s ^ ^-0.74 ^
execute at @s[tag=held_item] run teleport @s ~ ~-0.075 ~
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=6..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=31..40},tag=!held_item] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=46..55},tag=!held_item] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=96..105},tag=!held_item] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=111..120},tag=!held_item] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=131..140}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 7
execute if entity @s[scores={AnimationProgress=179..180}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.Head[1] 10
execute if entity @s[scores={AnimationProgress=80..84},tag=!held_item] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 24
execute if entity @s[scores={AnimationProgress=88..92},tag=!held_item] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 24
execute if entity @s[scores={AnimationProgress=141}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=142}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=143}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=144}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=145}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=146}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=147}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=148}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=149}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=150}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=151}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=152}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=153}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=154}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=155}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=156}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=157}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=158}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=159}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=160}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=161}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=162}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=163}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=164}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=165}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=166}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=167}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=168}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=169}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=170}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=171}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=172}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=173}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=174}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=175}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=176}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=177}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=178}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=179}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=180}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=201..220}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 6
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=80..84}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=88..92}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProgress=201..220}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
execute at @s run teleport @s[scores={AnimationProgress=240}] ^ ^ ^0.01
execute at @s run teleport @s[scores={AnimationProgress=241}] ^ ^ ^0.02
execute at @s run teleport @s[scores={AnimationProgress=242}] ^ ^ ^0.03
execute at @s run teleport @s[scores={AnimationProgress=243}] ^ ^ ^0.04
execute at @s run teleport @s[scores={AnimationProgress=244}] ^ ^ ^0.05
execute at @s run teleport @s[scores={AnimationProgress=245}] ^ ^ ^0.06
execute at @s run teleport @s[scores={AnimationProgress=246}] ^ ^ ^0.07
execute at @s run teleport @s[scores={AnimationProgress=247}] ^ ^ ^0.08
execute at @s run teleport @s[scores={AnimationProgress=248}] ^ ^ ^0.09
execute at @s run teleport @s[scores={AnimationProgress=249..260}] ^ ^ ^0.1
execute at @s run teleport @s ^0.05 ^ ^
scoreboard players set @s[scores={AnimationProgress=260..}] AnimationProgress 0