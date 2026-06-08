scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] positioned ^-0.46 ^ ^ rotated ~10 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=2}] positioned ^-0.46 ^ ^ rotated ~20 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=3}] positioned ^-0.46 ^ ^ rotated ~30 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=4}] positioned ^-0.46 ^ ^ rotated ~40 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=5}] positioned ^-0.46 ^ ^ rotated ~50 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=6}] positioned ^-0.46 ^ ^ rotated ~60 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=7}] positioned ^-0.46 ^ ^ rotated ~70 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=8}] positioned ^-0.46 ^ ^ rotated ~80 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=9}] positioned ^-0.46 ^ ^ rotated ~90 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=10}] positioned ^-0.46 ^ ^ rotated ~100 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=11}] positioned ^-0.46 ^ ^ rotated ~110 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=12}] positioned ^-0.46 ^ ^ rotated ~120 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=13}] positioned ^-0.46 ^ ^ rotated ~130 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=14}] positioned ^-0.46 ^ ^ rotated ~140 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=15..25}] positioned ^-0.46 ^ ^ rotated ~150 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=26}] positioned ^-0.46 ^ ^ rotated ~140 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=27}] positioned ^-0.46 ^ ^ rotated ~130 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=28}] positioned ^-0.46 ^ ^ rotated ~120 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=29}] positioned ^-0.46 ^ ^ rotated ~110 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=30}] positioned ^-0.46 ^ ^ rotated ~100 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=31}] positioned ^-0.46 ^ ^ rotated ~90 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=32}] positioned ^-0.46 ^ ^ rotated ~80 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=33}] positioned ^-0.46 ^ ^ rotated ~70 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=34}] positioned ^-0.46 ^ ^ rotated ~60 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=35}] positioned ^-0.46 ^ ^ rotated ~50 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=36}] positioned ^-0.46 ^ ^ rotated ~40 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=37}] positioned ^-0.46 ^ ^ rotated ~30 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=38}] positioned ^-0.46 ^ ^ rotated ~20 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=39}] positioned ^-0.46 ^ ^ rotated ~10 ~ run teleport @s ^0.46 ^ ^ ~ ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 500
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -600
execute if entity @s[scores={AnimationProgress=1..7}] run scoreboard players add @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=34..40}] run scoreboard players remove @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players add @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=1..6}] run scoreboard players add @s AnimationRotationZ 100
execute if entity @s[scores={AnimationProgress=35..40}] run scoreboard players remove @s AnimationRotationZ 100
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0