execute if score #dialog Dialog matches 117..136 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 137
execute if score #dialog Dialog matches 116..135 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 114 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 92
execute if score #dialog Dialog matches 93..113 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 92 if entity @a[tag=same_room,tag=select_dialog_branch_no,limit=1] run scoreboard players set #dialog Dialog 114
execute if score #dialog Dialog matches 92 if entity @a[tag=same_room,tag=select_dialog_branch_yes,limit=1] run scoreboard players set #dialog Dialog 93
execute if score #dialog Dialog matches 72..91 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 92
execute if score #dialog Dialog matches 71..90 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 50..69 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 70
execute if score #dialog Dialog matches 49..68 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 28..47 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 48
execute if score #dialog Dialog matches 27..46 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 6..25 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 26
execute if score #dialog Dialog matches 5..24 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=select_dialog_branch_nowhere,limit=1] run scoreboard players set #dialog Dialog 116
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=select_dialog_branch_load_data,limit=1] run scoreboard players set #dialog Dialog 71
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=select_dialog_branch_portrificationizer,limit=1] run scoreboard players set #dialog Dialog 49
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=select_dialog_branch_gallery,limit=1] run scoreboard players set #dialog Dialog 27
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=select_dialog_branch_training,limit=1] run scoreboard players set #dialog Dialog 5
execute if score #dialog Dialog matches 2..3 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..1 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 116..136 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 137
execute if score #dialog Dialog matches 114 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 115
execute if score #dialog Dialog matches 93..112 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 113
execute if score #dialog Dialog matches 71..91 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 92
execute if score #dialog Dialog matches 49..69 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 70
execute if score #dialog Dialog matches 27..47 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 48
execute if score #dialog Dialog matches 5..25 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 26
execute if score #dialog Dialog matches 3 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 4
execute if score #dialog Dialog matches ..2 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 3
execute if score #dialog Dialog matches ..136 unless score #dialog Dialog matches 3..4 unless score #dialog Dialog matches 26 unless score #dialog Dialog matches 48 unless score #dialog Dialog matches 70 unless score #dialog Dialog matches 92..113 unless score #dialog Dialog matches 115 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 3 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/underground_lab
execute if score #dialog Dialog matches 92 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/underground_lab_load_data
execute if score #dialog Dialog matches 4 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 26 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 48 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 70 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 93..113 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 115 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 137.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=e_gadd,tag=same_room,limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing entity @a[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 1 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 1.. as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.1","with":[{"type":"selector","selector":"@a[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.1.more"}]}
execute if score #dialog Dialog matches 1 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.luigi neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 3 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/think
execute if score #dialog Dialog matches 3 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation

#Branch Save
execute if score #dialog Dialog matches 4 run scoreboard players set #dialog Dialog -1

#Branch: Training
execute if score #dialog Dialog matches 5 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 5 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/nod
execute if score #dialog Dialog matches 5 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.luigi
execute if score #dialog Dialog matches 5 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.training.1"}]}
execute if score #dialog Dialog matches 5 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.yaahboh_yaahboh neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 25 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle

execute if score #dialog Dialog matches 26 as @a[tag=same_room] run function luigis_mansion:room/training_room/warp_to
execute if score #dialog Dialog matches 26 run scoreboard players set #dialog Dialog -1

#Branch: Gallery
execute if score #dialog Dialog matches 27 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 27 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/nod
execute if score #dialog Dialog matches 27 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.luigi
execute if score #dialog Dialog matches 27 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.gallery.1"}]}
execute if score #dialog Dialog matches 27 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.odoh_mah_mah neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 47 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle

execute if score #dialog Dialog matches 48 as @a[tag=same_room] run function luigis_mansion:room/gallery/warp_to
execute if score #dialog Dialog matches 48 run scoreboard players set #dialog Dialog -1

#Branch: Portrificationizer
execute if score #dialog Dialog matches 49 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 49 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/nod
execute if score #dialog Dialog matches 49 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.luigi
execute if score #dialog Dialog matches 49 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.portrificationizer.1"}]}
execute if score #dialog Dialog matches 49 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.odoh_mah_mah neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 69 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle

execute if score #dialog Dialog matches 70 as @a[tag=same_room] run function luigis_mansion:room/ghost_portrificationizer_room/warp_to
execute if score #dialog Dialog matches 70 run scoreboard players set #dialog Dialog -1

#Branch: Load Data
execute if score #dialog Dialog matches 71 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 71 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/nod
execute if score #dialog Dialog matches 71 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.luigi
execute if score #dialog Dialog matches 71 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.old_data.1"}]}
execute if score #dialog Dialog matches 71 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.old_data.1.more"}]}
execute if score #dialog Dialog matches 71 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 91 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle

execute if score #dialog Dialog matches 92 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 92 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/think

#Branch: Load Data; Branch: Yes
execute if score #dialog Dialog matches 93 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/nod
execute if score #dialog Dialog matches 93 as @a[tag=select_dialog_branch_yes,limit=1] run function luigis_mansion:data/load
execute if score #dialog Dialog matches 113 run scoreboard players set #dialog Dialog -1

#Branch: Load Data; Branch: No
execute if score #dialog Dialog matches 114 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 114 if entity @a[tag=select_dialog_branch_no,limit=1] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui
execute if score #dialog Dialog matches 114 if entity @a[tag=select_dialog_branch_no,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.old_data.no.1"}]}
execute if score #dialog Dialog matches 114 if entity @a[tag=select_dialog_branch_no,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 115 run scoreboard players set #dialog Dialog -1

#Branch: Nowhere
execute if score #dialog Dialog matches 116 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if score #dialog Dialog matches 116 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/nod
execute if score #dialog Dialog matches 116 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.luigi
execute if score #dialog Dialog matches 116 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.nowhere.1"}]}
execute if score #dialog Dialog matches 116 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.yahmum_bah neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 136 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle

execute if score #dialog Dialog matches 137 run scoreboard players set #dialog Dialog -1

execute if score #dialog Dialog matches -1 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches -1 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
tag @a[tag=same_room] remove select_dialog_branch_training
tag @a[tag=same_room] remove select_dialog_branch_gallery
tag @a[tag=same_room] remove select_dialog_branch_portrificationizer
tag @a[tag=same_room] remove select_dialog_branch_load_data
tag @a[tag=same_room] remove select_dialog_branch_nowhere
tag @a[tag=same_room] remove select_dialog_branch_yes
tag @a[tag=same_room] remove select_dialog_branch_no