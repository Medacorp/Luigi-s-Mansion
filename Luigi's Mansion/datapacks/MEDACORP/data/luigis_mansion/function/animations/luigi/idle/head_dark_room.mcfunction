scoreboard players add @s[scores={Time=1}] AnimationRotationZ 2
scoreboard players remove @s[scores={Time=2..3}] AnimationRotationZ 2
scoreboard players add @s[scores={Time=4..5}] AnimationRotationZ 2
scoreboard players remove @s[scores={Time=6..7}] AnimationRotationZ 2
scoreboard players add @s[scores={Time=8..9}] AnimationRotationZ 2
scoreboard players remove @s[scores={Time=10..11}] AnimationRotationZ 2
scoreboard players add @s[scores={Time=12..13}] AnimationRotationZ 2
scoreboard players remove @s[scores={Time=14..15}] AnimationRotationZ 2
scoreboard players add @s[scores={Time=16..17}] AnimationRotationZ 2
scoreboard players remove @s[scores={Time=18..19}] AnimationRotationZ 2
scoreboard players add @s[scores={Time=20..21}] AnimationRotationZ 2
scoreboard players remove @s[scores={Time=22..23}] AnimationRotationZ 2
scoreboard players add @s[scores={Time=24..25}] AnimationRotationZ 2
scoreboard players remove @s[scores={Time=26..27}] AnimationRotationZ 2
scoreboard players add @s[scores={Time=28..29}] AnimationRotationZ 2
scoreboard players remove @s[scores={Time=30..31}] AnimationRotationZ 2
scoreboard players add @s[scores={Time=32..33}] AnimationRotationZ 2
scoreboard players remove @s[scores={Time=34..35}] AnimationRotationZ 2
scoreboard players add @s[scores={Time=36..37}] AnimationRotationZ 2
scoreboard players remove @s[scores={Time=38..39}] AnimationRotationZ 2
scoreboard players add @s[scores={Time=40}] AnimationRotationZ 2
execute if entity @s[tag=!flipped_gravity] store result entity @s Rotation[1] float 0.1 run scoreboard players get @s AnimationRotationX
execute if entity @s[tag=flipped_gravity] store result entity @s Rotation[1] float -0.1 run scoreboard players get @s AnimationRotationX
execute store result score #head Time run data get entity @s Rotation[0]
scoreboard players operation #head2 Time = @s AnimationRotationY
execute if entity @s[tag=flipped_gravity] run scoreboard players operation #head2 Time *= #-1 Constants
execute store result entity @s Rotation[0] float 1 run scoreboard players operation #head2 Time += #head Time
execute at @s[scores={Time=40},tag=!shrunk] positioned ~ ~1.45 ~ positioned ^ ^ ^0.3 run particle minecraft:dust{color:16777215,scale:0.75f} ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={Time=40},tag=shrunk] positioned ~ ~0.725 ~ positioned ^ ^ ^0.15 run particle minecraft:dust{color:16777215,scale:0.375f} ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
data modify entity @s Rotation[1] set value 0.0f
execute store result entity @s Rotation[0] float 1 run scoreboard players get #head Time
scoreboard players reset #head Time
scoreboard players reset #head2 Time
data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared