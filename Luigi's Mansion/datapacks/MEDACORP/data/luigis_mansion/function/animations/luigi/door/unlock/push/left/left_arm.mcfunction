scoreboard players add @s AnimationProgress 1
data modify entity @s[tag=held_item] equipment.head.id set value "minecraft:diamond_pickaxe"
data modify entity @s[scores={AnimationProgress=1..119},tag=held_item] equipment.head.components set from storage luigis_mansion:data luigi.animation.key_model
data remove entity @s[scores={AnimationProgress=120..},tag=held_item] equipment.head
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
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=6..10}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=31..40},tag=!held_item] run scoreboard players remove @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=46..55},tag=!held_item] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=96..105},tag=!held_item] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=111..120},tag=!held_item] run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=131..140}] run scoreboard players remove @s AnimationRotationX 70
execute if entity @s[scores={AnimationProgress=179..180}] run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=80..84},tag=!held_item] run scoreboard players add @s AnimationRotationY 24
execute if entity @s[scores={AnimationProgress=88..92},tag=!held_item] run scoreboard players remove @s AnimationRotationY 24
execute if entity @s[scores={AnimationProgress=141}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=142}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=143}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=144}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=145}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=146}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=147}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=148}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=149}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=150}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=151}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=152}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=153}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=154}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=155}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=156}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=157}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=158}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=159}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=160}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=161}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=162}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=163}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=164}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=165}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=166}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=167}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=168}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=169}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=170}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=171}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=172}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=173}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=174}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=175}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=176}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=177}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=178}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=179}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=180}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=201..220}] run scoreboard players add @s AnimationRotationY 6
execute if entity @s[scores={AnimationProgress=80..84}] run scoreboard players remove @s AnimationRotationZ 40
execute if entity @s[scores={AnimationProgress=88..92}] run scoreboard players add @s AnimationRotationZ 40
execute if entity @s[scores={AnimationProgress=201..220}] run scoreboard players remove @s AnimationRotationZ 10
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