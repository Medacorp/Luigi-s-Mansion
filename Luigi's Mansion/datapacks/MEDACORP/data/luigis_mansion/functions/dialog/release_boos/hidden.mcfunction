scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..139}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if entity @s[scores={Dialog=1}] as @a[tag=same_room] run function luigis_mansion:other/music/set/non_overwritten_silence
execute if entity @s[scores={Dialog=1}] run stopsound @a[tag=same_room] music
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room] Music 420
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:furniture.boo_hatch block @a[tag=same_room] 685 11 61 1
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:music.boos_escape music @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1}] run function luigis_mansion:room/hidden/storage_room/open_hatch
execute if entity @s[scores={Dialog=140..}] positioned 685 10 61 rotated 0 -90 run function luigis_mansion:dialog/release_boos/boos
execute if entity @s[scores={Dialog=140}] as @a[tag=same_room] positioned 685 10 61 run function luigis_mansion:entities/player/animation/set/scare/bash_no_move
execute if entity @s[scores={Dialog=140..440}] run scoreboard players set @a[tag=same_room,scores={IdleTime=-21..}] IdleTime -22
execute if entity @s[scores={Dialog=140}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.release_boos.1"}]}
execute if entity @s[scores={Dialog=190}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.release_boos.2","with":[{"type":"selector","selector":"@p[gamemode=!spectator]"},{"type":"selector","selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=190}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.release_boos.2.more"}]}
execute if entity @s[scores={Dialog=240}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.release_boos.3"}]}
execute if entity @s[scores={Dialog=240}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.release_boos.3.more"}]}
execute if entity @s[scores={Dialog=290}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.release_boos.4"}]}
execute if entity @s[scores={Dialog=290}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.release_boos.4.more"}]}
execute if entity @s[scores={Dialog=340}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.release_boos.5"}]}
execute if entity @s[scores={Dialog=460}] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if entity @s[scores={Dialog=460}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/sigh
execute if entity @s[scores={Dialog=480}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=480}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {released_boos:1b}
tag @s[scores={Dialog=480}] remove release_boos
execute if entity @s[scores={Dialog=480}] run scoreboard players set @a GBHCall 4
scoreboard players set @s[scores={Dialog=480}] Dialog 0