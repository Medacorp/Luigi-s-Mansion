execute unless entity @s[scores={Dialog=1}] unless entity @s[scores={Dialog=171}] run scoreboard players set #freeze_timer Selected 1
teleport @s ~ ~ ~
scoreboard players add @s[scores={Dialog=171..}] Dialog 1
execute positioned ~ ~-1 ~ if entity @e[type=minecraft:armor_stand,tag=ball,tag=spit,distance=..0.7] run scoreboard players add @s[scores={Dialog=170}] Dialog 1
scoreboard players add @s[scores={Dialog=50..169}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1}] add sleep
scoreboard players set @s[scores={Dialog=1},tag=wake_up] AnimationProg 0
scoreboard players set @s[scores={Dialog=1},tag=scream_wake] AnimationProg 0
tag @s[scores={Dialog=1}] remove wake_up
tag @s[scores={Dialog=1}] remove scream_wake
execute if entity @s[scores={Dialog=1..50},tag=!visible] run function luigis_mansion:entities/chauncey/turn_visible
execute if entity @s[scores={Dialog=1..48}] at @e[tag=same_room,tag=!spectator] positioned ^ ^ ^8 if entity @s[distance=..8] run function luigis_mansion:entities/chauncey/turn_invisible
execute if entity @s[scores={Dialog=2}] if predicate luigis_mansion:50_50 run tag @s add wake_up
tag @s[scores={Dialog=2},tag=wake_up] remove sleep
scoreboard players set @s[scores={Dialog=2},tag=wake_up] AnimationProg 0
tag @s[scores={Dialog=10},tag=!wake_up] remove sleep
tag @s[scores={Dialog=10},tag=!wake_up] add scream_wake
scoreboard players set @s[scores={Dialog=10},tag=!wake_up] AnimationProg 0
execute if entity @s[scores={Dialog=10},tag=wake_up] run playsound luigis_mansion:entity.chauncey.cry_wake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=30},tag=wake_up] run playsound luigis_mansion:entity.chauncey.cry_wake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=10},tag=scream_wake] run playsound luigis_mansion:entity.chauncey.scream_wake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=30},tag=scream_wake] run playsound luigis_mansion:entity.chauncey.scream_wake hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=51}] AnimationProg 0
execute if entity @s[scores={Dialog=51}] run tag @e[scores={Room=10},tag=door,tag=frame] add blockade
execute if entity @s[scores={Dialog=51..169}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
tag @s[scores={Dialog=51}] remove wake_up
tag @s[scores={Dialog=51}] remove scream_wake
tag @s[scores={Dialog=51}] add yawn
execute if entity @s[scores={Dialog=51}] run teleport @s 748 21 70
execute if entity @s[scores={Dialog=51..168}] as @a[tag=same_room,tag=!spectator,scores={MusicType=7}] run function luigis_mansion:other/music/set/lets_play
execute if entity @s[scores={Dialog=52..},tag=!attack,tag=!vanish] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=90}] run playsound luigis_mansion:entity.chauncey.yawn hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=130}] remove yawn
tag @s[scores={Dialog=130}] add move
execute if entity @s[scores={Dialog=130}] if data storage luigis_mansion:data current_state.current_data.technical_data{chauncey_spoke:1b} run scoreboard players set @s Dialog 170
execute if entity @s[scores={Dialog=130}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.chauncey","color":"green"},{"translate":"luigis_mansion:message.chauncey.play"}]}
execute if entity @s[scores={Dialog=169}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=170}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {chauncey_spoke:1b}
execute if entity @s[scores={Dialog=170..}] as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/danger
execute if entity @s[scores={Dialog=170},tag=!attack,tag=!laugh,tag=!complain] run tag @e[tag=haunted_teddy_bear] add enabled
execute if entity @s[scores={Dialog=170}] unless entity @s[tag=!laugh,tag=!complain,tag=!attack] run scoreboard players set @e[tag=haunted_teddy_bear] WaitTime 0
execute if entity @s[scores={Dialog=170}] unless entity @s[tag=!laugh,tag=!complain,tag=!attack] run tag @e[tag=haunted_teddy_bear] remove enabled
execute if entity @s[scores={Dialog=170}] unless entity @s[tag=!laugh,tag=!complain,tag=!attack] run tag @s remove rambling
execute if entity @s[scores={Dialog=170},tag=!laugh,tag=!rambling,tag=!grab_rambler] run function luigis_mansion:entities/chauncey/drop_rambler
tag @s[scores={Dialog=170},tag=!attack,tag=!laugh,tag=!complain,tag=!rambling,tag=!grab_rambler] add move
execute if entity @s[scores={Dialog=170}] if entity @e[tag=haunted_teddy_bear,scores={WaitTime=60}] run scoreboard players set @s AnimationProg 0
execute if entity @s[scores={Dialog=170}] if entity @e[tag=haunted_teddy_bear,scores={WaitTime=60..79}] run tag @s remove move
execute if entity @s[scores={Dialog=170}] if entity @e[tag=haunted_teddy_bear,scores={WaitTime=60..79}] run tag @s add grab_rambler
execute if entity @s[scores={Dialog=170}] if entity @e[tag=haunted_teddy_bear,scores={WaitTime=80..}] run tag @s remove grab_rambler
execute if entity @s[scores={Dialog=170}] if entity @e[tag=haunted_teddy_bear,scores={WaitTime=80..}] run tag @s add rambling
execute if entity @s[scores={Dialog=170},tag=!attack,tag=!rambling,tag=!laugh,tag=!complain] positioned ^ ^ ^0.7 if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] run tag @s add attack
tag @s[scores={Dialog=170},tag=attack] remove move
tag @s[scores={Dialog=170},tag=complain] remove move
tag @s[scores={Dialog=170},tag=laugh] remove move
tag @s[scores={Dialog=170},tag=grab_rambler] remove move
tag @s[scores={Dialog=170},tag=attack] remove grab_rambler
tag @s[scores={Dialog=170},tag=attack] remove rambling
tag @s[scores={Dialog=170},tag=attack] remove move
execute at @s[scores={Dialog=170},tag=!attack,tag=!rambling,tag=!laugh,tag=!complain] run function luigis_mansion:entities/ghost/move
execute if entity @s[scores={Dialog=171}] run scoreboard players set @e[tag=haunted_teddy_bear,scores={WaitTime=..100}] WaitTime 0
execute if entity @s[scores={Dialog=171}] run tag @e[tag=haunted_teddy_bear] remove enabled
scoreboard players set @s[scores={Dialog=171}] AnimationProg 0
scoreboard players set @s[scores={Dialog=171}] ActionTime 0
tag @s[scores={Dialog=171}] remove attack
tag @s[scores={Dialog=171}] remove rambling
tag @s[scores={Dialog=171}] remove grab_rambler
tag @s[scores={Dialog=171}] remove laugh
tag @s[scores={Dialog=171..}] remove complain
tag @s[scores={Dialog=171}] remove move
tag @s[scores={Dialog=171}] add knocked_back
execute if entity @s[scores={Dialog=171}] run playsound luigis_mansion:entity.chauncey.hit_by_ball hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=171..174}] if block ^ ^ ^-0.5 #luigis_mansion:ghosts_ignore if block ^ ^1 ^-0.5 #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^-0.5
tag @s[scores={Dialog=211}] add move
tag @s[scores={Dialog=211}] remove knocked_back
execute if entity @s[scores={Dialog=211}] run function luigis_mansion:entities/chauncey/drop_rambler
tag @s[scores={Dialog=290}] remove move
tag @s[scores={Dialog=290}] add rambling
execute if entity @s[scores={Dialog=290..641}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=290}] run function luigis_mansion:entities/chauncey/grab_rambler
execute if entity @s[scores={Dialog=290}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.chauncey","color":"green"},{"translate":"luigis_mansion:dialog.chauncey.1"}]}
execute if entity @s[scores={Dialog=290}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.chauncey","color":"green"},{"translate":"luigis_mansion:dialog.chauncey.1.more"}]}
tag @s[scores={Dialog=338}] remove rambling
execute if entity @s[scores={Dialog=338}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.chauncey","color":"green"},{"translate":"luigis_mansion:dialog.chauncey.2"}]}
execute if entity @s[scores={Dialog=338}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.chauncey","color":"green"},{"translate":"luigis_mansion:dialog.chauncey.2.more"}]}
execute if entity @s[scores={Dialog=426}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.chauncey","color":"green"},{"translate":"luigis_mansion:dialog.chauncey.3"}]}
tag @s[scores={Dialog=530..641}] add laugh
execute if entity @s[scores={Dialog=530}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.chauncey","color":"green"},{"translate":"luigis_mansion:dialog.chauncey.4"}]}
execute if entity @s[scores={Dialog=562}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.chauncey","color":"green"},{"translate":"luigis_mansion:dialog.chauncey.5"}]}
tag @s[scores={Dialog=642}] remove laugh
tag @s[scores={Dialog=642}] add vanish
execute if entity @s[scores={Dialog=642}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
scoreboard players set @s[scores={Dialog=642}] AnimationProg 0
scoreboard players set @s[scores={Dialog=642}] ActionTime 0

execute at @s run teleport @s ~ ~-1 ~