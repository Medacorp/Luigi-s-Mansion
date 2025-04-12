execute unless entity @e[tag=ghost,tag=same_room,limit=1] run tag @e[tag=same_room] add abort_dialog_tick
execute unless entity @e[tag=ghost,tag=same_room,limit=1] run return 0
scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 1.. as @a[tag=same_room] run function luigis_mansion:other/music/set/king_boo_battle
execute if score #dialog Dialog matches 1 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=ghost,tag=same_room,limit=1] positioned ^ ^ ^5 rotated ~20 0",teleport:"^-21 ^-45 ^-38 ~-25 ~"}
execute if score #dialog Dialog matches 1..30 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.4 ^0.03 ^0.06 rotated as @s",teleport:"^ ^ ^ ~-0.6 ~"}
execute if score #dialog Dialog matches 31..60 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.6 ^0.025 ^0.6 rotated as @s",teleport:"^ ^ ^ ~-1 ~0.16"}
execute if score #dialog Dialog matches 61..100 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.4 ^0.025 ^0.3 rotated as @s",teleport:"^ ^ ^ ~-1.5 ~0.125"}
execute if score #dialog Dialog matches 101..140 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.2 ^0.05 ^0.1 rotated as @s",teleport:"^ ^ ^ ~-0.9 ~0.5"}
execute if score #dialog Dialog matches 141..180 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.1 ^0.05 ^0.05 rotated as @s",teleport:"^ ^ ^ ~-0.9 ~0.5"}
execute if score #dialog Dialog matches 1 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=ghost,tag=same_room,limit=1] positioned ^ ^ ^5 rotated ~-20 0",teleport:"^21 ^-45 ^-38 ~25 ~"}
execute if score #dialog Dialog matches 1..30 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.4 ^0.03 ^0.06 rotated as @s",teleport:"^ ^ ^ ~0.6 ~"}
execute if score #dialog Dialog matches 31..60 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.6 ^0.025 ^0.6 rotated as @s",teleport:"^ ^ ^ ~1 ~0.16"}
execute if score #dialog Dialog matches 61..100 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.4 ^0.025 ^0.3 rotated as @s",teleport:"^ ^ ^ ~1.5 ~0.125"}
execute if score #dialog Dialog matches 101..140 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.2 ^0.05 ^0.1 rotated as @s",teleport:"^ ^ ^ ~0.9 ~0.5"}
execute if score #dialog Dialog matches 141..180 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.1 ^0.05 ^0.05 rotated as @s",teleport:"^ ^ ^ ~0.9 ~0.5"}
execute if score #dialog Dialog matches 181..240 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^0.05 ~ ~"}
execute if score #dialog Dialog matches 241..300 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=ghost,tag=same_room,limit=1] rotated ~ 0",teleport:"^ ^ ^10 ~-180 ~"}
execute if score #dialog Dialog matches 301..320 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~-1.25"}
execute if score #dialog Dialog matches 321..340 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 341..350 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~0.5"}
execute if score #dialog Dialog matches 351..420 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 421 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 421 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^1.5 ^ ^3 ~170 ~"}
execute if score #dialog Dialog matches 421 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^1.5 ^ ^3 ~-170 ~"}
execute if score #dialog Dialog matches 421..460 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^0.02 ~ ~"}
execute if score #dialog Dialog matches 461 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=ghost,tag=same_room,limit=1] rotated ~-170 0",teleport:"^ ^-0.5 ^-10 ~ ~"}
execute if score #dialog Dialog matches 461 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=ghost,tag=same_room,limit=1] rotated ~170 0",teleport:"^ ^-0.5 ^-10 ~ ~"}
execute if score #dialog Dialog matches 461..640 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^-0.05 ~ ~-0.05"}
execute if score #dialog Dialog matches 1..239 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 196 unless score #mirrored Selected matches 1 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ ~20 ~
execute if score #dialog Dialog matches 196 if score #mirrored Selected matches 1 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ ~-20 ~
execute if score #dialog Dialog matches 197..240 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ~ ~-1 ~
execute if score #dialog Dialog matches 240 at @e[tag=ghost,tag=same_room,limit=1] run playsound luigis_mansion:entity.bowser.land hostile @a[tag=same_room] ~ ~ ~ 3
execute if score #dialog Dialog matches 239 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 240 as @e[tag=luigi,tag=same_room] at @s positioned ^ ^ ^1 run function luigis_mansion:entities/luigi/animation/set/scare/bash_no_move
execute if score #dialog Dialog matches 240..419 as @e[tag=luigi,tag=same_room,scores={AnimationProgress=30}] at @s run function luigis_mansion:dialog/play/king_boo_opening_angle
execute if score #dialog Dialog matches 240..419 unless score #mirrored Selected matches 1 as @e[tag=luigi,tag=same_room,scores={AnimationProgress=30},tag=!dialog_no_turn] at @s rotated ~5 0 positioned ^ ^ ^-0.1 run function luigis_mansion:entities/luigi/animation/scare/bash_force_move
execute if score #dialog Dialog matches 240..419 if score #mirrored Selected matches 1 as @e[tag=luigi,tag=same_room,scores={AnimationProgress=30},tag=!dialog_no_turn] at @s rotated ~-5 0 positioned ^ ^ ^-0.1 run function luigis_mansion:entities/luigi/animation/scare/bash_force_move
execute if score #dialog Dialog matches 240..419 as @e[tag=luigi,tag=same_room,scores={AnimationProgress=30},tag=dialog_no_turn] at @s positioned ^ ^ ^-0.1 run function luigis_mansion:entities/luigi/animation/scare/bash_force_move
execute if score #dialog Dialog matches 240..419 run tag @e[tag=luigi,tag=same_room] remove dialog_no_turn
execute if score #dialog Dialog matches 240..420 run scoreboard players set @e[tag=luigi,tag=same_room,limit=1,scores={AnimationProgress=30..}] AnimationProgress 29
execute if score #dialog Dialog matches 230 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"crouch"}
execute if score #dialog Dialog matches 300 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"roar"}
execute if score #dialog Dialog matches 360 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"adjust_head"}
execute if score #dialog Dialog matches 420 run data remove entity @e[tag=ghost,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 440 unless score #mirrored Selected matches 1 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ ~-20 ~
execute if score #dialog Dialog matches 440 if score #mirrored Selected matches 1 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ ~20 ~
execute if score #dialog Dialog matches 440..539 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/scare/staredown
execute if score #dialog Dialog matches 471..610 as @e[tag=ghost,tag=same_room,limit=1] at @s run function luigis_mansion:entities/bowser/attack/breathe_fire
execute if score #dialog Dialog matches 640 run tag @e[tag=ghost,tag=same_room,limit=1] remove no_ai
execute if score #dialog Dialog matches 640 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 640 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 640 run scoreboard players set #dialog Dialog -1