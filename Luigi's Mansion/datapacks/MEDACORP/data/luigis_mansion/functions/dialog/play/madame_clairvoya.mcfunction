execute if score #dialog Dialog matches 28..47 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 48
execute if score #dialog Dialog matches 27..46 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 25 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 5..24 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 25
execute if score #dialog Dialog matches 4..23 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=select_dialog_branch_no,limit=1] run scoreboard players set #dialog Dialog 27
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=select_dialog_branch_yes,limit=1] run scoreboard players set #dialog Dialog 4
execute if score #dialog Dialog matches 2 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 4.. if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 48
execute if score #dialog Dialog matches ..2 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 3
execute if score #dialog Dialog matches ..47 unless score #dialog Dialog matches 3 unless score #dialog Dialog matches 26 unless score #dialog Dialog matches 48 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 3 as @a[tag=same_room,tag=dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/madame_clairvoya
execute if score #dialog Dialog matches 26 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 48.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1 run data modify entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 1..49 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 1..356 as @a[tag=same_room] run function luigis_mansion:other/music/set/talking_ghost
execute if score #dialog Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.1"}]}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.1.more"}]}

#Branch: Yes
execute if score #dialog Dialog matches 4 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/nod
execute if score #dialog Dialog matches 4 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.yes.1"}]}
execute if score #dialog Dialog matches 24..25 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle

execute if score #dialog Dialog matches 25 if score #players Totals matches 1 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.yes.2"}]}
execute if score #dialog Dialog matches 25 if score #players Totals matches 2.. if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.yes.2.more"}]}

execute if score #dialog Dialog matches 26 run scoreboard players set #dialog Dialog -1

#Branch: No
execute if score #dialog Dialog matches 27 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/nod
execute if score #dialog Dialog matches 27 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.no.1"}]}
execute if score #dialog Dialog matches 47 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle

execute if score #dialog Dialog matches 48 run scoreboard players set #dialog Dialog -1

execute if score #dialog Dialog matches -1 run data remove entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}},limit=1] data.animation
execute if score #dialog Dialog matches -1 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches -1 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence