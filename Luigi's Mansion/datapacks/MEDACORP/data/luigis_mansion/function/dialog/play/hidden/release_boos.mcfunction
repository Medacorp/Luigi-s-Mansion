scoreboard players add #dialog Dialog 1

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boo"}}},tag=same_room] remove no_ai
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boo"}}},tag=same_room] remove freeze_animation
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},tag=same_room,limit=1] remove no_ai
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},tag=same_room,limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=same_room] at @s facing 685 11 61 rotated ~ 0 run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 2..98 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"685 11 66.0 0 0"}
execute if score #dialog Dialog matches 1..40 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"685 11 ~-0.0125 0 0"}
execute if score #dialog Dialog matches 41..80 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"685 11 ~-0.025 0 ~0.625"}
execute if score #dialog Dialog matches 81..100 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"685 11 63 0 25"}
execute if score #dialog Dialog matches 101..120 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"685 11 ~0.075 0 ~-1.75"}
execute if score #dialog Dialog matches 121..160 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"685 11 66.0 0 -10"}
execute if score #dialog Dialog matches 161 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"686.6 11 57.8 160 14"}
execute if score #dialog Dialog matches 161..200 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~0.0225 11 ~0.0075 ~-0.25 ~-0.075"}
execute if score #dialog Dialog matches 201 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"688.3 10.5 64.7 44 0"}
execute if score #dialog Dialog matches 201..260 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~0.0133 10.5 ~0.0216 44 0"}
execute if score #dialog Dialog matches 261 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"689.2 11.3 76.7 -2 0"}
execute if score #dialog Dialog matches 261..320 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"689.2 ~0.0133 76.7 -2 0"}
execute if score #dialog Dialog matches 321 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"687.0 11.5 70.2 10 0"}
execute if score #dialog Dialog matches 321..440 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~-0.00416 11.5 ~0.01166 10 0"}
execute if score #dialog Dialog matches 440 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 1 run playsound luigis_mansion:furniture.boo_hatch block @a[tag=same_room] 685 11 61 1
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:other/music/set/boos_released
execute if score #dialog Dialog matches 1 run function luigis_mansion:room/normal/storage_room/open_hatch
execute if score #dialog Dialog matches 100.. positioned 685 10 61 rotated 0 -90 run function luigis_mansion:dialog/play/release_boos_spawn
execute if score #dialog Dialog matches 99 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 100 as @e[tag=luigi,tag=same_room] positioned 685 11 61 run function luigis_mansion:entities/luigi/animation/set/scare/bash_no_move
execute if score #dialog Dialog matches 100..440 run scoreboard players set @e[tag=luigi,tag=same_room,scores={AnimationProgress=30..}] AnimationProgress 29
execute if score #dialog Dialog matches 120 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.release_boos.1"}]}
execute if score #dialog Dialog matches 190 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.release_boos.2",with:[{type:"selector",selector:"@p[tag=!spectator]"},{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 190 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.release_boos.2.more"}]}
execute if score #dialog Dialog matches 240 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.release_boos.3"}]}
execute if score #dialog Dialog matches 240 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.release_boos.3.more"}]}
execute if score #dialog Dialog matches 290 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.release_boos.4"}]}
execute if score #dialog Dialog matches 290 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.release_boos.4.more"}]}
execute if score #dialog Dialog matches 340 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.release_boos.5"}]}
execute if score #dialog Dialog matches 460 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 460 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/sigh
execute if score #dialog Dialog matches 480 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 480 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {released_boos:1b}
execute if score #dialog Dialog matches 480 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"released_boos_call"},progress:0}
execute if score #dialog Dialog matches 480 run scoreboard players set #dialog Dialog -1