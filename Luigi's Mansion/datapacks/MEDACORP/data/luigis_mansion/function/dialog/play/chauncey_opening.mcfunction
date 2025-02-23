execute unless entity @e[tag=ghost,tag=same_room,limit=1] run tag @e[tag=same_room] add abort_dialog_tick
execute unless entity @e[tag=ghost,tag=same_room,limit=1] run return 0
scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 1..20 as @a[tag=same_room] run function luigis_mansion:other/music/set/non_overwritten_silence
execute if score #dialog Dialog matches 21 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 21.. as @a[tag=same_room] run function luigis_mansion:other/music/set/chauncey_battle
execute if score #dialog Dialog matches 1..139 as @e[tag=luigi,tag=same_room,limit=1] run function luigis_mansion:entities/luigi/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 1 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=ghost,tag=same_room,limit=1] rotated ~ 0",teleport:"^ ^6.75 ^11 ~ -45"}
execute if score #dialog Dialog matches 1..20 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^ ^-0.0125 ^-0.0125 rotated as @s",teleport:"^ ^ ^ ~ ~2.25"}
execute if score #dialog Dialog matches 21..40 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^ ^ ^-0.2 rotated as @s",teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 41..60 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^ ^-0.025 ^-0.2 rotated as @s",teleport:"^ ^ ^ ~ ~-1"}
execute if score #dialog Dialog matches 61..90 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^ ^0.025 ^0.2 rotated as @s",teleport:"^ ^ ^ ~ ~0.5"}
execute if score #dialog Dialog matches 91..120 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 121 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=ghost,tag=same_room,limit=1] rotated ~ 0",teleport:"^ ^12 ^6 ~ 45"}
execute if score #dialog Dialog matches 121..140 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^ ^-0.1 ^0.04 rotated as @s",teleport:"^ ^ ^ ~ ~-0.9"}
execute if score #dialog Dialog matches 141..170 unless score #mirrored Selected matches 1 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.02 ^-0.1 ^0.04 rotated as @s",teleport:"^ ^ ^ ~0.33 ~-0.9"}
execute if score #dialog Dialog matches 171..180 unless score #mirrored Selected matches 1 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.06 ^-0.05 ^ rotated as @s",teleport:"^ ^ ^ ~-1.333 ~"}
execute if score #dialog Dialog matches 181..310 unless score #mirrored Selected matches 1 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.06 ^ ^ rotated as @s",teleport:"^ ^ ^ ~-1.333 ~"}
execute if score #dialog Dialog matches 311..320 unless score #mirrored Selected matches 1 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.06 ^ ^ rotated as @s",teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 141..170 if score #mirrored Selected matches 1 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.02 ^-0.1 ^0.04 rotated as @s",teleport:"^ ^ ^ ~-0.33 ~-0.9"}
execute if score #dialog Dialog matches 171..180 if score #mirrored Selected matches 1 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.06 ^-0.05 ^ rotated as @s",teleport:"^ ^ ^ ~1.333 ~"}
execute if score #dialog Dialog matches 181..310 if score #mirrored Selected matches 1 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.06 ^ ^ rotated as @s",teleport:"^ ^ ^ ~1.333 ~"}
execute if score #dialog Dialog matches 311..320 if score #mirrored Selected matches 1 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.06 ^ ^ rotated as @s",teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 331..380 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^ ^ ^0.1 rotated as @s",teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 381..390 unless score #mirrored Selected matches 1 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^ ^ ^0.1 rotated as @s",teleport:"^ ^ ^ ~-0.33 ~"}
execute if score #dialog Dialog matches 391..440 unless score #mirrored Selected matches 1 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.01528 ^0.06 ^0.06 rotated as @s",teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 381..390 if score #mirrored Selected matches 1 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^ ^ ^0.1 rotated as @s",teleport:"^ ^ ^ ~0.33 ~"}
execute if score #dialog Dialog matches 391..440 if score #mirrored Selected matches 1 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.01528 ^0.06 ^0.06 rotated as @s",teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 441..470 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^ ^ ^-0.11 rotated as @s",teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 471..480 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^ ^-0.1 ^-0.11 rotated as @s",teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 481..490 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^ ^-0.1 ^ rotated as @s",teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 491..689 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 160 at @e[tag=ghost,tag=same_room,limit=1] run playsound luigis_mansion:entity.chauncey.cutscene_scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if score #dialog Dialog matches 160 at @e[tag=ghost,tag=same_room,limit=1] positioned ^3.5 ^11 ^-2.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 at @e[tag=ghost,tag=same_room,limit=1] positioned ^3.5 ^11 ^-8.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 at @e[tag=ghost,tag=same_room,limit=1] positioned ^3.5 ^11 ^-14.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 at @e[tag=ghost,tag=same_room,limit=1] positioned ^-3.5 ^11 ^-2.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 at @e[tag=ghost,tag=same_room,limit=1] positioned ^-3.5 ^11 ^-8.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 at @e[tag=ghost,tag=same_room,limit=1] positioned ^-3.5 ^11 ^-14.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 at @e[tag=ghost,tag=same_room,limit=1] positioned ^3.5 ^9 ^-21.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 at @e[tag=ghost,tag=same_room,limit=1] positioned ^ ^14 ^-21.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 at @e[tag=ghost,tag=same_room,limit=1] positioned ^-3.5 ^9 ^-21.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 at @e[tag=ghost,tag=same_room,limit=1] positioned ^5.5 ^14 ^-23.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 at @e[tag=ghost,tag=same_room,limit=1] positioned ^-5.5 ^14 ^-23.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 unless score #mirrored Selected matches 1 at @e[tag=ghost,tag=same_room,limit=1] positioned ^3.5 ^9 ^-29.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 unless score #mirrored Selected matches 1 at @e[tag=ghost,tag=same_room,limit=1] positioned ^-1.5 ^9 ^-29.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 unless score #mirrored Selected matches 1 at @e[tag=ghost,tag=same_room,limit=1] positioned ^3.5 ^12 ^-34.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 unless score #mirrored Selected matches 1 at @e[tag=ghost,tag=same_room,limit=1] positioned ^-1.5 ^12 ^-34.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 unless score #mirrored Selected matches 1 at @e[tag=ghost,tag=same_room,limit=1] positioned ^1.5 ^10 ^-30.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 unless score #mirrored Selected matches 1 at @e[tag=ghost,tag=same_room,limit=1] positioned ^-3.5 ^10 ^-30.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 if score #mirrored Selected matches 1 at @e[tag=ghost,tag=same_room,limit=1] positioned ^-3.5 ^9 ^-29.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 if score #mirrored Selected matches 1 at @e[tag=ghost,tag=same_room,limit=1] positioned ^1.5 ^9 ^-29.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 if score #mirrored Selected matches 1 at @e[tag=ghost,tag=same_room,limit=1] positioned ^-3.5 ^12 ^-34.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 if score #mirrored Selected matches 1 at @e[tag=ghost,tag=same_room,limit=1] positioned ^1.5 ^12 ^-34.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 if score #mirrored Selected matches 1 at @e[tag=ghost,tag=same_room,limit=1] positioned ^-1.5 ^10 ^-30.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 160 if score #mirrored Selected matches 1 at @e[tag=ghost,tag=same_room,limit=1] positioned ^3.5 ^10 ^-30.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 179 as @e[tag=luigi,tag=same_room,limit=1] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 180 as @e[tag=luigi,tag=same_room,limit=1] at @e[tag=ghost,tag=same_room,limit=1] run function luigis_mansion:entities/luigi/animation/set/scare/bash_no_move
execute if score #dialog Dialog matches 180..669 run scoreboard players set @e[tag=luigi,tag=same_room,scores={AnimationProgress=30..}] AnimationProgress 29
execute if score #dialog Dialog matches 340 run tag @e[tag=ghost,tag=same_room,limit=1] add visible
execute if score #dialog Dialog matches 341..440 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ^ ^0.1 ^
execute if score #dialog Dialog matches 441..470 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ^ ^ ^0.1
execute if score #dialog Dialog matches 471..480 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ^ ^-0.1 ^0.1
execute if score #dialog Dialog matches 481..490 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ^ ^-0.1 ^
execute if score #dialog Dialog matches 440 unless score #mirrored Selected matches 1 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/move/teleport {teleport:"^-2 ^ ^6 ~-45 0"}
execute if score #dialog Dialog matches 440 if score #mirrored Selected matches 1 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/move/teleport {teleport:"^2 ^ ^6 ~45 0"}
execute if score #dialog Dialog matches 420 run tag @e[tag=rocking_horse,tag=same_room,limit=1] add remove_from_existence
execute if score #dialog Dialog matches 420 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"look_down"}
execute if score #dialog Dialog matches 460 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"scream"}
execute if score #dialog Dialog matches 463 at @e[tag=ghost,tag=same_room,limit=1] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if score #dialog Dialog matches 483 at @e[tag=ghost,tag=same_room,limit=1] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if score #dialog Dialog matches 503 at @e[tag=ghost,tag=same_room,limit=1] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if score #dialog Dialog matches 523 at @e[tag=ghost,tag=same_room,limit=1] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if score #dialog Dialog matches 540 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"grab_rambler"}
execute if score #dialog Dialog matches 560 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"idle"}
execute if score #dialog Dialog matches 565 at @e[tag=ghost,tag=same_room,limit=1] run playsound luigis_mansion:entity.chauncey.quiet_rattle hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 585 at @e[tag=ghost,tag=same_room,limit=1] run playsound luigis_mansion:entity.chauncey.quiet_rattle hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 600 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"wink"}
execute if score #dialog Dialog matches 610 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"idle"}
execute if score #dialog Dialog matches 615 at @e[tag=ghost,tag=same_room,limit=1] run playsound luigis_mansion:entity.chauncey.quiet_rattle hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 635 at @e[tag=ghost,tag=same_room,limit=1] run playsound luigis_mansion:entity.chauncey.quiet_rattle hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 655 at @e[tag=ghost,tag=same_room,limit=1] run playsound luigis_mansion:entity.chauncey.quiet_rattle hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 670 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"fake_punch"}
execute if score #dialog Dialog matches 670 at @e[tag=ghost,tag=same_room,limit=1] run playsound luigis_mansion:entity.ghost.punch hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 670 at @e[tag=ghost,tag=same_room,limit=1] run playsound luigis_mansion:entity.chauncey.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 690 run data remove entity @e[tag=ghost,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 690 as @a[tag=same_room,limit=1] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 690 run tag @e[tag=ghost,tag=same_room,limit=1] remove no_ai
execute if score #dialog Dialog matches 690 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 690 run scoreboard players set #dialog Dialog -1