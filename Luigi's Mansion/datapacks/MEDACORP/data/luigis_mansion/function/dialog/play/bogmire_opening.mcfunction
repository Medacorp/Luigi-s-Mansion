execute unless entity @e[tag=ghost,tag=same_room,limit=1] run tag @e[tag=same_room] add abort_dialog_tick
execute unless entity @e[tag=ghost,tag=same_room,limit=1] run return 0
scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 1.. as @a[tag=same_room] run function luigis_mansion:other/music/set/bogmire_battle
execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=same_room] at @e[tag=ghost,tag=!not_this_ghost,tag=same_room,limit=1] run function luigis_mansion:entities/luigi/animation/set/scare/bash_no_move
execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=same_room] run data modify entity @s data.initial_animation_progress set value 30
execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/move/teleport {teleport:"^ ^ ^ facing entity @e[tag=ghost,tag=!not_this_ghost,tag=same_room,limit=1] feet"}
execute if score #dialog Dialog matches 1 run tag @e[tag=luigi,tag=same_room] add reset_rotation
execute if score #dialog Dialog matches 2 run tag @e[tag=luigi,tag=same_room] remove reset_rotation
execute if score #dialog Dialog matches 1..40 run scoreboard players set @e[tag=luigi,tag=same_room] AnimationProgress 29
execute if score #dialog Dialog matches 1..20 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=ghost,tag=!not_this_ghost,tag=same_room,limit=1] rotated ~ 0",teleport:"^ ^ ^15 ~ 22.5"}
execute if score #dialog Dialog matches 21..60 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^ ^ ^0.025 rotated as @s",teleport:"^ ^ ^ ~ ~-0.5625"}
execute if score #dialog Dialog matches 61..100 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.06 ^ ^ rotated as @s",teleport:"^ ^ ^ ~-1.5 ~"}
execute if score #dialog Dialog matches 101..180 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.115 ^0.05 ^-0.03 rotated as @s",teleport:"^ ^ ^ ~-1.5 ~0.5"}
execute if score #dialog Dialog matches 61..100 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.06 ^ ^ rotated as @s",teleport:"^ ^ ^ ~1.5 ~"}
execute if score #dialog Dialog matches 101..180 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.115 ^0.05 ^-0.03 rotated as @s",teleport:"^ ^ ^ ~1.5 ~0.5"}
execute if score #dialog Dialog matches 181..190 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 191..200 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^ ^-0.4 ^2.2 rotated as @s",teleport:"^ ^ ^ ~ ~-4"}
execute if score #dialog Dialog matches 201..220 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 221 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^-0.5 ^ ~-180 ~"}
execute if score #dialog Dialog matches 221..240 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^0.5 ~ ~"}
execute if score #dialog Dialog matches 241 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {execute:"at @e[tag=ghost,tag=not_this_ghost,tag=same_room,limit=1] rotated ~ 0",teleport:"^ ^-0.125 ^5 ~-180 20"}
execute if score #dialog Dialog matches 241..250 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~-3"}
execute if score #dialog Dialog matches 251..260 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 261..360 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.1 ^ ^ rotated as @s",teleport:"^ ^ ^ ~-2.1 ~0.125"}
execute if score #dialog Dialog matches 361..400 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.1775 ^ ^ rotated as @s",teleport:"^ ^ ^ ~-2.1 ~"}
execute if score #dialog Dialog matches 401..460 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.1 ^ ^ rotated as @s",teleport:"^ ^ ^ ~-2.1 ~"}
execute if score #dialog Dialog matches 261..360 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.1 ^ ^ rotated as @s",teleport:"^ ^ ^ ~2.1 ~0.125"}
execute if score #dialog Dialog matches 361..400 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.1775 ^ ^ rotated as @s",teleport:"^ ^ ^ ~2.1 ~"}
execute if score #dialog Dialog matches 401..460 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.1 ^ ^ rotated as @s",teleport:"^ ^ ^ ~2.1 ~"}
execute if score #dialog Dialog matches 461..480 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 60..199 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 200..219 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 220 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 220 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/scare/normal
execute if score #dialog Dialog matches 240..479 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/scare/staredown
execute if score #dialog Dialog matches 480 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 200..359 run tag @e[tag=ghost,tag=same_room,tag=!not_this_ghost,limit=1] add visible
execute if score #dialog Dialog matches 200 at @e[tag=ghost,tag=same_room,tag=!not_this_ghost,limit=1] run summon minecraft:lightning_bolt ~ ~ ~
execute if score #dialog Dialog matches 200 run tag @e[tag=ghost,tag=same_room,tag=!not_this_ghost,limit=1] remove no_ai
execute if score #dialog Dialog matches 220.. run scoreboard players set @e[tag=not_this_ghost,scores={ActionTime=131..},limit=1] ActionTime 130
execute if score #dialog Dialog matches 340 run tag @e[tag=ghost,tag=same_room,tag=!not_this_ghost,limit=1] add no_ai
execute if score #dialog Dialog matches 360 run tag @e[tag=ghost,tag=same_room,tag=!not_this_ghost,limit=1] remove visible
execute if score #dialog Dialog matches 480 run tag @e[tag=ghost,tag=same_room,tag=!not_this_ghost,limit=1] remove no_ai
execute if score #dialog Dialog matches 480 run scoreboard players set @a[tag=same_room,scores={Jukebox=0}] Music 0
execute if score #dialog Dialog matches 480 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 480 run scoreboard players set #dialog Dialog -1