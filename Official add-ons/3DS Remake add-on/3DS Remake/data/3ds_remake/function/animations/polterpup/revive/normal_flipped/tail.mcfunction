scoreboard players add @s AnimationProgress 1
execute at @s[scores={AnimationProgress=196}] run teleport @s ^ ^ ^0.05
execute at @s[scores={AnimationProgress=197}] run teleport @s ^ ^ ^0.1
execute at @s[scores={AnimationProgress=198}] run teleport @s ^ ^ ^0.15
execute at @s[scores={AnimationProgress=199}] run teleport @s ^ ^ ^0.2
execute at @s[scores={AnimationProgress=200..250}] run teleport @s ^ ^ ^0.25
execute at @s[scores={AnimationProgress=251}] run teleport @s ^ ^ ^0.2
execute at @s[scores={AnimationProgress=252}] run teleport @s ^ ^ ^0.15
execute at @s[scores={AnimationProgress=253}] run teleport @s ^ ^ ^0.1
execute at @s[scores={AnimationProgress=254}] run teleport @s ^ ^ ^0.05
execute at @s[scores={AnimationProgress=256}] run teleport @s ^ ^-0.05 ^
execute at @s[scores={AnimationProgress=257}] run teleport @s ^ ^-0.1 ^
execute at @s[scores={AnimationProgress=258}] run teleport @s ^ ^-0.15 ^
execute at @s[scores={AnimationProgress=259}] run teleport @s ^ ^-0.2 ^
execute at @s[scores={AnimationProgress=260}] run teleport @s ^ ^-0.25 ^
execute at @s[scores={AnimationProgress=261}] run teleport @s ^ ^-0.3 ^
execute at @s[scores={AnimationProgress=262}] run teleport @s ^ ^-0.35 ^
execute at @s[scores={AnimationProgress=263}] run teleport @s ^ ^-0.4 ^
execute at @s[scores={AnimationProgress=264}] run teleport @s ^ ^-0.45 ^
execute at @s[scores={AnimationProgress=265..299}] run teleport @s ^ ^-0.5 ^
execute at @s[scores={AnimationProgress=300}] run teleport @s ^ ^-0.45 ^
execute at @s[scores={AnimationProgress=301}] run teleport @s ^ ^-0.4 ^
execute at @s[scores={AnimationProgress=302}] run teleport @s ^ ^-0.35 ^
execute at @s[scores={AnimationProgress=303}] run teleport @s ^ ^-0.3 ^
execute at @s[scores={AnimationProgress=304}] run teleport @s ^ ^-0.25 ^
execute at @s[scores={AnimationProgress=305}] run teleport @s ^ ^-0.2 ^
execute at @s[scores={AnimationProgress=306}] run teleport @s ^ ^-0.15 ^
execute at @s[scores={AnimationProgress=307}] run teleport @s ^ ^-0.1 ^
execute at @s[scores={AnimationProgress=308}] run teleport @s ^ ^-0.05 ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -1800
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=21..30}] run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=71..80}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=331..340}] run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=81..85}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=86..95}] run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=96..105}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=106..115}] run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=116..125}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=126..135}] run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=136..145}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=146..155}] run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=156..165}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=166..175}] run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=176..180}] run scoreboard players remove @s AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=340..}] AnimationProgress 0