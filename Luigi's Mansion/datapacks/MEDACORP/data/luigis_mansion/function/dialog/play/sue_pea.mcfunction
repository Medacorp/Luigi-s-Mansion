scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..359 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 360

tag @a[tag=same_room] add prevent_item_lock
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"sue_pea"}}},tag=same_room,limit=1] remove freeze_animation
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"sue_pea"}}},tag=same_room,limit=1] add visible
execute if score #dialog Dialog matches 1.. as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 1 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/non_overwritten_silence
execute if score #dialog Dialog matches 120 run scoreboard players set @a[tag=same_room,tag=!spectator] Music 242
execute if score #dialog Dialog matches 120 run playsound luigis_mansion:music.sue_pea music @a[tag=same_room] ~ ~ ~ 1000
execute if score #dialog Dialog matches 200 run playsound luigis_mansion:entity.sue_pea.go_away hostile @a[tag=same_room] ~ ~ ~ 1000
execute if score #dialog Dialog matches 200 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sue_pea","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sue_pea.1"}]}
execute if score #dialog Dialog matches 270 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sue_pea","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sue_pea.2"}]}
execute if score #dialog Dialog matches 270 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {sue_pea_spoke:1b}
execute if score #dialog Dialog matches 360 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 360 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 360 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 360 run scoreboard players set #dialog Dialog -1