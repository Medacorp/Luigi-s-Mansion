teleport @s ~ ~ ~
execute if entity @s[tag=reset_to_base] run function luigis_mansion:entities/chauncey/drop_rambler
execute if entity @s[tag=reset_to_base] run tag @e[tag=haunted_teddy_bear] remove enabled
scoreboard players set @s[tag=reset_to_base] Dialog 1
scoreboard players add @s[scores={Dialog=171..}] Dialog 1
execute positioned ~ ~-1 ~ if entity @e[type=minecraft:armor_stand,tag=ball,tag=spit,distance=..0.7] run scoreboard players add @s[scores={Dialog=170}] Dialog 1
scoreboard players add @s[scores={Dialog=50..169}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1}] add sleep
tag @s[scores={Dialog=1}] remove wake_up
execute if entity @s[scores={Dialog=1..50}] run function luigis_mansion:entities/chauncey/turn_visible
execute if entity @s[scores={Dialog=1..48}] at @a[tag=same_room] positioned ^ ^ ^8 if entity @s[distance=..8] run function luigis_mansion:entities/chauncey/turn_invisible
tag @s[scores={Dialog=2}] remove sleep
tag @s[scores={Dialog=2}] add wake_up
scoreboard players set @s[scores={Dialog=2}] AnimationProg 0
execute if entity @s[scores={Dialog=10}] run playsound luigis_mansion:entity.chauncey.cry hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=30}] run playsound luigis_mansion:entity.chauncey.cry hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=51}] AnimationProg 0
execute if entity @s[scores={Dialog=51}] run function luigis_mansion:room/normal/nursery/add_blockade
tag @s[scores={Dialog=51}] remove wake_up
tag @s[scores={Dialog=51}] add yawn
execute if entity @s[scores={Dialog=51}] run teleport @s 748 21 70
execute if entity @s[scores={Dialog=51..169}] run scoreboard players set @a[tag=same_room,scores={MusicType=7}] Music 0
execute if entity @s[scores={Dialog=51..169}] run scoreboard players set @a[tag=same_room,scores={MusicType=7}] MusicType 26
execute if entity @s[scores={Dialog=52..},tag=!attack,tag=!vanish] facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=90}] run playsound luigis_mansion:entity.chauncey.yawn hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=130}] remove yawn
tag @s[scores={Dialog=130}] add move
execute if entity @s[scores={Dialog=130}] if data storage luigis_mansion:data current_state.current_data.technical_data{chauncey_spoke:1b} run scoreboard players set @s Dialog 170
execute if entity @s[scores={Dialog=130}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.chauncey","color":"green"},{"translate":"luigis_mansion:message.chauncey.play"}]}
execute if entity @s[scores={Dialog=170}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {chauncey_spoke:1b}
execute if entity @s[scores={Dialog=170..}] as @a[tag=same_room] unless entity @s[scores={MusicType=36}] run function luigis_mansion:other/music/set/danger
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
execute if entity @s[scores={Dialog=170},tag=!attack,tag=!rambling,tag=!laugh,tag=!complain] positioned ^ ^ ^0.7 if entity @a[gamemode=!spectator,distance=..0.7,limit=1] run tag @s add attack
tag @s[scores={Dialog=170},tag=attack] remove move
tag @s[scores={Dialog=170},tag=complain] remove move
tag @s[scores={Dialog=170},tag=laugh] remove move
tag @s[scores={Dialog=170},tag=grab_rambler] remove move
tag @s[scores={Dialog=170},tag=attack] remove grab_rambler
tag @s[scores={Dialog=170},tag=attack] remove rambling
tag @s[scores={Dialog=170},tag=attack] remove move
execute at @s[scores={Dialog=170},tag=!attack,tag=!rambling,tag=!laugh,tag=!complain] run function luigis_mansion:entities/ghost/move
execute if entity @s[scores={Dialog=171}] run tag @e[tag=haunted_teddy_bear] remove enabled
scoreboard players set @s[scores={Dialog=171}] AnimationProg 0
scoreboard players set @s[scores={Dialog=171}] ActionTime 0
tag @s[scores={Dialog=171}] remove attack
tag @s[scores={Dialog=171}] remove rambling
tag @s[scores={Dialog=171}] remove grab_rambler
tag @s[scores={Dialog=171}] remove laugh
tag @s[scores={Dialog=171}] remove complain
tag @s[scores={Dialog=171}] remove move
tag @s[scores={Dialog=171}] add knocked_back
execute if entity @s[scores={Dialog=171..174}] if block ^ ^ ^-0.5 #luigis_mansion:ghosts_ignore if block ^ ^1 ^-0.5 #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^-0.5
tag @s[scores={Dialog=211}] add move
tag @s[scores={Dialog=211}] remove knocked_back
execute if entity @s[scores={Dialog=211}] run function luigis_mansion:entities/chauncey/drop_rambler
tag @s[scores={Dialog=290}] remove move
tag @s[scores={Dialog=290}] add rambling
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
scoreboard players set @s[scores={Dialog=642}] AnimationProg 0
scoreboard players set @s[scores={Dialog=642}] ActionTime 0
execute if entity @s[scores={Dialog=682}] as @a run function luigis_mansion:entities/chauncey/to_arena/normal

execute at @s run teleport @s ~ ~-1 ~