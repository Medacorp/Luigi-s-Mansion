scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..359 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 360

tag @a[tag=same_room] add prevent_item_lock
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"sue_pea"}}},tag=same_room,limit=1] remove freeze_animation
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"sue_pea"}}},tag=same_room,limit=1] add visible
execute if score #dialog Dialog matches 1.. as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 1 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/non_overwritten_silence
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 2 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^2 ^1 ~-80 0"}
execute if score #dialog Dialog matches 2 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^2 ^1 ~80 0"}
execute if score #dialog Dialog matches 2..100 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated as @e[tag=luigi,tag=same_room,limit=1] positioned ^0.03 ^ ^ rotated as @s",teleport:"~ ~ ~ ~1.2 0"}
execute if score #dialog Dialog matches 2..100 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated as @e[tag=luigi,tag=same_room,limit=1] positioned ^-0.03 ^ ^ rotated as @s",teleport:"~ ~ ~ ~-1.2 0"}
execute if score #dialog Dialog matches 101..120 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~-1.2 ~-0.45"}
execute if score #dialog Dialog matches 101..120 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~1.2 ~-0.45"}
execute if score #dialog Dialog matches 121..140 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 160..200 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^0.2 ~ ~"}
execute if score #dialog Dialog matches 201..369 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 210..211 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.1 ~"}
execute if score #dialog Dialog matches 212..213 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.1 ~"}
execute if score #dialog Dialog matches 214..215 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.1 ~"}
execute if score #dialog Dialog matches 216..217 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.1 ~"}
execute if score #dialog Dialog matches 220..221 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.1 ~"}
execute if score #dialog Dialog matches 222..223 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.1 ~"}
execute if score #dialog Dialog matches 224..225 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.1 ~"}
execute if score #dialog Dialog matches 226..227 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.1 ~"}
execute if score #dialog Dialog matches 280..281 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.1 ~"}
execute if score #dialog Dialog matches 282..283 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.1 ~"}
execute if score #dialog Dialog matches 284..285 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.1 ~"}
execute if score #dialog Dialog matches 286..287 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.1 ~"}
execute if score #dialog Dialog matches 290..291 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.1 ~"}
execute if score #dialog Dialog matches 292..293 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.1 ~"}
execute if score #dialog Dialog matches 294..295 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.1 ~"}
execute if score #dialog Dialog matches 296..297 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.1 ~"}
execute if score #dialog Dialog matches 300..301 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.1 ~"}
execute if score #dialog Dialog matches 302..303 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.1 ~"}
execute if score #dialog Dialog matches 304..305 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.1 ~"}
execute if score #dialog Dialog matches 306..307 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.1 ~"}
execute if score #dialog Dialog matches 310..311 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.1 ~"}
execute if score #dialog Dialog matches 312..313 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.1 ~"}
execute if score #dialog Dialog matches 314..315 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.1 ~"}
execute if score #dialog Dialog matches 316..317 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.1 ~"}
execute if score #dialog Dialog matches 340..341 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.1 ~"}
execute if score #dialog Dialog matches 342..343 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.1 ~"}
execute if score #dialog Dialog matches 344..345 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.1 ~"}
execute if score #dialog Dialog matches 346..347 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.1 ~"}
execute if score #dialog Dialog matches 370 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 120 as @a[tag=same_room] run function luigis_mansion:other/music/set/force/sue_pea
execute if score #dialog Dialog matches 210 run playsound luigis_mansion:entity.sue_pea.go_away hostile @a[tag=same_room] ~ ~ ~ 1000
execute if score #dialog Dialog matches 210 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.sue_pea",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.sue_pea.1"}]}
execute if score #dialog Dialog matches 280 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.sue_pea",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.sue_pea.2"}]}
execute if score #dialog Dialog matches 280 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {sue_pea_spoke:1b}
execute if score #dialog Dialog matches 370 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 370 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 370 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 370 run scoreboard players set #dialog Dialog -1