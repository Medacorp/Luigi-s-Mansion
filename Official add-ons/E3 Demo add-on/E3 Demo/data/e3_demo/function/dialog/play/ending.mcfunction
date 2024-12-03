execute if score #dialog Dialog matches 201 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..200 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..199 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 200
execute if score #dialog Dialog matches 201 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 202
execute if score #dialog Dialog matches 201 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/save
execute if score #dialog Dialog matches 202.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=e_gadd,tag=same_room,limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.the_end"}]}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.the_end.more"}]}
execute if score #dialog Dialog matches 200 run function luigis_mansion:other/clear_mansion
#save?
execute if score #dialog Dialog matches 202 run tag @a add show_credits
execute if score #dialog Dialog matches 202 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 202 as @a[tag=same_room] run function luigis_mansion:other/music/set/credits
execute if score #dialog Dialog matches 202 run tag @e[tag=e_gadd,tag=same_room,limit=1] add can_talk_to
execute if score #dialog Dialog matches 202 run tag @e[tag=e_gadd,tag=same_room,limit=1] remove cannot_be_removed
execute if score #dialog Dialog matches 202 run scoreboard players set #dialog Dialog -1