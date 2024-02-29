tag @s add lead
scoreboard players add @s Dialog 1
tag @s[scores={Dialog=..299}] add visible
execute if entity @s[scores={Dialog=..300}] at @a[tag=same_room,tag=!spectator] unless entity @e[tag=ball_floor,distance=..4.999999,limit=1] run tag @s remove visible
execute if entity @s[scores={Dialog=..300}] at @a[tag=same_room,tag=!spectator] positioned ^ ^ ^8 run tag @s[distance=..8] remove visible

execute if entity @s[scores={Dialog=1}] positioned ^ ^ ^-0.7 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] positioned ^ ^ ^0.7 run teleport @e[tag=partner,limit=1] ~ ~ ~ ~-180 ~
execute if entity @s[scores={Dialog=..299}] unless score #mirrored Selected matches 1 rotated ~4 ~ positioned ^ ^ ^-0.7 run teleport @s ~ ~ ~ facing ^ ^ ^0.5
execute if entity @s[scores={Dialog=..299}] if score #mirrored Selected matches 1 rotated ~-4 ~ positioned ^ ^ ^-0.7 run teleport @s ~ ~ ~ facing ^ ^ ^0.5
execute if entity @s[scores={Dialog=..299}] unless score #mirrored Selected matches 1 rotated ~4 ~ positioned ^ ^ ^0.7 as @e[tag=partner,limit=1] run teleport @s ~ ~ ~ facing ^ ^ ^-0.5
execute if entity @s[scores={Dialog=..299}] if score #mirrored Selected matches 1 rotated ~-4 ~ positioned ^ ^ ^0.7 as @e[tag=partner,limit=1] run teleport @s ~ ~ ~ facing ^ ^ ^-0.5
data modify entity @s[scores={Dialog=300},tag=visible] data.animation set value {namespace:"luigis_mansion",id:"raise"}
execute if predicate luigis_mansion:floating_whirlindas/bow_chance run data modify entity @s[scores={Dialog=300},tag=visible] data.animation set value {namespace:"luigis_mansion",id:"bow"}
execute if entity @s[scores={Dialog=300},nbt={data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] run scoreboard players set @s VulnerableTime 120
execute if entity @s[scores={Dialog=300},nbt={data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] run playsound luigis_mansion:entity.floating_whirlindas.male.bow hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=300..319}] unless score #mirrored Selected matches 1 positioned ^ ^ ^-0.7 rotated as @s run teleport @s ~ ~ ~ ~18 ~
execute if entity @s[scores={Dialog=300..319}] unless score #mirrored Selected matches 1 positioned ^ ^ ^0.7 as @e[tag=partner,limit=1] rotated as @s run teleport @s ~ ~ ~ ~18 ~
execute if entity @s[scores={Dialog=300..319}] if score #mirrored Selected matches 1 positioned ^ ^ ^-0.7 rotated as @s run teleport @s ~ ~ ~ ~-18 ~
execute if entity @s[scores={Dialog=300..319}] if score #mirrored Selected matches 1 positioned ^ ^ ^0.7 as @e[tag=partner,limit=1] rotated as @s run teleport @s ~ ~ ~ ~-18 ~
execute if entity @s[scores={Dialog=400},nbt={data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] run playsound luigis_mansion:entity.floating_whirlindas.male.bow hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=400},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] run playsound luigis_mansion:entity.floating_whirlindas.male.dance hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=400},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] at @e[tag=partner,limit=1] run playsound luigis_mansion:entity.floating_whirlindas.female.dance hostile @a[tag=same_room] ~ ~ ~ 1
data remove entity @s[scores={Dialog=420}] data.animation
scoreboard players set @s[scores={Dialog=420}] Dialog 0

execute if entity @s[tag=!visible] run particle minecraft:dust 1 1 0.66 1 ~ ~0.6 ~ 0.3 0.3 0.3 0 5