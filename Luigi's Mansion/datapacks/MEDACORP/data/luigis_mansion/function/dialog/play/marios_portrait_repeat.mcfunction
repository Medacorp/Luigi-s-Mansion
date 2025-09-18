execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].observing_player
execute as @e[tag=luigi,tag=same_room] if score @s ID = #temp ID run tag @s add observing_player
scoreboard players reset #temp ID

scoreboard players add #dialog Dialog 1

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"mario"}}},limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1..160 as @e[tag=luigi,tag=same_room,tag=!observing_player] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 1..160 as @e[tag=observing_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/crawl_in_lion_head
execute if score #dialog Dialog matches 80 run data modify entity @e[tag=observing_player,limit=1] data.initial_animation_progress set value 125
execute if score #dialog Dialog matches 161..252 as @e[tag=observing_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/reach_from_lion_head

execute if score #dialog Dialog matches 1 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=observing_player,limit=1] rotated ~ 0 positioned ^-2.5 ^ ^3 facing entity @e[tag=observing_player,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 1 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=observing_player,limit=1] rotated ~ 0 positioned ^2.5 ^ ^3 facing entity @e[tag=observing_player,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 2..100 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s facing entity @e[tag=observing_player,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 101..180 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'mario'}}},limit=1] facing entity @e[tag=observing_player,limit=1] feet",teleport:"^ ^0.25 ^2.5 ~-180 0"}
execute if score #dialog Dialog matches 181 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=observing_player,limit=1] facing entity @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'mario'}}},limit=1] feet rotated ~20 0",teleport:"^ ^-0.3 ^2.5 ~-180 -10"}
execute if score #dialog Dialog matches 181 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=observing_player,limit=1] facing entity @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'mario'}}},limit=1] feet rotated ~-20 0",teleport:"^ ^-0.3 ^2.5 ~-180 -10"}
execute if score #dialog Dialog matches 181..220 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^0.01 ~ ~"}
execute if score #dialog Dialog matches 221..253 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~ ~"}

execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:other/music/set/marios_portrait_short
execute if score #dialog Dialog matches 253 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 253 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 253 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 253 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {saw_mario_again:1b}
execute if score #dialog Dialog matches 253 run scoreboard players set #dialog Dialog -1
tag @e[tag=observing_player,limit=1] remove observing_player