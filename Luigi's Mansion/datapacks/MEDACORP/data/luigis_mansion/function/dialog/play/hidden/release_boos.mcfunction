scoreboard players add #dialog Dialog 1

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boo"}}},tag=same_room] remove no_ai
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boo"}}},tag=same_room] remove freeze_animation
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},tag=same_room,limit=1] remove no_ai
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},tag=same_room,limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1..139 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:other/music/set/non_overwritten_silence
execute if score #dialog Dialog matches 1 run stopsound @a[tag=same_room] music
execute if score #dialog Dialog matches 1 run scoreboard players set @a[tag=same_room] Music 420
execute if score #dialog Dialog matches 1 run playsound luigis_mansion:furniture.boo_hatch block @a[tag=same_room] 685 11 61 1
execute if score #dialog Dialog matches 1 run playsound luigis_mansion:music.boos_escape music @a[tag=same_room] ~ ~ ~ 1000
execute if score #dialog Dialog matches 1 run function luigis_mansion:room/hidden/storage_room/open_hatch
execute if score #dialog Dialog matches 140.. positioned 685 10 61 rotated 0 -90 run function luigis_mansion:dialog/play/hidden/release_boos_spawn
execute if score #dialog Dialog matches 140 as @a[tag=same_room] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 140 as @a[tag=same_room] positioned 685 10 61 run function luigis_mansion:entities/player/animation/set/scare/bash_no_move
execute if score #dialog Dialog matches 140..440 run scoreboard players set @a[tag=same_room,scores={AnimationProgress=30..}] AnimationProgress 29
execute if score #dialog Dialog matches 140 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.release_boos.1"}]}
execute if score #dialog Dialog matches 190 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.release_boos.2","with":[{"type":"selector","selector":"@p[tag=!spectator]"},{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 190 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.release_boos.2.more"}]}
execute if score #dialog Dialog matches 240 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.release_boos.3"}]}
execute if score #dialog Dialog matches 240 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.release_boos.3.more"}]}
execute if score #dialog Dialog matches 290 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.release_boos.4"}]}
execute if score #dialog Dialog matches 290 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.release_boos.4.more"}]}
execute if score #dialog Dialog matches 340 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.release_boos.5"}]}
execute if score #dialog Dialog matches 460 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 460 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/sigh
execute if score #dialog Dialog matches 480 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 480 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {released_boos:1b}
execute if score #dialog Dialog matches 480 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"released_boos_call"},progress:0}
execute if score #dialog Dialog matches 480 run scoreboard players set #dialog Dialog -1