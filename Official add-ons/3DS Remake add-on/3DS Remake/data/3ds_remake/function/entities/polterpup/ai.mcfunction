scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run data modify entity @s[scores={AnimationProgress=1}] data.animation set value {namespace:"3ds_remake",id:"revive"}
execute unless score #mirrored Selected matches 1 run teleport @s[scores={AnimationProgress=1},tag=!flipped_gravity] ^-1.8 ^-2 ^0.5 ~-90 -90
execute unless score #mirrored Selected matches 1 run teleport @s[scores={AnimationProgress=1},tag=flipped_gravity] ^1.8 ^2.43 ^0.5 ~90 90
execute if score #mirrored Selected matches 1 run teleport @s[scores={AnimationProgress=1},tag=!flipped_gravity] ^1.8 ^-2 ^0.5 ~90 -90
execute if score #mirrored Selected matches 1 run teleport @s[scores={AnimationProgress=1},tag=flipped_gravity] ^-1.8 ^2.43 ^0.5 ~-90 90
execute at @s run teleport @s[scores={AnimationProgress=1..10},tag=!flipped_gravity] ~ ~ ~ ~ ~9
execute at @s run teleport @s[scores={AnimationProgress=1..10},tag=flipped_gravity] ~ ~ ~ ~ ~-9
teleport @s[scores={AnimationProgress=331..340},tag=!flipped_gravity] ~ ~ ~ ~ ~9
teleport @s[scores={AnimationProgress=331..340},tag=flipped_gravity] ~ ~ ~ ~ ~-9
execute at @s[scores={AnimationProgress=1..5},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^0.4 ^0.2
execute at @s[scores={AnimationProgress=1..5},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^-0.4 ^0.2
execute at @s[scores={AnimationProgress=6..10}] rotated ~ 0 run teleport @s ^ ^ ^0.2
execute unless score #mirrored Selected matches 1 at @s[scores={AnimationProgress=81..90},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^0.1 ~2 ~
execute unless score #mirrored Selected matches 1 at @s[scores={AnimationProgress=81..90},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^0.1 ~-2 ~
execute if score #mirrored Selected matches 1 at @s[scores={AnimationProgress=81..90},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^0.1 ~-2 ~
execute if score #mirrored Selected matches 1 at @s[scores={AnimationProgress=81..90},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^0.1 ~2 ~
execute unless score #mirrored Selected matches 1 at @s[scores={AnimationProgress=91..130},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^0.1 ~-6 ~
execute unless score #mirrored Selected matches 1 at @s[scores={AnimationProgress=91..130},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^0.1 ~6 ~
execute if score #mirrored Selected matches 1 at @s[scores={AnimationProgress=91..130},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^0.1 ~6 ~
execute if score #mirrored Selected matches 1 at @s[scores={AnimationProgress=91..130},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^0.1 ~-6 ~
execute unless score #mirrored Selected matches 1 at @s[scores={AnimationProgress=131..140},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^0.05 ~-5 ~
execute unless score #mirrored Selected matches 1 at @s[scores={AnimationProgress=131..140},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^0.05 ~5 ~
execute if score #mirrored Selected matches 1 at @s[scores={AnimationProgress=131..140},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^0.05 ~5 ~
execute if score #mirrored Selected matches 1 at @s[scores={AnimationProgress=131..140},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^0.05 ~-5 ~
execute unless score #mirrored Selected matches 1 at @s[scores={AnimationProgress=181..185},tag=!flipped_gravity] rotated ~ 0 run teleport @s ~ ~ ~ ~18 ~
execute unless score #mirrored Selected matches 1 at @s[scores={AnimationProgress=181..185},tag=flipped_gravity] rotated ~ 0 run teleport @s ~ ~ ~ ~-18 ~
execute if score #mirrored Selected matches 1 at @s[scores={AnimationProgress=181..185},tag=!flipped_gravity] rotated ~ 0 run teleport @s ~ ~ ~ ~-18 ~
execute if score #mirrored Selected matches 1 at @s[scores={AnimationProgress=181..185},tag=flipped_gravity] rotated ~ 0 run teleport @s ~ ~ ~ ~18 ~
execute at @s[scores={AnimationProgress=186..190}] rotated ~ 0 run teleport @s ^ ^ ^0.2
execute unless score #mirrored Selected matches 1 at @s[scores={AnimationProgress=191..195},tag=!flipped_gravity] rotated ~ 0 run teleport @s ~ ~ ~ ~-36 ~
execute unless score #mirrored Selected matches 1 at @s[scores={AnimationProgress=191..195},tag=flipped_gravity] rotated ~ 0 run teleport @s ~ ~ ~ ~36 ~
execute if score #mirrored Selected matches 1 at @s[scores={AnimationProgress=191..195},tag=!flipped_gravity] rotated ~ 0 run teleport @s ~ ~ ~ ~36 ~
execute if score #mirrored Selected matches 1 at @s[scores={AnimationProgress=191..195},tag=flipped_gravity] rotated ~ 0 run teleport @s ~ ~ ~ ~-36 ~
execute unless score #mirrored Selected matches 1 at @s[scores={AnimationProgress=255},tag=!flipped_gravity] rotated ~ 0 run teleport @s ~ ~ ~ ~10 ~
execute unless score #mirrored Selected matches 1 at @s[scores={AnimationProgress=255},tag=flipped_gravity] rotated ~ 0 run teleport @s ~ ~ ~ ~-10 ~
execute if score #mirrored Selected matches 1 at @s[scores={AnimationProgress=255},tag=!flipped_gravity] rotated ~ 0 run teleport @s ~ ~ ~ ~-10 ~
execute if score #mirrored Selected matches 1 at @s[scores={AnimationProgress=255},tag=flipped_gravity] rotated ~ 0 run teleport @s ~ ~ ~ ~10 ~
execute at @s[scores={AnimationProgress=256..265}] rotated ~ 0 run teleport @s ^ ^ ^0.1
execute unless score #mirrored Selected matches 1 at @s[scores={AnimationProgress=266},tag=!flipped_gravity] rotated ~ 0 run teleport @s ~ ~ ~ ~-10 ~
execute unless score #mirrored Selected matches 1 at @s[scores={AnimationProgress=266},tag=flipped_gravity] rotated ~ 0 run teleport @s ~ ~ ~ ~10 ~
execute if score #mirrored Selected matches 1 at @s[scores={AnimationProgress=266},tag=!flipped_gravity] rotated ~ 0 run teleport @s ~ ~ ~ ~10 ~
execute if score #mirrored Selected matches 1 at @s[scores={AnimationProgress=266},tag=flipped_gravity] rotated ~ 0 run teleport @s ~ ~ ~ ~-10 ~
execute at @s[scores={AnimationProgress=300..309}] rotated ~ 0 run teleport @s ^ ^ ^0.1
execute at @s[scores={AnimationProgress=310..330}] rotated ~ 0 run teleport @s ^ ^ ^0.1
execute at @s[scores={AnimationProgress=331..340},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^-0.2 ^0.1
execute at @s[scores={AnimationProgress=331..340},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^0.2 ^0.1
tag @s[scores={AnimationProgress=340..}] add remove_from_existence