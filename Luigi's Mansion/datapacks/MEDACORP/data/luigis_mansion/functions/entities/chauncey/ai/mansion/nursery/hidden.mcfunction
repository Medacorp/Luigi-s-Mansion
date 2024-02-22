execute unless entity @s[scores={Dialog=1..50}] unless entity @s[scores={Dialog=171}] run scoreboard players set #freeze_timer Selected 1
scoreboard players add @s[scores={Dialog=171..}] Dialog 1
execute if entity @e[type=minecraft:armor_stand,tag=ball,tag=spit,distance=..0.7] run scoreboard players add @s[scores={Dialog=170}] Dialog 1
scoreboard players add @s[scores={Dialog=50..169}] Dialog 1
execute if entity @e[tag=rocking_horse,tag=exact_same_room,tag=was_in_vacuum,limit=1] run scoreboard players add @s[scores={Dialog=1..49}] Dialog 1
execute unless entity @e[tag=rocking_horse,tag=exact_same_room,tag=was_in_vacuum,limit=1] run scoreboard players remove @s[scores={Dialog=2..49}] Dialog 3
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
data modify entity @s[scores={Dialog=1}] data.animation set value {namespace:"luigis_mansion",id:"sleep"}
tag @s[scores={Dialog=1..51}] add visible
execute if entity @s[scores={Dialog=1..50}] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 run tag @s[distance=..8] remove visible
execute if entity @s[scores={Dialog=2}] if predicate luigis_mansion:50_50 run data modify entity @s[scores={Dialog=1}] data.animation set value {namespace:"luigis_mansion",id:"wake_up"}
data modify entity @s[scores={Dialog=10},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"wake_up"}}}] data.animation set value {namespace:"luigis_mansion",id:"scream_wake"}
execute if entity @s[scores={Dialog=10},tag=wake_up] run playsound luigis_mansion:entity.chauncey.cry_wake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=30},tag=wake_up] run playsound luigis_mansion:entity.chauncey.cry_wake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=10},tag=scream_wake] run playsound luigis_mansion:entity.chauncey.scream_wake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=30},tag=scream_wake] run playsound luigis_mansion:entity.chauncey.scream_wake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=51}] run tag @e[tag=exact_same_room,tag=furniture,tag=door] add blockade
execute if entity @s[scores={Dialog=51..168}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/idle
data modify entity @s ArmorItems[3].tag.luigis_mansion.scan_message set value {sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.chauncey.scan.2"}'}
data modify entity @s[scores={Dialog=51}] data.animation set value {namespace:"luigis_mansion",id:"yawn"}
execute if entity @s[scores={Dialog=51}] run teleport @s 748 21 -55
execute if entity @s[scores={Dialog=51..168}] as @a[tag=same_room,tag=!spectator,scores={MusicType=7}] run function luigis_mansion:other/music/set/lets_play
execute if entity @s[scores={Dialog=52..},tag=!attack,tag=!vanish] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=90}] run playsound luigis_mansion:entity.chauncey.yawn hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={Dialog=130}] data.animation set value {namespace:"luigis_mansion",id:"move"}
execute if entity @s[scores={Dialog=130}] if data storage luigis_mansion:data current_state.current_data.technical_data{chauncey_spoke:1b} run scoreboard players set @s Dialog 170
execute if entity @s[scores={Dialog=130}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.chauncey","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.chauncey.play"}]}
execute if entity @s[scores={Dialog=169}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=170}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {chauncey_spoke:1b}
execute if entity @s[scores={Dialog=170..}] as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/danger
execute if entity @s[scores={Dialog=170},tag=!attack,tag=!laugh,tag=!complain] run tag @e[tag=haunted_teddy_bear] add enabled
execute if entity @s[scores={Dialog=170}] unless entity @s[tag=!laugh,tag=!complain,tag=!attack] run tag @e[tag=haunted_teddy_bear] remove enabled
execute if entity @s[scores={Dialog=170},tag=!laugh,tag=!rambling,tag=!grab_rambler] run function luigis_mansion:old_entities/ghost/turn_visible_no_equipment
tag @s[scores={Dialog=170},tag=!attack,tag=!laugh,tag=!complain,tag=!rambling,tag=!grab_rambler] add move
execute if entity @s[scores={Dialog=170}] if entity @e[tag=haunted_teddy_bear,scores={WaitTime=60..79}] run data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"grab_rambler"}
execute if entity @s[scores={Dialog=170}] if entity @e[tag=haunted_teddy_bear,scores={WaitTime=80..}] run data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"ramble"}
execute if entity @s[scores={Dialog=170},tag=!attack,tag=!laugh,tag=!complain] unless entity @e[tag=haunted_teddy_bear,scores={WaitTime=60..}] positioned ^ ^ ^0.7 if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] run tag @s add attack
execute if entity @s[scores={Dialog=170..171}] run scoreboard players set @s TargetTask 0
execute if entity @s[scores={Dialog=170},tag=!attack,tag=!laugh,tag=!complain] unless entity @e[tag=haunted_teddy_bear,scores={WaitTime=60..}] run scoreboard players set @s TargetTask 1
execute if entity @s[scores={Dialog=171}] run tag @e[tag=haunted_teddy_bear] remove enabled
scoreboard players set @s[scores={Dialog=171}] ActionTime 0
tag @s[scores={Dialog=171}] remove attack
tag @s[scores={Dialog=171}] remove laugh
tag @s[scores={Dialog=171..}] remove complain
data modify entity @s[scores={Dialog=171}] data.animation set value {namespace:"luigis_mansion",id:"knocked_back"}
execute if entity @s[scores={Dialog=171}] run playsound luigis_mansion:entity.chauncey.hit_by_ball hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=171..174}] if block ^ ^ ^-0.5 #luigis_mansion:ghosts_ignore if block ^ ^1 ^-0.5 #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^-0.5
data modify entity @s[scores={Dialog=211}] data.animation set value {namespace:"luigis_mansion",id:"move"}
data modify entity @s[scores={Dialog=290}] data.animation set value {namespace:"luigis_mansion",id:"ramble"}
execute if entity @s[scores={Dialog=290..641}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/idle
execute if entity @s[scores={Dialog=290}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.chauncey","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.chauncey.1"}]}
execute if entity @s[scores={Dialog=290}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.chauncey","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.chauncey.1.more"}]}
data remove entity @s[scores={Dialog=338}] data.animation
execute if entity @s[scores={Dialog=338}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.chauncey","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.chauncey.2"}]}
execute if entity @s[scores={Dialog=338}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.chauncey","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.chauncey.2.more"}]}
execute if entity @s[scores={Dialog=426}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.chauncey","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.chauncey.3"}]}
execute if entity @s[scores={Dialog=426}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.chauncey","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.chauncey.3.more"}]}
tag @s[scores={Dialog=530..641}] add laugh
scoreboard players set @s[scores={Dialog=531..641}] ActionTime 1
execute if entity @s[scores={Dialog=530}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.chauncey","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.chauncey.4"}]}
execute if entity @s[scores={Dialog=562}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.chauncey","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.chauncey.5"}]}
tag @s[scores={Dialog=642}] remove laugh
tag @s[scores={Dialog=642}] add vanish
execute if entity @s[scores={Dialog=642}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
scoreboard players set @s[scores={Dialog=642}] ActionTime 0