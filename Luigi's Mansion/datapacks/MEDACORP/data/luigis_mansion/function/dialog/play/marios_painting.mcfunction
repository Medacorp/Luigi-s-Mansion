execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].observing_player
execute as @e[tag=luigi,tag=same_room] if score @s ID = #temp ID run tag @s add observing_player
scoreboard players reset #temp ID

scoreboard players add #dialog Dialog 1

tag @e[tag=same_room,tag=furniture,tag=incense] remove no_ai
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] remove freeze_animation
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"mario"}}},limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1..400 as @e[tag=luigi,tag=same_room,tag=!observing_player] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 1..350 as @e[tag=observing_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/crawl_in_lion_head
execute if score #dialog Dialog matches 351..479 as @e[tag=observing_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/reach_from_lion_head
execute if score #dialog Dialog matches 1 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=observing_player,limit=1] rotated ~ 0 positioned ^-2.5 ^ ^3 facing entity @e[tag=observing_player,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 1 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=observing_player,limit=1] rotated ~ 0 positioned ^2.5 ^ ^3 facing entity @e[tag=observing_player,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 2..70 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s facing entity @e[tag=observing_player,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 71 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=observing_player,limit=1] rotated ~ 0",teleport:"^ ^-0.3 ^3 ~-180 ~-10"}
execute if score #dialog Dialog matches 71..150 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^-0.01"}
execute if score #dialog Dialog matches 151 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=observing_player,limit=1] rotated ~ 0",teleport:"^2 ^ ^1 ~45 0"}
execute if score #dialog Dialog matches 151 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=observing_player,limit=1] rotated ~ 0",teleport:"^-2 ^ ^1 ~-45 0"}
execute if score #dialog Dialog matches 151..230 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~-1.125 ~"}
execute if score #dialog Dialog matches 151..230 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~1.125 ~"}
execute if score #dialog Dialog matches 231..240 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~-1.5 ~"}
execute if score #dialog Dialog matches 231..240 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~1.5 ~"}
execute if score #dialog Dialog matches 241..250 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 251..270 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^0.45 ~ ~"}
execute if score #dialog Dialog matches 271..350 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 351 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'mario'}}},limit=1] positioned ^ ^0.5 ^1 facing entity @e[tag=observing_player,limit=1] feet",teleport:"^-2.5 ^ ^2.5 ~ ~"}
execute if score #dialog Dialog matches 351 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'mario'}}},limit=1] positioned ^ ^0.5 ^1 facing entity @e[tag=observing_player,limit=1] feet",teleport:"^2.5 ^ ^2.5 ~ ~"}
execute if score #dialog Dialog matches 351..370 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~-10 ~ positioned ^ ^ ^0.35 facing entity @e[tag=observing_player,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 351..370 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~10 ~ positioned ^ ^ ^0.35 facing entity @e[tag=observing_player,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 371..380 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~-20 ~ positioned ^ ^ ^0.1 facing entity @e[tag=observing_player,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 371..380 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~20 ~ positioned ^ ^ ^0.1 facing entity @e[tag=observing_player,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 381..420 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~-40 ~ positioned ^ ^ ^0.075 facing entity @e[tag=observing_player,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 381..420 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~40 ~ positioned ^ ^ ^0.075 facing entity @e[tag=observing_player,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 421..480 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:other/music/set/marios_painting
execute if score #dialog Dialog matches 290 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mario",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.marios_painting.1"}]}
execute if score #dialog Dialog matches 420 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"nbt",source:"entity",entity:"@e[tag=observing_player,limit=1]",nbt:"data.player_name",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.marios_painting.2"}]}
execute if score #dialog Dialog matches 480 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 480 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 480 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 480 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {saw_mario:1b,saw_mario_again:1b}
execute if score #dialog Dialog matches 480 run scoreboard players set #dialog Dialog -1
tag @e[tag=observing_player,limit=1] remove observing_player