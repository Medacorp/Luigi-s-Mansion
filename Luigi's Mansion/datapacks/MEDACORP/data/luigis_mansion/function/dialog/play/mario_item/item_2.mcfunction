execute if score #dialog Dialog matches 49..52 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 28..48 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 25..27 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 4..24 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 2..3 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..52 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 53
execute if score #dialog Dialog matches ..52 unless score #dialog Dialog matches 4..23 unless score #dialog Dialog matches 28..47 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 4..23 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 28..47 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 53.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

tag @e[tag=same_room,tag=furniture,tag=incense] remove no_ai
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1..52 unless score #dialog Dialog matches 4..27 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'madame_clairvoya'}}},limit=1] positioned ^ ^ ^3 unless entity @e[tag=same_room,tag=luigi,distance=..2,limit=1] facing entity @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'madame_clairvoya'}}},limit=1] feet",teleport:"~ ~0.5 ~ ~ ~"}
execute if score #dialog Dialog matches 1..52 unless score #dialog Dialog matches 4..27 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'madame_clairvoya'}}},limit=1] positioned ^ ^ ^3 if entity @e[tag=same_room,tag=luigi,distance=..2,limit=1] positioned ^3 ^ ^-1.5 facing entity @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'madame_clairvoya'}}},limit=1] feet",teleport:"~ ~0.5 ~ ~-20 ~"}
execute if score #dialog Dialog matches 1..52 unless score #dialog Dialog matches 4..27 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'madame_clairvoya'}}},limit=1] positioned ^ ^ ^3 if entity @e[tag=same_room,tag=luigi,distance=..2,limit=1] positioned ^-3 ^ ^-1.5 facing entity @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'madame_clairvoya'}}},limit=1] feet",teleport:"~ ~0.5 ~ ~20 ~"}
execute if score #dialog Dialog matches 4..27 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'madame_clairvoya'}}},limit=1] positioned ^ ^1 ^5 facing entity @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'madame_clairvoya'}}},limit=1] feet",teleport:"~ ~0.5 ~ ~ ~"}
execute if score #dialog Dialog matches 1..52 as @a[tag=same_room] run function luigis_mansion:other/music/set/talking_ghosts
execute if score #dialog Dialog matches 1..23 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.madame_clairvoya",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.madame_clairvoya.generic.3"}]}

execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run playsound luigis_mansion:entity.madame_clairvoya.spirits hostile @a[tag=same_room] ~ ~ ~ 1000
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.madame_clairvoya",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.madame_clairvoya.generic.4"}]}

execute if score #dialog Dialog matches 24 run data modify entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation set value {namespace:"luigis_mansion",id:"power"}
execute if score #dialog Dialog matches 24..27 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 24 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.madame_clairvoya",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.madame_clairvoya.generic.5"}]}

execute if score #dialog Dialog matches 26 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.madame_clairvoya",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.madame_clairvoya.generic.6"}]}

execute if score #dialog Dialog matches 27 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.madame_clairvoya",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.madame_clairvoya.generic.7"}]}

execute if score #dialog Dialog matches 28..47 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 28 run playsound luigis_mansion:entity.madame_clairvoya.spirits hostile @a[tag=same_room] ~ ~ ~ 1000
execute if score #dialog Dialog matches 48 run data modify entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation set value {namespace:"luigis_mansion",id:"explain"}
execute if score #dialog Dialog matches 48..52 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/think
execute if score #dialog Dialog matches 48 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.madame_clairvoya",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.madame_clairvoya.item_2.1"}]}
execute if score #dialog Dialog matches 48 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.madame_clairvoya",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.madame_clairvoya.item_2.1.more"}]}

execute if score #dialog Dialog matches 50 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.madame_clairvoya",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.madame_clairvoya.item_2.2"}]}
execute if score #dialog Dialog matches 50 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.madame_clairvoya",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.madame_clairvoya.item_2.2.more"}]}

execute if score #dialog Dialog matches 51 run data modify entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 51 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.madame_clairvoya",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.madame_clairvoya.item_2.3"}]}

execute if score #dialog Dialog matches 52 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.madame_clairvoya",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.madame_clairvoya.item_2.4"}]}
execute if score #dialog Dialog matches 52 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.madame_clairvoya",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.madame_clairvoya.item_2.4.more"}]}

execute if score #dialog Dialog matches 53 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 53 run data remove entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation
execute if score #dialog Dialog matches 53 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 53 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 53 run scoreboard players set #dialog Dialog -1