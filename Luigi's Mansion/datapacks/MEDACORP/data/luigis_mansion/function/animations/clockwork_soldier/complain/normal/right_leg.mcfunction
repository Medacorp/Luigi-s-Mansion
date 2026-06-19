scoreboard players add @s AnimationProgress 1
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=1}] positioned ^0.23 ^ ^ rotated ~18 ~ run teleport @s ^-0.23 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=2}] positioned ^0.23 ^ ^ rotated ~36 ~ run teleport @s ^-0.23 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=3}] positioned ^0.23 ^ ^ rotated ~54 ~ run teleport @s ^-0.23 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=4}] positioned ^0.23 ^ ^ rotated ~72 ~ run teleport @s ^-0.23 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=5}] positioned ^0.23 ^ ^ rotated ~90 ~ run teleport @s ^-0.23 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=6}] positioned ^0.23 ^ ^ rotated ~108 ~ run teleport @s ^-0.23 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=7}] positioned ^0.23 ^ ^ rotated ~126 ~ run teleport @s ^-0.23 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=8}] positioned ^0.23 ^ ^ rotated ~144 ~ run teleport @s ^-0.23 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=9}] positioned ^0.23 ^ ^ rotated ~162 ~ run teleport @s ^-0.23 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=10}] positioned ^0.23 ^ ^ rotated ~180 ~ run teleport @s ^-0.23 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=11}] positioned ^0.23 ^ ^ rotated ~198 ~ run teleport @s ^-0.23 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=12}] positioned ^0.23 ^ ^ rotated ~216 ~ run teleport @s ^-0.23 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=13}] positioned ^0.23 ^ ^ rotated ~234 ~ run teleport @s ^-0.23 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=14}] positioned ^0.23 ^ ^ rotated ~252 ~ run teleport @s ^-0.23 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=15}] positioned ^0.23 ^ ^ rotated ~270 ~ run teleport @s ^-0.23 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=16}] positioned ^0.23 ^ ^ rotated ~288 ~ run teleport @s ^-0.23 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=17}] positioned ^0.23 ^ ^ rotated ~306 ~ run teleport @s ^-0.23 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=18}] positioned ^0.23 ^ ^ rotated ~324 ~ run teleport @s ^-0.23 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=19}] positioned ^0.23 ^ ^ rotated ~342 ~ run teleport @s ^-0.23 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=1}] positioned ^-0.23 ^ ^ rotated ~18 ~ run teleport @s ^0.23 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=2}] positioned ^-0.23 ^ ^ rotated ~36 ~ run teleport @s ^0.23 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=3}] positioned ^-0.23 ^ ^ rotated ~54 ~ run teleport @s ^0.23 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=4}] positioned ^-0.23 ^ ^ rotated ~72 ~ run teleport @s ^0.23 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=5}] positioned ^-0.23 ^ ^ rotated ~90 ~ run teleport @s ^0.23 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=6}] positioned ^-0.23 ^ ^ rotated ~108 ~ run teleport @s ^0.23 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=7}] positioned ^-0.23 ^ ^ rotated ~126 ~ run teleport @s ^0.23 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=8}] positioned ^-0.23 ^ ^ rotated ~144 ~ run teleport @s ^0.23 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=9}] positioned ^-0.23 ^ ^ rotated ~162 ~ run teleport @s ^0.23 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=10}] positioned ^-0.23 ^ ^ rotated ~180 ~ run teleport @s ^0.23 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=11}] positioned ^-0.23 ^ ^ rotated ~198 ~ run teleport @s ^0.23 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=12}] positioned ^-0.23 ^ ^ rotated ~216 ~ run teleport @s ^0.23 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=13}] positioned ^-0.23 ^ ^ rotated ~234 ~ run teleport @s ^0.23 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=14}] positioned ^-0.23 ^ ^ rotated ~252 ~ run teleport @s ^0.23 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=15}] positioned ^-0.23 ^ ^ rotated ~270 ~ run teleport @s ^0.23 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=16}] positioned ^-0.23 ^ ^ rotated ~288 ~ run teleport @s ^0.23 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=17}] positioned ^-0.23 ^ ^ rotated ~306 ~ run teleport @s ^0.23 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=18}] positioned ^-0.23 ^ ^ rotated ~324 ~ run teleport @s ^0.23 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=19}] positioned ^-0.23 ^ ^ rotated ~342 ~ run teleport @s ^0.23 ^ ^ ~ ~
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 180
scoreboard players add @s[scores={AnimationProgress=6..10}] AnimationRotationX 180
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0