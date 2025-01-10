execute unless entity @e[tag=ghost,tag=same_room,limit=1] run tag @e[tag=same_room] add abort_dialog_tick
execute unless entity @e[tag=ghost,tag=same_room,limit=1] run return 0
scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 1.. as @a[tag=same_room] run function luigis_mansion:other/music/set/chauncey_battle
execute if score #dialog Dialog matches 1..139 as @e[tag=luigi,tag=same_room,limit=1] run function luigis_mansion:entities/luigi/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 120 at @e[tag=ghost,tag=same_room,limit=1] run playsound luigis_mansion:entity.chauncey.cutscene_scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if score #dialog Dialog matches 120 at @e[tag=ghost,tag=same_room,limit=1] positioned ^-3.5 ^11 ^-2.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 120 at @e[tag=ghost,tag=same_room,limit=1] positioned ^-3.5 ^11 ^-8.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 120 at @e[tag=ghost,tag=same_room,limit=1] positioned ^-3.5 ^11 ^-14.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 120 at @e[tag=ghost,tag=same_room,limit=1] positioned ^3.5 ^11 ^-2.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 120 at @e[tag=ghost,tag=same_room,limit=1] positioned ^3.5 ^11 ^-8.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 120 at @e[tag=ghost,tag=same_room,limit=1] positioned ^3.5 ^11 ^-14.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 120 at @e[tag=ghost,tag=same_room,limit=1] positioned ^-3.5 ^9 ^-21.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 120 at @e[tag=ghost,tag=same_room,limit=1] positioned ^ ^14 ^-21.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 120 at @e[tag=ghost,tag=same_room,limit=1] positioned ^3.5 ^9 ^-21.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 120 at @e[tag=ghost,tag=same_room,limit=1] positioned ^-5.5 ^14 ^-23.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 120 at @e[tag=ghost,tag=same_room,limit=1] positioned ^5.5 ^14 ^-23.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 120 at @e[tag=ghost,tag=same_room,limit=1] positioned ^-3.5 ^9 ^-29.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 120 at @e[tag=ghost,tag=same_room,limit=1] positioned ^1.5 ^9 ^-29.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 120 at @e[tag=ghost,tag=same_room,limit=1] positioned ^-3.5 ^12 ^-34.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 120 at @e[tag=ghost,tag=same_room,limit=1] positioned ^1.5 ^12 ^-34.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 120 at @e[tag=ghost,tag=same_room,limit=1] positioned ^-1.5 ^10 ^-30.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 120 at @e[tag=ghost,tag=same_room,limit=1] positioned ^3.5 ^10 ^-30.5 run function luigis_mansion:dialog/play/chauncey_rocking_horse
execute if score #dialog Dialog matches 139 as @e[tag=luigi,tag=same_room,limit=1] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 140 as @e[tag=luigi,tag=same_room,limit=1] run function luigis_mansion:entities/luigi/animation/set/scare/bash_no_move
execute if score #dialog Dialog matches 140..629 run scoreboard players set @e[tag=luigi,tag=same_room,scores={AnimationProgress=30..}] AnimationProgress 29
execute if score #dialog Dialog matches 330 run tag @e[tag=ghost,tag=same_room,limit=1] add visible
execute if score #dialog Dialog matches 330..420 as @e[tag=ghost,tag=same_room,limit=1] at @s run teleport @s ~ ~0.1 ~
execute if score #dialog Dialog matches 400 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/move/teleport {teleport:"805.0 18 -48.0 135 0"}
execute if score #dialog Dialog matches 400 run tag @e[tag=rocking_horse,tag=same_room,limit=1] add remove_from_existence
execute if score #dialog Dialog matches 400 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"look_down"}
execute if score #dialog Dialog matches 440 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"scream"}
execute if score #dialog Dialog matches 520 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"grab_rambler"}
execute if score #dialog Dialog matches 440 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"ramble"}
execute if score #dialog Dialog matches 480 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"wink"}
execute if score #dialog Dialog matches 490 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"ramble"}
execute if score #dialog Dialog matches 650 run data modify entity @e[tag=ghost,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"fake_punch"}
execute if score #dialog Dialog matches 650 at @e[tag=ghost,tag=same_room,limit=1] run playsound luigis_mansion:entity.ghost.punch hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 650 at @e[tag=ghost,tag=same_room,limit=1] run playsound luigis_mansion:entity.chauncey.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 670 run data remove entity @e[tag=ghost,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 650..669 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 670 run tag @e[tag=ghost,tag=same_room,limit=1] remove no_ai
execute if score #dialog Dialog matches 670 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 670 run scoreboard players set #dialog Dialog -1