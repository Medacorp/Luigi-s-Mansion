execute if score #dialog Dialog matches 2 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..2 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 3
execute if score #dialog Dialog matches 2 as @a[tag=same_room,tag=!spectator,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 1 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 3.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

tag @e[tag=toad,tag=same_room,limit=1] remove freeze_animation
tag @e[tag=toad,tag=same_room,limit=1] remove no_ai
execute if score #dialog Dialog matches 1..2 as @a[tag=same_room] run function luigis_mansion:other/music/set/toad
execute if score #dialog Dialog matches 1..2 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 1 if score #toad_amiibo Selected matches 1 unless entity @a[tag=!gooigi,scores={Health=..99}] unless entity @a[tag=gooigi,scores={Health=..49}] run scoreboard players set #dialog Dialog -1
execute if score #dialog Dialog matches 1 if score #toad_amiibo Selected matches 0 run scoreboard players set #dialog Dialog -1
execute if score #dialog Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.toad.heal","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.toad.heal.more"}]}

execute if score #dialog Dialog matches 3 at @a[tag=!spectator,tag=!looking_at_map] run function 3ds_remake:spawn_entities/item/huge_heart
execute if score #dialog Dialog matches 3 at @e[tag=game_boy_horror_location] run function 3ds_remake:spawn_entities/item/huge_heart
execute if score #dialog Dialog matches 3 run scoreboard players set #dialog Dialog -1

execute if score #dialog Dialog matches -1 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches -1 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence