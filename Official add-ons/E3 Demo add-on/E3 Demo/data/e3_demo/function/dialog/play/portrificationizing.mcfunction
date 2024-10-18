execute if score #dialog Dialog matches 985..986 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 986 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=!can_talk_to] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 924..984 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 964..983 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 984
execute if score #dialog Dialog matches 924..963 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 964
execute if score #dialog Dialog matches 901..923 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 924
execute if score #dialog Dialog matches 900..922 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 899 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 669..898 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 871..898 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 899
execute if score #dialog Dialog matches 841..868 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 869
execute if score #dialog Dialog matches 811..838 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 839
execute if score #dialog Dialog matches 781..808 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 809
execute if score #dialog Dialog matches 751..778 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players set #dialog Dialog 779
execute if score #dialog Dialog matches 667..668 if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 665..666 unless entity @e[tag=portrificationizing_ghost,limit=1] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..664 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..664 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 664
execute if score #dialog Dialog matches 666..963 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 964
execute if score #dialog Dialog matches 665..986 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 987
execute if score #dialog Dialog matches 667..985 unless score #dialog Dialog matches 669..750 as @a[tag=same_room,tag=!spectator] unless entity @s[tag=dialog_menu,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/original_menu
execute if score #dialog Dialog matches 986 as @a[tag=same_room,tag=!spectator,tag=!dialog_choice_menu] unless entity @s[tag=using_selection_menu,tag=!dialog_menu] run function luigis_mansion:selection_menu/dialog/choice/save
execute if score #dialog Dialog matches 669..750 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if score #dialog Dialog matches 987.. as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=e_gadd,tag=same_room,limit=1] remove freeze_animation
tag @e[tag=e_gadd,tag=same_room,limit=1] remove no_ai
execute if score #ghost_portrificationizer_room_ghost_portrificationizer Searching matches 1.. run tag @a[tag=poltergust_selected,tag=same_room,limit=1] add prevent_item_lock
tag @e[tag=same_room,nbt={ArmorItems:[{components:{"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"portrificationizing_ghost"}}}}]}] remove no_ai
execute if score #dialog Dialog matches 1 unless data storage luigis_mansion:data dialogs[0].portraits run data modify storage luigis_mansion:data dialogs[0].portraits set value {}
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:other/music/set/portrificationizing
execute if score #dialog Dialog matches 1 run function luigis_mansion:spawn_entities/portrificationizing_ghosts with storage luigis_mansion:data current_state.current_data.mansion_id
execute if score #dialog Dialog matches 1 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing 771 77 15
execute if score #dialog Dialog matches 201 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"jump"}
execute if score #dialog Dialog matches 280 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 300 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"walk_look_sideways"}
execute if score #dialog Dialog matches 310 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"run"}
execute if score #dialog Dialog matches 300..309 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~-0.1 -180 0
execute if score #dialog Dialog matches 310..335 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~-0.248 -180 0
execute if score #dialog Dialog matches 335 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 336..359 facing entity @e[tag=portrificationizing_ghost,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 360 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"run"}
execute if score #dialog Dialog matches 360..395 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~-0.115 -180 0
execute if score #dialog Dialog matches 395 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 396..439 facing entity @e[tag=portrificationizing_ghost,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 440 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"run"}
execute if score #dialog Dialog matches 440..475 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~-0.171 -180 0
execute if score #dialog Dialog matches 475 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 476..519 facing entity @e[tag=portrificationizing_ghost,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 520 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"run"}
execute if score #dialog Dialog matches 520..555 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~-0.228 -180 0
execute if score #dialog Dialog matches 555 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 556..809 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~ facing 770 77 -12
execute if score #dialog Dialog matches 360 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.1"}]}
execute if score #dialog Dialog matches 360 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.seedapee_ohyah neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 440 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.2"}]}
execute if score #dialog Dialog matches 440 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.keeyehroo_suu neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 520 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.3"}]}
execute if score #dialog Dialog matches 520 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.hoo_hoo_hoo neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 600 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.4"}]}
execute if score #dialog Dialog matches 600 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.keekehrookukukay neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 666 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.5"}]}
execute if score #dialog Dialog matches 666 at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.jeemee_jeemee neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 668 run stopsound @a[tag=same_room] neutral luigis_mansion:entity.e_gadd.talk.jeemee_jeemee
execute if score #dialog Dialog matches 668 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=can_talk_to] if entity @a[tag=same_room,tag=next_dialog_line,limit=1] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.6","with":[{"type":"selector","selector":"@p[tag=!spectator]"}]}]}
execute if score #dialog Dialog matches 668 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=can_talk_to] if entity @a[tag=same_room,tag=next_dialog_line,limit=1] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.6.more"}]}
execute if score #dialog Dialog matches 668 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=can_talk_to] if entity @a[tag=same_room,tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.ooh_ooh_yahboh_yahboh_hoo_hoo_hoo neutral @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 668 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=!can_talk_to] if entity @a[tag=same_room,tag=next_dialog_line,limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.ending.5"}]}
execute if score #dialog Dialog matches 668 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=!can_talk_to] if entity @a[tag=same_room,tag=next_dialog_line,limit=1] at @e[tag=e_gadd,tag=same_room,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.ohmoogah_luigi_odoh neutral @a[tag=same_room] ~ ~ ~ 1

execute if score #dialog Dialog matches 669 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1,tag=can_talk_to] data.animation set value {namespace:"luigis_mansion",id:"walk"}
execute if score #dialog Dialog matches 669..986 as @e[tag=e_gadd,tag=same_room,limit=1,tag=can_talk_to] unless entity @s[x=774.5,y=77.0,z=14.5,distance=..0.1] at @s run teleport @s ~ ~ ~0.1 0 0
execute if score #dialog Dialog matches 669..986 as @e[tag=e_gadd,tag=same_room,limit=1,tag=can_talk_to,x=774.5,y=77.0,z=14.5,distance=..0.1] run teleport @s 774 77 14 -30 0
execute if score #dialog Dialog matches 669..986 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1,x=774.5,y=77.0,z=14.5,distance=..0.1] data.animation
execute if score #dialog Dialog matches 669..986 as @a[tag=same_room] run function luigis_mansion:other/music/set/portraits
#ghosts
execute if score #dialog Dialog matches 749 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.results.caught"}]}
execute if score #dialog Dialog matches 749 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.results.caught.more"}]}
execute if score #dialog Dialog matches 749 unless data storage luigis_mansion:data dialogs[0].portraits.luigis_mansion.neville unless data storage luigis_mansion:data dialogs[0].portraits.luigis_mansion.lydia unless data storage luigis_mansion:data dialogs[0].portraits.luigis_mansion.miss_petunia unless data storage luigis_mansion:data dialogs[0].portraits.luigis_mansion.spooky run scoreboard players set #dialog Dialog 899
execute if score #dialog Dialog matches 750 unless data storage luigis_mansion:data dialogs[0].portraits.luigis_mansion.neville run scoreboard players add #dialog Dialog 30
execute if score #dialog Dialog matches 769 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.fall player @s ~ ~ ~ 1 1
execute if score #dialog Dialog matches 779 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:entity.neville"}]}
execute if score #dialog Dialog matches 779 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.land player @s ~ ~ ~ 1 1
execute if score #dialog Dialog matches 780 unless data storage luigis_mansion:data dialogs[0].portraits.luigis_mansion.lydia run scoreboard players add #dialog Dialog 30
execute if score #dialog Dialog matches 799 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.fall player @s ~ ~ ~ 1 1
execute if score #dialog Dialog matches 809 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:entity.lydia"}]}
execute if score #dialog Dialog matches 809 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.land player @s ~ ~ ~ 1 1
execute if score #dialog Dialog matches 810 unless data storage luigis_mansion:data dialogs[0].portraits.luigis_mansion.spooky run scoreboard players add #dialog Dialog 30
execute if score #dialog Dialog matches 829 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.fall player @s ~ ~ ~ 1 1
execute if score #dialog Dialog matches 839 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:entity.spooky"}]}
execute if score #dialog Dialog matches 839 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.land player @s ~ ~ ~ 1 1
execute if score #dialog Dialog matches 840 unless data storage luigis_mansion:data dialogs[0].portraits.luigis_mansion.miss_petunia run scoreboard players add #dialog Dialog 30
execute if score #dialog Dialog matches 859 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.fall player @s ~ ~ ~ 1 1
execute if score #dialog Dialog matches 869 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:entity.miss_petunia"}]}
execute if score #dialog Dialog matches 869 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.land player @s ~ ~ ~ 1 1


execute if score #dialog Dialog matches 869 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.land player @s ~ ~ ~ 1 1
#899
execute if score #dialog Dialog matches 900..923 run scoreboard players set #temp2 Dialog 0
execute if score #dialog Dialog matches 900..923 if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.neville{portrificationized:1b} run scoreboard players add #temp2 Dialog 1
execute if score #dialog Dialog matches 900..923 if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.lydia{portrificationized:1b} run scoreboard players add #temp2 Dialog 1
execute if score #dialog Dialog matches 900..923 if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.spooky{portrificationized:1b} run scoreboard players add #temp2 Dialog 1
execute if score #dialog Dialog matches 900..923 if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.miss_petunia{portrificationized:1b} run scoreboard players add #temp2 Dialog 1
execute if score #dialog Dialog matches 900 if score #temp2 Dialog matches 0 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.results.ghosts.0"}]}
execute if score #dialog Dialog matches 900 if score #temp2 Dialog matches 0 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.results.ghosts.0.more"}]}
execute if score #dialog Dialog matches 900 if score #temp2 Dialog matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.results.ghosts.1"}]}
execute if score #dialog Dialog matches 900 if score #temp2 Dialog matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.results.ghosts.1.more"}]}
execute if score #dialog Dialog matches 900 if score #temp2 Dialog matches 2.. if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.results.ghosts","with":[{"score":{"name":"#temp2","objective":"Dialog"}}]}]}
execute if score #dialog Dialog matches 900 if score #temp2 Dialog matches 2.. if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.results.ghosts.more","with":[{"score":{"name":"#temp2","objective":"Dialog"}}]}]}
execute if score #dialog Dialog matches 900 if score #temp2 Dialog matches 1.. as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1
execute if score #dialog Dialog matches 901 if score #temp2 Dialog matches 2.. as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.045
execute if score #dialog Dialog matches 902 if score #temp2 Dialog matches 3.. as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.09
execute if score #dialog Dialog matches 903 if score #temp2 Dialog matches 4 as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.count player @s ~ ~ ~ 1 1.135
#923
execute if score #dialog Dialog matches 924..984 run scoreboard players operation #temp2 Dialog = #dialog Dialog
execute if score #dialog Dialog matches 924..984 run scoreboard players operation #temp2 Dialog %= #2 Constants
execute if score #dialog Dialog matches 924 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.results.money"}]}
execute if score #dialog Dialog matches 924 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.results.money.more"}]}
execute if score #dialog Dialog matches 924 run function e3_demo:dialog/play/portrificationizing/get_ghost_coin
execute if score #dialog Dialog matches 924 unless score #temp Money matches 0 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.money","with":[{"type":"translatable","translate":"luigis_mansion:item.gold_coin"},{"type":"score","score":{"objective":"Money","name":"#temp"}},{"type":"score","score":{"objective":"Money","name":"#temp2"}}]}]}
execute if score #dialog Dialog matches 924 if score #temp Money matches 0 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.money.not_obtained"}]}
execute if score #dialog Dialog matches 924 if score #temp Money matches 0 run scoreboard players add #dialog Dialog 40
execute if score #dialog Dialog matches 924..944 if score #temp2 Dialog matches 0 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 964 run function luigis_mansion:dialog/play/portrificationizing/get_total_score
execute if score #dialog Dialog matches 964 if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:0} run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.money.multiplier.peaceful"}]}
execute if score #dialog Dialog matches 964 if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:1} run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.money.multiplier.easy"}]}
execute if score #dialog Dialog matches 964 if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:2} run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.money.multiplier.normal"}]}
execute if score #dialog Dialog matches 964 if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:3} run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.money.multiplier.hard"}]}
execute if score #dialog Dialog matches 964 if score #temp Money matches 1.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.money.total","with":[{"type":"score","score":{"objective":"Money","name":"#temp"}}]}]}
execute if score #dialog Dialog matches 964 unless score #temp Money matches 1.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.money.total.no_money"}]}
execute if score #dialog Dialog matches 964 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=!can_talk_to] if data storage luigis_mansion:data current_state.high_scores[0] run function luigis_mansion:dialog/play/portrificationizing/get_high_score
execute if score #dialog Dialog matches 964 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=!can_talk_to] run scoreboard players operation #temp2 Money > #temp Money
execute if score #dialog Dialog matches 964 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=!can_talk_to] run function luigis_mansion:dialog/play/portrificationizing/save_high_score
execute if score #dialog Dialog matches 964 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=!can_talk_to] if score #temp2 Money matches 1.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.money.high_score","with":[{"type":"score","score":{"objective":"Money","name":"#temp2"}}]}]}
execute if score #dialog Dialog matches 964 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=!can_talk_to] unless score #temp2 Money matches 1.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.money.high_score.no_money"}]}
execute if score #dialog Dialog matches 964 if score #3ds_remake Loaded matches 1.. store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.in_mansion_time
execute if score #dialog Dialog matches 964 if score #3ds_remake Loaded matches 1.. run function 3ds_remake:dialog/play/portrificationizing/convert_time
execute if score #dialog Dialog matches 964 if score #3ds_remake Loaded matches 1.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"3ds_remake:message.time_spent_in_mansion","with":[{"type":"score","score":{"name":"#temp6","objective":"Time"}},{"type":"score","score":{"name":"#temp5","objective":"Time"}},{"type":"score","score":{"name":"#temp4","objective":"Time"}},{"type":"score","score":{"name":"#temp3","objective":"Time"}},{"type":"score","score":{"name":"#temp2","objective":"Time"}},{"type":"score","score":{"name":"#temp","objective":"Time"}}]}]}
execute if score #dialog Dialog matches 964 if score #3ds_remake Loaded matches 1.. run scoreboard players reset #temp Time
execute if score #dialog Dialog matches 964 if score #3ds_remake Loaded matches 1.. run scoreboard players reset #temp2 Time
execute if score #dialog Dialog matches 964 if score #3ds_remake Loaded matches 1.. run scoreboard players reset #temp3 Time
execute if score #dialog Dialog matches 964 if score #3ds_remake Loaded matches 1.. run scoreboard players reset #temp4 Time
execute if score #dialog Dialog matches 964 if score #3ds_remake Loaded matches 1.. run scoreboard players reset #temp5 Time
execute if score #dialog Dialog matches 964 if score #3ds_remake Loaded matches 1.. run scoreboard players reset #temp6 Time
execute if score #dialog Dialog matches 964 if score #temp Money matches 0 run scoreboard players add #dialog Dialog 20
execute if score #dialog Dialog matches 964..984 if score #temp2 Dialog matches 0 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if score #dialog Dialog matches 924..984 run scoreboard players reset #temp Money
execute if score #dialog Dialog matches 924..984 run scoreboard players reset #temp2 Money
scoreboard players reset #temp2 Dialog
#985..986
execute if score #dialog Dialog matches 987 as @e[tag=e_gadd,tag=same_room,limit=1,tag=can_talk_to] run teleport @s 774 77 14 -30 0
execute if score #dialog Dialog matches 987 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1,tag=can_talk_to] data.animation
execute if score #dialog Dialog matches 987 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 987 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=!can_talk_to] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"e3_demo",id:"ending"},room:-3,progress:0}
execute if score #dialog Dialog matches 987 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=can_talk_to] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"underground_lab"},room:-1,progress:-1}
execute if score #dialog Dialog matches 987 if entity @e[tag=e_gadd,tag=same_room,limit=1,tag=can_talk_to] as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to
execute if score #dialog Dialog matches 987 run scoreboard players set #dialog Dialog -1