scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run stopsound @a music
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a MusicType -1
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a Music 420
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:music.boos_escape music @a ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1}] run function luigis_mansion:room/hidden/storage_room/open_hatch
execute if entity @s[scores={Dialog=140..}] positioned 677 101 33 rotated 0 0 run function luigis_mansion:dialog/release_boos/boos
execute if entity @s[scores={Dialog=140}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.boo","color":"green"},{"translate":"luigis_mansion:dialog.release_boos.1"}]}
execute if entity @s[scores={Dialog=190}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.boo","color":"green"},{"translate":"luigis_mansion:dialog.release_boos.2","with":[{"selector":"@p[gamemode=!spectator]"},{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=190}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.boo","color":"green"},{"translate":"luigis_mansion:dialog.release_boos.2.more"}]}
execute if entity @s[scores={Dialog=240}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.boo","color":"green"},{"translate":"luigis_mansion:dialog.release_boos.3"}]}
execute if entity @s[scores={Dialog=240}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.boo","color":"green"},{"translate":"luigis_mansion:dialog.release_boos.3.more"}]}
execute if entity @s[scores={Dialog=290}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.boo","color":"green"},{"translate":"luigis_mansion:dialog.release_boos.4"}]}
execute if entity @s[scores={Dialog=290}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.boo","color":"green"},{"translate":"luigis_mansion:dialog.release_boos.4.more"}]}
execute if entity @s[scores={Dialog=340}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.boo","color":"green"},{"translate":"luigis_mansion:dialog.release_boos.5"}]}
tag @s[scores={Dialog=460}] remove release_boos
teleport @s[x=681.5,y=102,z=53.5,distance=..1.5] ~-1.5 ~ ~
execute if entity @s[scores={Dialog=460}] as @a run function luigis_mansion:other/music/set/silence
execute if entity @s[scores={Dialog=460}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {released_boos:1b}
execute if entity @s[scores={Dialog=460}] run scoreboard players set @a GBHCall 4
scoreboard players reset @s[scores={Dialog=460}] Dialog