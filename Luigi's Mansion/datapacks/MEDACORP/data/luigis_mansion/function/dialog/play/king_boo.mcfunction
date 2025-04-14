execute if score #dialog Dialog matches 124..550 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 108..123 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 87..117 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 82..86 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..81 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..550 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 551
execute if score #dialog Dialog matches 82..123 unless score #dialog Dialog matches 87..117 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 87..117 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 124.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

tag @e[tag=same_room,tag=furniture,tag=incense] remove no_ai
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"mario"}}},limit=1] remove freeze_animation
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser_painting"}}},limit=1] remove freeze_animation
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1 at @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] as @e[tag=same_room,tag=luigi,distance=..5.9,limit=1] run function luigis_mansion:entities/luigi/move/execute {execute:"positioned ~ ~ ~",teleport:"^ ^ ^-8 ~ 0"}
execute if score #dialog Dialog matches 1 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'king_boo'}}},limit=1]",teleport:"^-1.5 ^0.5 ^-9 facing ^ ^ ^4"}
execute if score #dialog Dialog matches 1 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'king_boo'}}},limit=1]",teleport:"^1.5 ^0.5 ^-9 facing ^ ^ ^4"}
execute if score #dialog Dialog matches 1..60 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated as @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'king_boo'}}},limit=1] positioned ^ ^ ^2 facing entity @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'king_boo'}}},limit=1] feet positioned ^0.015 ^ ^0.09 rotated as @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'king_boo'}}},limit=1] positioned ^ ^ ^-2 rotated as @s",teleport:"^ ^ ^ ~0.122 ~-0.06"}
execute if score #dialog Dialog matches 1..60 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated as @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'king_boo'}}},limit=1] positioned ^ ^ ^2 facing entity @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'king_boo'}}},limit=1] feet positioned ^-0.015 ^ ^0.09 rotated as @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'king_boo'}}},limit=1] positioned ^ ^ ^-2 rotated as @s",teleport:"^ ^ ^ ~-0.122 ~0.06"}
execute if score #dialog Dialog matches 61..123 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 124..133 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^-0.01 ~ ~"}
execute if score #dialog Dialog matches 133..283 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 284..303 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^0.1 ~ ~-0.5"}
execute if score #dialog Dialog matches 304..450 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^0.01 ~ ~"}
execute if score #dialog Dialog matches 451 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 451 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-1.5 ^-2.5 ^1 facing entity @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'bowser_painting'}}},limit=1] feet positioned as @s",teleport:"^-1.5 ^-0.5 ^-1 ~ ~"}
execute if score #dialog Dialog matches 451 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^1.5 ^-2.5 ^1 facing entity @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'bowser_painting'}}},limit=1] feet positioned as @s",teleport:"^1.5 ^-0.5 ^-1 ~ ~"}
execute if score #dialog Dialog matches 451..491 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^0.01 ~ ~"}
execute if score #dialog Dialog matches 491..511 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^0.35 ~ ~"}
execute if score #dialog Dialog matches 511..551 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 1..450 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 1..534 as @a[tag=same_room] run function luigis_mansion:other/music/set/secret_altar
execute if score #dialog Dialog matches 81 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.1"}]}

execute if score #dialog Dialog matches 83 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.2"}]}

execute if score #dialog Dialog matches 84 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.3"}]}

execute if score #dialog Dialog matches 85 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.4"}]}

execute if score #dialog Dialog matches 86 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.5"}]}
execute if score #dialog Dialog matches 86 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.5.more"}]}

execute if score #dialog Dialog matches 87 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.6"}]}
execute if score #dialog Dialog matches 87..106 unless score #mirrored Selected matches 1 as @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] at @s run teleport @s ~ ~ ~ ~9 ~
execute if score #dialog Dialog matches 87..106 if score #mirrored Selected matches 1 as @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] at @s run teleport @s ~ ~ ~ ~-9 ~
execute if score #dialog Dialog matches 107 at @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] run playsound luigis_mansion:entity.king_boo.laugh_2 hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 117 if score #players Totals matches 1 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.7",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 117 if score #players Totals matches 2..4 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.7.more"}]}
execute if score #dialog Dialog matches 117 if score #players Totals matches 5.. run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.7.even_more",with:[{type:"selector",selector:"@p[tag=!spectator]"}]}]}

execute if score #dialog Dialog matches 119 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.8"}]}
execute if score #dialog Dialog matches 119 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.8.more"}]}

execute if score #dialog Dialog matches 120 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.9"}]}
execute if score #dialog Dialog matches 120 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.9.more"}]}

execute if score #dialog Dialog matches 121 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.10"}]}
execute if score #dialog Dialog matches 121 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.10.more"}]}

execute if score #dialog Dialog matches 122 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.11"}]}
execute if score #dialog Dialog matches 122 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.11.more"}]}

