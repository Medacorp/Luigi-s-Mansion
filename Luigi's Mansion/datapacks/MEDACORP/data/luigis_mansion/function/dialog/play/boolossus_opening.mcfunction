execute unless entity @e[tag=ghost,tag=same_room,tag=merged,limit=1] run tag @e[tag=same_room] add abort_dialog_tick
execute unless entity @e[tag=ghost,tag=same_room,tag=merged,limit=1] run return 0
scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 1.. as @a[tag=same_room] run function luigis_mansion:other/music/set/boolossus_battle
execute if score #dialog Dialog matches 1.. run tag @e[tag=luigi,tag=same_room] add reset_rotation
execute if score #dialog Dialog matches 1..119 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 1 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0",teleport:"^26 ^3 ^-5 ~79.1 ~6.5"}
execute if score #dialog Dialog matches 1..40 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.275 ^-0.075 ^0.125 rotated as @s",teleport:"^ ^ ^ ~0.625 ~-0.1625"}
execute if score #dialog Dialog matches 41..60 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.125 ^-0.025 ^0.2 rotated as @s",teleport:"^ ^ ^ ~0.7 ~"}
execute if score #dialog Dialog matches 61..80 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.2 ^ ^0.2 rotated as @s",teleport:"^ ^ ^ ~0.8 ~"}
execute if score #dialog Dialog matches 81..100 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.24 ^0.025 ^0.25 rotated as @s",teleport:"^ ^ ^ ~0.9 ~"}
execute if score #dialog Dialog matches 101..120 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.14 ^ ^0.2 rotated as @s",teleport:"^ ^ ^ ~1.395 ~"}
execute if score #dialog Dialog matches 1 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0",teleport:"^-26 ^3 ^-5 ~-79.1 ~6.5"}
execute if score #dialog Dialog matches 1..40 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.275 ^-0.075 ^0.125 rotated as @s",teleport:"^ ^ ^ ~-0.625 ~-0.1625"}
execute if score #dialog Dialog matches 41..60 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.125 ^-0.025 ^0.2 rotated as @s",teleport:"^ ^ ^ ~-0.7 ~"}
execute if score #dialog Dialog matches 61..80 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.2 ^ ^0.2 rotated as @s",teleport:"^ ^ ^ ~-0.8 ~"}
execute if score #dialog Dialog matches 81..100 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.24 ^0.025 ^0.25 rotated as @s",teleport:"^ ^ ^ ~-0.9 ~"}
execute if score #dialog Dialog matches 101..120 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.14 ^ ^0.2 rotated as @s",teleport:"^ ^ ^ ~-1.395 ~"}
execute if score #dialog Dialog matches 121..160 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 161 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=ghost,tag=same_room,tag=merged,limit=1]",teleport:"^ ^-56 ^ ~200 -90"}
execute if score #dialog Dialog matches 161..240 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~-0.5 ~"}
execute if score #dialog Dialog matches 161 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=ghost,tag=same_room,tag=merged,limit=1]",teleport:"^ ^-56 ^ ~-200 -90"}
execute if score #dialog Dialog matches 161..240 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~0.5 ~"}
execute if score #dialog Dialog matches 241 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 241 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^10 ^ ~-20 90"}
execute if score #dialog Dialog matches 241..280 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^ ^-0.275 ^ rotated as @s",teleport:"^ ^ ^ ~1 90"}
execute if score #dialog Dialog matches 281 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~-20 0"}
execute if score #dialog Dialog matches 241 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^10 ^ ~20 90"}
execute if score #dialog Dialog matches 241..280 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^ ^-0.275 ^ rotated as @s",teleport:"^ ^ ^ ~-1 90"}
execute if score #dialog Dialog matches 281 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~20 0"}
execute if score #dialog Dialog matches 281 as @a[tag=same_room] at @s run particle minecraft:dust{color:11711129,scale:1.5f} ^ ^2 ^2 1.5 0.5 1.5 1 240 normal @s
execute if score #dialog Dialog matches 281..320 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 321..330 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^0.1 ~ ~"}
execute if score #dialog Dialog matches 331 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 331 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0",teleport:"^1 ^-0.75 ^-3 facing entity @e[tag=ghost,tag=same_room,tag=merged,limit=1] feet"}
execute if score #dialog Dialog matches 331 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0",teleport:"^-1 ^-0.75 ^-3 facing entity @e[tag=ghost,tag=same_room,tag=merged,limit=1] feet"}
execute if score #dialog Dialog matches 331..380 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 119 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 120 at @e[tag=ghost,tag=same_room,tag=merged,limit=1] run playsound luigis_mansion:entity.boolossus.laugh_2 hostile @a[tag=same_room] ~ ~ ~ 30
execute if score #dialog Dialog matches 120 as @e[tag=luigi,tag=same_room] at @e[tag=ghost,tag=same_room,tag=merged,limit=1] run function luigis_mansion:entities/luigi/animation/set/scare/freeze
execute if score #dialog Dialog matches 220 as @e[tag=luigi,tag=same_room] at @e[tag=ghost,tag=same_room,tag=merged,limit=1] run function luigis_mansion:entities/luigi/animation/set/knockback/flee_look_up
execute if score #dialog Dialog matches 160..220 as @e[tag=ghost,tag=same_room,tag=merged,limit=1] at @s run teleport @s ~ ~ ~ ~ ~1.5
execute if score #dialog Dialog matches 218..280 as @e[tag=ghost,tag=same_room,tag=merged,limit=1] at @s run teleport @s ~ ~-1 ~
execute if score #dialog Dialog matches 280 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 280 as @e[tag=luigi,tag=same_room] at @e[tag=ghost,tag=same_room,tag=merged,limit=1] run function luigis_mansion:entities/luigi/animation/set/scare/bash_no_move
execute if score #dialog Dialog matches 280 as @e[tag=luigi,tag=same_room] run data modify entity @s data.initial_animation_progress set value 30
execute if score #dialog Dialog matches 280..379 run scoreboard players set @e[tag=luigi,tag=same_room] AnimationProgress 29
execute if score #dialog Dialog matches 280 at @e[tag=ghost,tag=same_room,tag=merged,limit=1] run playsound luigis_mansion:entity.boolossus.bounce hostile @a[tag=same_room] ~ ~ ~ 3
execute if score #dialog Dialog matches 310..320 as @e[tag=ghost,tag=same_room,tag=merged,limit=1] at @s run teleport @s ~ ~0.2 ~ ~ ~-4.5
execute if score #dialog Dialog matches 330 run tag @e[tag=ghost,tag=same_room,tag=merged,limit=1] add laugh
execute if score #dialog Dialog matches 330 run tag @e[tag=ghost,tag=same_room,tag=merged,limit=1] remove no_ai
execute if score #dialog Dialog matches 330..380 run scoreboard players set @e[tag=ghost,tag=same_room,tag=merged,limit=1] Dialog 0
execute if score #dialog Dialog matches 380 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 380.. run tag @e[tag=luigi,tag=same_room] add reset_rotation
execute if score #dialog Dialog matches 380 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 380 run scoreboard players set #dialog Dialog -1