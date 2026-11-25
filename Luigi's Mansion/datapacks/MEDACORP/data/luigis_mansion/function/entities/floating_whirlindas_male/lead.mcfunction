tag @s add leader
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] positioned ^ ^ ^-0.7 run teleport @s ~ ~ ~ ~ ~
data modify entity @s[scores={Dialog=1}] data.dance_rotation set from entity @s Rotation
execute if entity @s[scores={Dialog=1}] positioned ^ ^ ^0.7 run teleport @e[tag=partner,limit=1] ~ ~ ~ ~-180 ~
execute if entity @s[nbt=!{data:{animation:{namespace:"luigis_mansion",id:"raise"}}},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] unless score #mirrored Selected matches 1 rotated ~4 ~ positioned ^ ^ ^0.7 as @e[tag=partner,limit=1] rotated as @s run teleport @s ~ ~ ~ ~4 ~
execute if entity @s[nbt=!{data:{animation:{namespace:"luigis_mansion",id:"raise"}}},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] if score #mirrored Selected matches 1 rotated ~-4 ~ positioned ^ ^ ^0.7 as @e[tag=partner,limit=1] rotated as @s run teleport @s ~ ~ ~ ~-4 ~
execute unless entity @s[nbt=!{data:{animation:{namespace:"luigis_mansion",id:"raise"}}},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] unless score #mirrored Selected matches 1 rotated ~1 ~ positioned ^ ^ ^0.7 as @e[tag=partner,limit=1] rotated as @s run teleport @s ~ ~ ~ ~1 ~
execute unless entity @s[nbt=!{data:{animation:{namespace:"luigis_mansion",id:"raise"}}},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] if score #mirrored Selected matches 1 rotated ~-1 ~ positioned ^ ^ ^0.7 as @e[tag=partner,limit=1] rotated as @s run teleport @s ~ ~ ~ ~-1 ~
execute if entity @s[nbt=!{data:{animation:{namespace:"luigis_mansion",id:"raise"}}},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] unless score #mirrored Selected matches 1 run teleport @s ~ ~ ~ ~4 ~
execute if entity @s[nbt=!{data:{animation:{namespace:"luigis_mansion",id:"raise"}}},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] if score #mirrored Selected matches 1 run teleport @s ~ ~ ~ ~-4 ~
execute unless entity @s[nbt=!{data:{animation:{namespace:"luigis_mansion",id:"raise"}}},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] unless score #mirrored Selected matches 1 run teleport @s ~ ~ ~ ~1 ~
execute unless entity @s[nbt=!{data:{animation:{namespace:"luigis_mansion",id:"raise"}}},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] if score #mirrored Selected matches 1 run teleport @s ~ ~ ~ ~-1 ~
data modify entity @s data.partner_direction set from entity @s Rotation
data modify entity @s Rotation set from entity @s data.dance_rotation
execute if entity @s[nbt=!{data:{animation:{namespace:"luigis_mansion",id:"raise"}}},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] unless score #mirrored Selected matches 1 rotated ~4 ~ positioned ^ ^ ^-0.7 rotated as @s run teleport @s ~ ~ ~ ~4 ~
execute if entity @s[nbt=!{data:{animation:{namespace:"luigis_mansion",id:"raise"}}},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] if score #mirrored Selected matches 1 rotated ~-4 ~ positioned ^ ^ ^-0.7 rotated as @s run teleport @s ~ ~ ~ ~-4 ~
execute unless entity @s[nbt=!{data:{animation:{namespace:"luigis_mansion",id:"raise"}}},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] unless score #mirrored Selected matches 1 rotated ~1 ~ positioned ^ ^ ^-0.7 rotated as @s run teleport @s ~ ~ ~ ~1 ~
execute unless entity @s[nbt=!{data:{animation:{namespace:"luigis_mansion",id:"raise"}}},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] if score #mirrored Selected matches 1 rotated ~-1 ~ positioned ^ ^ ^-0.7 rotated as @s run teleport @s ~ ~ ~ ~-1 ~
data modify entity @s data.dance_rotation set from entity @s Rotation
tag @s[scores={Dialog=60},nbt=!{data:{animation:{}}}] add was_idle
data modify entity @s[scores={Dialog=60},tag=was_idle] data.animation set value {namespace:"luigis_mansion",id:"dance"}
data remove entity @s[scores={Dialog=60},tag=!was_idle] data.animation
tag @s[scores={Dialog=60}] remove was_idle
execute if predicate luigis_mansion:floating_whirlindas/raise_chance run data modify entity @s[scores={Dialog=60}] data.animation set value {namespace:"luigis_mansion",id:"raise"}
execute if predicate luigis_mansion:floating_whirlindas/bow_chance run data modify entity @s[scores={Dialog=60}] data.animation set value {namespace:"luigis_mansion",id:"bow"}
scoreboard players set @s[scores={Dialog=60},nbt={data:{animation:{namespace:"luigis_mansion",id:"dance"}}}] Dialog 0
scoreboard players set @s[scores={Dialog=60},nbt=!{data:{animation:{}}}] Dialog 0
tag @s[scores={Dialog=60},nbt={data:{animation:{namespace:"luigis_mansion",id:"bow"}}},tag=can_be_vulnerable] add visible
execute if entity @s[scores={Dialog=60},nbt={data:{animation:{namespace:"luigis_mansion",id:"bow"}}},tag=can_be_vulnerable] run scoreboard players set @s VulnerableTime 100
execute if entity @s[scores={Dialog=60},nbt={data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] run playsound luigis_mansion:entity.floating_whirlindas.male.bow hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=160},nbt={data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] run playsound luigis_mansion:entity.floating_whirlindas.male.bow hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=160},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] run playsound luigis_mansion:entity.floating_whirlindas.male.dance hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=160},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"bow"}}}] at @e[tag=partner,nbt={data:{entity:{namespace:"luigis_mansion",id:"floating_whirlindas_female"}}},limit=1] run playsound luigis_mansion:entity.floating_whirlindas.female.dance hostile @a[tag=same_room] ~ ~ ~ 1
data remove entity @s[scores={Dialog=180}] data.animation
scoreboard players set @s[scores={Dialog=180}] Dialog 0

execute if entity @s[tag=!visible] run particle minecraft:dust{color:16777128,scale:1f} ~ ~0.6 ~ 0.3 0.3 0.3 0 5