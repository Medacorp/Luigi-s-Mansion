scoreboard players add #dialog Dialog 1

tag @e[tag=same_room,tag=furniture,tag=incense] remove no_ai
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] remove freeze_animation
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"mario"}}},limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1..252 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:other/music/set/non_overwritten_silence
execute if score #dialog Dialog matches 1 run stopsound @a[tag=same_room] music
execute if score #dialog Dialog matches 1 run playsound luigis_mansion:music.marios_painting_repeat music @a[tag=same_room] ~ ~ ~ 1000
execute if score #dialog Dialog matches 1 run scoreboard players set @a[tag=same_room] Music 253
execute if score #dialog Dialog matches 253 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 253 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 253 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {saw_mario_again:1b}
execute if score #dialog Dialog matches 253 run scoreboard players set #dialog Dialog -1