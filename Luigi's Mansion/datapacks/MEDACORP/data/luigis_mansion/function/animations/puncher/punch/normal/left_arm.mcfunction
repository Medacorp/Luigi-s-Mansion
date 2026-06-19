scoreboard players add @s AnimationProgress 1
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=1}] positioned ^-0.3 ^ ^ rotated ~-36 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=2}] positioned ^-0.3 ^ ^ rotated ~-72 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=3}] positioned ^-0.3 ^ ^ rotated ~-108 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=4}] positioned ^-0.3 ^ ^ rotated ~-144 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=5}] positioned ^-0.3 ^ ^ rotated ~-180 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=6}] positioned ^-0.3 ^ ^ rotated ~-216 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=7}] positioned ^-0.3 ^ ^ rotated ~-252 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=8}] positioned ^-0.3 ^ ^ rotated ~-288 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=9}] positioned ^-0.3 ^ ^ rotated ~-324 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=11}] positioned ^-0.3 ^ ^ rotated ~-36 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=12}] positioned ^-0.3 ^ ^ rotated ~-72 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=13}] positioned ^-0.3 ^ ^ rotated ~-108 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=14}] positioned ^-0.3 ^ ^ rotated ~-144 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=15}] positioned ^-0.3 ^ ^ rotated ~-180 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=16}] positioned ^-0.3 ^ ^ rotated ~-216 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=17}] positioned ^-0.3 ^ ^ rotated ~-252 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=18}] positioned ^-0.3 ^ ^ rotated ~-288 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=19}] positioned ^-0.3 ^ ^ rotated ~-324 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=1}] positioned ^0.3 ^ ^ rotated ~-36 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=2}] positioned ^0.3 ^ ^ rotated ~-72 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=3}] positioned ^0.3 ^ ^ rotated ~-108 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=4}] positioned ^0.3 ^ ^ rotated ~-144 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=5}] positioned ^0.3 ^ ^ rotated ~-180 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=6}] positioned ^0.3 ^ ^ rotated ~-216 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=7}] positioned ^0.3 ^ ^ rotated ~-252 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=8}] positioned ^0.3 ^ ^ rotated ~-288 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=9}] positioned ^0.3 ^ ^ rotated ~-324 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=11}] positioned ^0.3 ^ ^ rotated ~-36 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=12}] positioned ^0.3 ^ ^ rotated ~-72 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=13}] positioned ^0.3 ^ ^ rotated ~-108 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=14}] positioned ^0.3 ^ ^ rotated ~-144 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=15}] positioned ^0.3 ^ ^ rotated ~-180 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=16}] positioned ^0.3 ^ ^ rotated ~-216 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=17}] positioned ^0.3 ^ ^ rotated ~-252 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=18}] positioned ^0.3 ^ ^ rotated ~-288 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=19}] positioned ^0.3 ^ ^ rotated ~-324 ~ run teleport @s ^-0.3 ^ ^ ~ ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 200
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationX 80
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0