execute if score #dialog Dialog matches 123 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.12"}]}
execute if score #dialog Dialog matches 123 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.12.more"}]}

execute if score #dialog Dialog matches 124 run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.king_boo",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.king_boo.13"}]}
execute if score #dialog Dialog matches 124..133 as @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] at @s run teleport @s ~0.1 ~ ~
execute if score #dialog Dialog matches 154 run data modify entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] data.animation set value {namespace:"luigis_mansion",id:"magic"}
execute if score #dialog Dialog matches 154 run function #luigis_mansion:room/normal/secret_altar/turn_lights/off
execute if score #dialog Dialog matches 154 at @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] run playsound luigis_mansion:entity.king_boo.magic hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 154 as @a[tag=same_room] run function luigis_mansion:other/music/set/secret_altar_magic
execute if score #dialog Dialog matches 154..173 run effect give @a[tag=same_room] minecraft:nausea 6 0 true
execute if score #dialog Dialog matches 174..193 run effect give @a[tag=same_room] minecraft:nausea 5 0 true
execute if score #dialog Dialog matches 194 as @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"mario"}}},limit=1] at @s positioned ^ ^-1 ^-0.6 run function luigis_mansion:spawn_entities/bowser/painting
execute if score #dialog Dialog matches 194..213 run effect give @a[tag=same_room] minecraft:nausea 4 0 true
execute if score #dialog Dialog matches 214..233 run effect give @a[tag=same_room] minecraft:nausea 3 0 true
execute if score #dialog Dialog matches 234 as @e[tag=same_room,tag=mario,limit=1] at @s run teleport @s ~ ~-4 ~
execute if score #dialog Dialog matches 234..253 run effect give @a[tag=same_room] minecraft:nausea 2 0 true
execute if score #dialog Dialog matches 254..273 run effect give @a[tag=same_room] minecraft:nausea 1 0 true
execute if score #dialog Dialog matches 274 run data remove entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] data.animation
execute if score #dialog Dialog matches 284..304 as @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] at @s positioned ~ ~-4 ~ facing entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"mario"}}},limit=1] feet positioned ~ ~4 ~ run teleport @s ^ ^ ^0.3 ~ ~
execute if score #dialog Dialog matches 305 run tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] remove visible
execute if score #dialog Dialog matches 324 run data modify entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser_painting"}}},limit=1] data.animation set value {namespace:"luigis_mansion",id:"vacuum"}
execute if score #dialog Dialog matches 391.. at @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"mario"}}},limit=1] positioned ^ ^5.5 ^3 run particle minecraft:dust{color:16777215,scale:1f} ~ ~ ~ 0 0 0 0 10
execute if score #dialog Dialog matches 391.. at @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"mario"}}},limit=1] positioned ^ ^5.5 ^4 run particle minecraft:dust{color:16777215,scale:1f} ~ ~ ~ 0 0 0 0 10
execute if score #dialog Dialog matches 391.. at @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"mario"}}},limit=1] positioned ^ ^5.5 ^5 run particle minecraft:dust{color:16777215,scale:1f} ~ ~ ~ 0 0 0 0 10
execute if score #dialog Dialog matches 451 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 451 at @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/knockback/flee
execute if score #dialog Dialog matches 451.. as @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] unless entity @s[scores={PoltergustSound=1..}] run playsound luigis_mansion:entity.bowser.vacuum hostile @a[tag=same_room] ~ ~ ~ 3
execute if score #dialog Dialog matches 451.. as @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] unless entity @s[scores={PoltergustSound=1..}] run scoreboard players set @s PoltergustSound 20
execute if score #dialog Dialog matches 451..470 as @e[tag=same_room,tag=luigi] run function luigis_mansion:entities/luigi/move/execute {execute:"at @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'mario'}}},limit=1] positioned ^ ^5 ^2 facing entity @s feet positioned as @s",teleport:"^ ^ ^-0.1"}
execute if score #dialog Dialog matches 471..510 as @e[tag=same_room,tag=luigi] run function luigis_mansion:entities/luigi/move/execute {execute:"at @e[tag=same_room,nbt={data:{entity:{namespace:'luigis_mansion',id:'mario'}}},limit=1] positioned ^ ^5 ^2 facing entity @s feet positioned as @s",teleport:"^ ^ ^-0.4"}
execute if score #dialog Dialog matches 511 as @e[tag=same_room,tag=luigi] at @s run function luigis_mansion:entities/luigi/move/teleport {teleport:"^ ^3 ^-5"}
execute if score #dialog Dialog matches 551 run tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] add remove_from_existence
execute if score #dialog Dialog matches 551 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 551 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 551 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 551 run scoreboard players add #secret_altar Wave 1
execute if score #dialog Dialog matches 551 run scoreboard players set #dialog Dialog -1