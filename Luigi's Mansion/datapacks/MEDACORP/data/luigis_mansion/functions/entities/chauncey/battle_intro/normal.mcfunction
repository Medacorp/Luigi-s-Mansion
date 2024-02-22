scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..139}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if entity @s[scores={Dialog=110}] run teleport @s ~ ~ ~ -90 0
execute if entity @s[scores={Dialog=120}] run playsound luigis_mansion:entity.chauncey.cutscene_scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=120}] run data modify storage luigis_mansion:data entity set value {tags:["intro","attack"],room:73}
execute if entity @s[scores={Dialog=120}] positioned ~-2.5 ~11 ~-3.5 run function luigis_mansion:spawn_entities/rocking_horse/small
execute if entity @s[scores={Dialog=120}] run data modify storage luigis_mansion:data entity set value {tags:["intro","attack"],room:73}
execute if entity @s[scores={Dialog=120}] positioned ~-8.5 ~11 ~-3.5 run function luigis_mansion:spawn_entities/rocking_horse/small
execute if entity @s[scores={Dialog=120}] run data modify storage luigis_mansion:data entity set value {tags:["intro","attack"],room:73}
execute if entity @s[scores={Dialog=120}] positioned ~-14.5 ~11 ~-3.5 run function luigis_mansion:spawn_entities/rocking_horse/small
execute if entity @s[scores={Dialog=120}] run data modify storage luigis_mansion:data entity set value {tags:["intro","attack"],room:73}
execute if entity @s[scores={Dialog=120}] positioned ~-2.5 ~11 ~3.5 run function luigis_mansion:spawn_entities/rocking_horse/small
execute if entity @s[scores={Dialog=120}] run data modify storage luigis_mansion:data entity set value {tags:["intro","attack"],room:73}
execute if entity @s[scores={Dialog=120}] positioned ~-8.5 ~11 ~3.5 run function luigis_mansion:spawn_entities/rocking_horse/small
execute if entity @s[scores={Dialog=120}] run data modify storage luigis_mansion:data entity set value {tags:["intro","attack"],room:73}
execute if entity @s[scores={Dialog=120}] positioned ~-14.5 ~11 ~3.5 run function luigis_mansion:spawn_entities/rocking_horse/small
execute if entity @s[scores={Dialog=120}] run data modify storage luigis_mansion:data entity set value {tags:["intro","attack"],room:73}
execute if entity @s[scores={Dialog=120}] positioned ~-21.5 ~9 ~-3.5 run function luigis_mansion:spawn_entities/rocking_horse/small
execute if entity @s[scores={Dialog=120}] run data modify storage luigis_mansion:data entity set value {tags:["intro","attack"],room:73}
execute if entity @s[scores={Dialog=120}] positioned ~-21.5 ~14 ~ run function luigis_mansion:spawn_entities/rocking_horse/small
execute if entity @s[scores={Dialog=120}] run data modify storage luigis_mansion:data entity set value {tags:["intro","attack"],room:73}
execute if entity @s[scores={Dialog=120}] positioned ~-21.5 ~9 ~3.5 run function luigis_mansion:spawn_entities/rocking_horse/small
execute if entity @s[scores={Dialog=120}] run data modify storage luigis_mansion:data entity set value {tags:["intro","attack"],room:73}
execute if entity @s[scores={Dialog=120}] positioned ~-23.5 ~14 ~-5.5 run function luigis_mansion:spawn_entities/rocking_horse/small
execute if entity @s[scores={Dialog=120}] run data modify storage luigis_mansion:data entity set value {tags:["intro","attack"],room:73}
execute if entity @s[scores={Dialog=120}] positioned ~-23.5 ~14 ~5.5 run function luigis_mansion:spawn_entities/rocking_horse/small
execute if entity @s[scores={Dialog=120}] run data modify storage luigis_mansion:data entity set value {tags:["intro","attack"],room:73}
execute if entity @s[scores={Dialog=120}] positioned ~-29.5 ~9 ~-3.5 run function luigis_mansion:spawn_entities/rocking_horse/small
execute if entity @s[scores={Dialog=120}] run data modify storage luigis_mansion:data entity set value {tags:["intro","attack"],room:73}
execute if entity @s[scores={Dialog=120}] positioned ~-29.5 ~9 ~1.5 run function luigis_mansion:spawn_entities/rocking_horse/small
execute if entity @s[scores={Dialog=120}] run data modify storage luigis_mansion:data entity set value {tags:["intro","attack"],room:73}
execute if entity @s[scores={Dialog=120}] positioned ~-34.5 ~12 ~-3.5 run function luigis_mansion:spawn_entities/rocking_horse/small
execute if entity @s[scores={Dialog=120}] run data modify storage luigis_mansion:data entity set value {tags:["intro","attack"],room:73}
execute if entity @s[scores={Dialog=120}] positioned ~-34.5 ~12 ~1.5 run function luigis_mansion:spawn_entities/rocking_horse/small
execute if entity @s[scores={Dialog=120}] run data modify storage luigis_mansion:data entity set value {tags:["intro","attack"],room:73}
execute if entity @s[scores={Dialog=120}] positioned ~-30.5 ~10 ~-1.5 run function luigis_mansion:spawn_entities/rocking_horse/small
execute if entity @s[scores={Dialog=120}] run data modify storage luigis_mansion:data entity set value {tags:["intro","attack"],room:73}
execute if entity @s[scores={Dialog=120}] positioned ~-30.5 ~10 ~3.5 run function luigis_mansion:spawn_entities/rocking_horse/small
execute if entity @s[scores={Dialog=140}] as @a[tag=same_room] run function luigis_mansion:entities/player/animation/set/scare/bash_no_move
execute if entity @s[scores={Dialog=140..629}] run scoreboard players set @a[tag=same_room,scores={IdleTime=-21}] IdleTime -22
tag @s[scores={Dialog=330}] add visible
tag @s[scores={Dialog=330}] add big
execute if entity @s[scores={Dialog=330..420}] run teleport @s ~ ~0.1 ~
data modify entity @s[scores={Dialog=400}] data.animation set value {namespace:"luigis_mansion",id:"look_down"}
data modify entity @s[scores={Dialog=440}] data.animation set value {namespace:"luigis_mansion",id:"scream"}
execute if entity @s[scores={Dialog=440}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=460}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=480}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=500}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
data modify entity @s[scores={Dialog=520}] data.animation set value {namespace:"luigis_mansion",id:"grab_rambler"}
data modify entity @s[scores={Dialog=540}] data.animation set value {namespace:"luigis_mansion",id:"ramble"}
data modify entity @s[scores={Dialog=580}] data.animation set value {namespace:"luigis_mansion",id:"wink"}
data modify entity @s[scores={Dialog=590}] data.animation set value {namespace:"luigis_mansion",id:"ramble"}
tag @s[scores={Dialog=630}] add fake_attack
execute if entity @s[scores={Dialog=650..669}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/idle
tag @s[scores={Dialog=670}] add intro_done
execute if entity @s[scores={Dialog=670}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
scoreboard players set @s[scores={Dialog=670}] Dialog 0