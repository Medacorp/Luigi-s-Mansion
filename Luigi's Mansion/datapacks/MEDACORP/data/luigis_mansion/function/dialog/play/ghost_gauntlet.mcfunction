scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..499 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 500

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] remove freeze_animation
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] add visible
execute if score #dialog Dialog matches 1..500 as @a[tag=same_room] run function luigis_mansion:other/music/set/talking_ghosts
execute if score #dialog Dialog matches 1..199 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 200..499 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/high_health_idle
execute if score #dialog Dialog matches 1 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0",teleport:"^1.5 ^ ^2 ~-110 ~"}
execute if score #dialog Dialog matches 1 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0",teleport:"^-1.5 ^ ^2 ~110 ~"}
execute if score #dialog Dialog matches 2..180 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0",teleport:"^-0.07 ^ ^ ~0.277 ~"}
execute if score #dialog Dialog matches 2..180 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0",teleport:"^0.07 ^ ^ ~-0.277 ~"}
execute if score #dialog Dialog matches 181 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 181 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0",teleport:"^-2 ^ ^ ~-45 ~"}
execute if score #dialog Dialog matches 181 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0",teleport:"^2 ^ ^ ~45 ~"}
execute if score #dialog Dialog matches 181..260 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~0.4375 ~"}
execute if score #dialog Dialog matches 181..260 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~-0.4375 ~"}
execute if score #dialog Dialog matches 261 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"positioned as @e[nbt={data:{entity:{namespace:'luigis_mansion',id:'vincent_van_gore'}}},tag=same_room,limit=1] rotated as @s",teleport:"^ ^0.25 ^-3 ~ ~"}
execute if score #dialog Dialog matches 261..360 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 361..440 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^0.01 ~ ~"}
execute if score #dialog Dialog matches 441..460 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 461..480 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~-7.15 ~"}
execute if score #dialog Dialog matches 461..480 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~7.15 ~"}
execute if score #dialog Dialog matches 481..500 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^0.55 ~ ~"}
execute if score #dialog Dialog matches 500 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 100 at @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] run playsound luigis_mansion:entity.vincent_van_gore.talk hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 100 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.vincent_van_gore",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.vincent_van_gore.1"}]}
execute if score #dialog Dialog matches 100 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.vincent_van_gore",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.vincent_van_gore.1.more"}]}

execute if score #dialog Dialog matches 360..380 unless score #mirrored Selected matches 1 as @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] at @s rotated ~ 0 run teleport @s ~ ~ ~ ~-8.5 ~
execute if score #dialog Dialog matches 360..380 if score #mirrored Selected matches 1 as @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] at @s rotated ~ 0 run teleport @s ~ ~ ~ ~8.5 ~
execute if score #dialog Dialog matches 360 run data modify entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"talk"}
execute if score #dialog Dialog matches 360 at @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] run playsound luigis_mansion:entity.vincent_van_gore.talk hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 360 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.vincent_van_gore",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.vincent_van_gore.2"}]}
execute if score #dialog Dialog matches 360 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.vincent_van_gore",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.vincent_van_gore.2.more"}]}

execute if score #dialog Dialog matches 440 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.vincent_van_gore",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.vincent_van_gore.3"}]}
execute if score #dialog Dialog matches 440 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.vincent_van_gore",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.vincent_van_gore.3.more"}]}
execute if score #dialog Dialog matches 440 run data modify entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"magic"}
execute if score #dialog Dialog matches 460 at @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] run playsound luigis_mansion:entity.vincent_van_gore.awake hostile @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 500 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {vincent_van_gore_spoke:1b}
execute if score #dialog Dialog matches 500 run data remove entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"vincent_van_gore"}}},tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 500 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 500 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 500 run scoreboard players set #dialog Dialog -1