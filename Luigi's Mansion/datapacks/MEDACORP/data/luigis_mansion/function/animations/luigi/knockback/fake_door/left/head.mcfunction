scoreboard players add @s AnimationProgress 1
execute at @s[scores={AnimationProgress=61}] rotated ~ 0 run teleport @s ^ ^-0.051 ^0.001 ~ ~3.5
execute at @s[scores={AnimationProgress=62}] rotated ~ 0 run teleport @s ^ ^-0.102 ^0.002 ~ ~6.9
execute at @s[scores={AnimationProgress=63}] rotated ~ 0 run teleport @s ^ ^-0.153 ^0.003 ~ ~10.4
execute at @s[scores={AnimationProgress=64}] rotated ~ 0 run teleport @s ^ ^-0.205 ^0.005 ~ ~13.8
execute at @s[scores={AnimationProgress=65}] rotated ~ 0 run teleport @s ^ ^-0.256 ^0.006 ~ ~17.3
execute at @s[scores={AnimationProgress=66}] rotated ~ 0 run teleport @s ^ ^-0.307 ^0.007 ~ ~20.8
execute at @s[scores={AnimationProgress=67}] rotated ~ 0 run teleport @s ^ ^-0.358 ^0.008 ~ ~24.2
execute at @s[scores={AnimationProgress=68}] rotated ~ 0 run teleport @s ^ ^-0.409 ^0.009 ~ ~27.7
execute at @s[scores={AnimationProgress=69}] rotated ~ 0 run teleport @s ^ ^-0.46 ^0.01 ~ ~31.2
execute at @s[scores={AnimationProgress=70}] rotated ~ 0 run teleport @s ^ ^-0.512 ^0.012 ~ ~34.6
execute at @s[scores={AnimationProgress=71}] rotated ~ 0 run teleport @s ^ ^-0.563 ^0.013 ~ ~38.1
execute at @s[scores={AnimationProgress=72}] rotated ~ 0 run teleport @s ^ ^-0.614 ^0.014 ~ ~41.5
execute at @s[scores={AnimationProgress=73}] rotated ~ 0 run teleport @s ^ ^-0.665 ^0.015 ~ ~45
execute at @s[scores={AnimationProgress=74}] rotated ~ 0 run teleport @s ^ ^-0.716 ^0.016 ~ ~48.5
execute at @s[scores={AnimationProgress=75}] rotated ~ 0 run teleport @s ^ ^-0.767 ^0.017 ~ ~51.9
execute at @s[scores={AnimationProgress=76}] rotated ~ 0 run teleport @s ^ ^-0.818 ^0.018 ~ ~55.4
execute at @s[scores={AnimationProgress=77}] rotated ~ 0 run teleport @s ^ ^-0.87 ^0.02 ~ ~58.8
execute at @s[scores={AnimationProgress=78}] rotated ~ 0 run teleport @s ^ ^-0.921 ^0.021 ~ ~62.3
execute at @s[scores={AnimationProgress=79}] rotated ~ 0 run teleport @s ^ ^-0.972 ^0.022 ~ ~65.8
execute at @s[scores={AnimationProgress=80}] rotated ~ 0 run teleport @s ^ ^-1.023 ^0.023 ~ ~69.2
execute at @s[scores={AnimationProgress=81}] rotated ~ 0 run teleport @s ^ ^-1.074 ^0.024 ~ ~72.7
execute at @s[scores={AnimationProgress=82}] rotated ~ 0 run teleport @s ^ ^-1.125 ^0.025 ~ ~76.2
execute at @s[scores={AnimationProgress=83}] rotated ~ 0 run teleport @s ^ ^-1.177 ^0.027 ~ ~79.6
execute at @s[scores={AnimationProgress=84}] rotated ~ 0 run teleport @s ^ ^-1.228 ^0.028 ~ ~83.1
execute at @s[scores={AnimationProgress=85}] rotated ~ 0 run teleport @s ^ ^-1.279 ^0.029 ~ ~86.5
execute at @s[scores={AnimationProgress=86..110}] rotated ~ 0 run teleport @s ^ ^-1.33 ^0.03 ~ ~90
execute at @s[scores={AnimationProgress=111}] rotated ~ 0 run teleport @s ^ ^-1.172 ^0.027 ~ ~81
execute at @s[scores={AnimationProgress=112}] rotated ~ 0 run teleport @s ^ ^-1.042 ^0.024 ~ ~72
execute at @s[scores={AnimationProgress=113}] rotated ~ 0 run teleport @s ^ ^-0.912 ^0.021 ~ ~63
execute at @s[scores={AnimationProgress=114}] rotated ~ 0 run teleport @s ^ ^-0.781 ^0.018 ~ ~54
execute at @s[scores={AnimationProgress=115}] rotated ~ 0 run teleport @s ^ ^-0.651 ^0.015 ~ ~45
execute at @s[scores={AnimationProgress=116}] rotated ~ 0 run teleport @s ^ ^-0.521 ^0.012 ~ ~36
execute at @s[scores={AnimationProgress=117}] rotated ~ 0 run teleport @s ^ ^-0.39 ^0.009 ~ ~27
execute at @s[scores={AnimationProgress=118}] rotated ~ 0 run teleport @s ^ ^-0.26 ^0.006 ~ ~18
execute at @s[scores={AnimationProgress=119}] rotated ~ 0 run teleport @s ^ ^-0.13 ^0.003 ~ ~9
data modify entity @s[scores={AnimationProgress=5}] item merge from entity @s item.components."minecraft:custom_data".model_data.scared
data modify entity @s[scores={AnimationProgress=15}] transformation.scale[2] set value 0.01f
scoreboard players add @s[scores={AnimationProgress=91..92}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=93..96}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=97..100}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=101..102}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=103..106}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=107..110}] AnimationRotationY 20
data modify entity @s[scores={AnimationProgress=110}] transformation.scale[2] set value 1f
scoreboard players set @s[scores={AnimationProgress=140..}] AnimationProgress 0