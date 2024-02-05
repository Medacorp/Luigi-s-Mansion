execute if entity @a[scores={EGaddGhostPortrificationizerRoomChoice=1..},limit=1] run scoreboard players add @s[scores={Dialog=1071..}] Dialog 1
execute unless entity @e[tag=portrificationizing_ghost,limit=1] run scoreboard players add @s[scores={Dialog=665..1070}] Dialog 1
scoreboard players add @s[scores={Dialog=..664}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
scoreboard players operation #temp Dialog = @s Dialog
scoreboard players operation #temp Dialog %= #2 Constants
execute if entity @s[scores={Dialog=1}] as @a[tag=same_room] run function luigis_mansion:other/music/set/portrificationizing
execute if entity @s[scores={Dialog=1}] run function #luigis_mansion:portrificationize_ghosts
teleport @s[scores={Dialog=1}] ~ ~ ~ facing 771 77 15
data modify entity @s[scores={Dialog=201}] data.animation set value {namespace:"luigis_mansion",id:"jump"}
data remove entity @s[scores={Dialog=280}] data.animation
data modify entity @s[scores={Dialog=300}] data.animation set value {namespace:"luigis_mansion",id:"walk"}
data modify entity @s[scores={Dialog=310}] data.animation set value {namespace:"luigis_mansion",id:"run"}
teleport @s[scores={Dialog=300..309}] ~ ~ ~-0.1 -180 0
teleport @s[scores={Dialog=310..335}] ~ ~ ~-0.248 -180 0
data remove entity @s[scores={Dialog=335}] data.animation
execute if entity @s[scores={Dialog=336..359}] facing entity @e[tag=portrificationizing_ghost,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
data modify entity @s[scores={Dialog=360}] data.animation set value {namespace:"luigis_mansion",id:"run"}
teleport @s[scores={Dialog=360..395}] ~ ~ ~-0.115 -180 0
data remove entity @s[scores={Dialog=395}] data.animation
execute if entity @s[scores={Dialog=396..439}] facing entity @e[tag=portrificationizing_ghost,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
data modify entity @s[scores={Dialog=440}] data.animation set value {namespace:"luigis_mansion",id:"run"}
teleport @s[scores={Dialog=440..475}] ~ ~ ~-0.171 -180 0
data remove entity @s[scores={Dialog=475}] data.animation
execute if entity @s[scores={Dialog=476..519}] facing entity @e[tag=portrificationizing_ghost,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
data modify entity @s[scores={Dialog=520}] data.animation set value {namespace:"luigis_mansion",id:"run"}
teleport @s[scores={Dialog=520..555}] ~ ~ ~-0.228 -180 0
data remove entity @s[scores={Dialog=555}] data.animation
teleport @s[scores={Dialog=556..809}] ~ ~ ~ facing 770 77 -12
execute if entity @s[scores={Dialog=360}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.1"}]}
execute if entity @s[scores={Dialog=360}] run playsound luigis_mansion:entity.e_gadd.talk.seedapee_ohyah neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=440}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.2"}]}
execute if entity @s[scores={Dialog=440}] run playsound luigis_mansion:entity.e_gadd.talk.keeyehroo_suu neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=520}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.3"}]}
execute if entity @s[scores={Dialog=520}] run playsound luigis_mansion:entity.e_gadd.talk.hoo_hoo_hoo neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=600}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.4"}]}
execute if entity @s[scores={Dialog=600}] run playsound luigis_mansion:entity.e_gadd.talk.keekehrookukukay neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=666}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.5"}]}
execute if entity @s[scores={Dialog=666}] run playsound luigis_mansion:entity.e_gadd.talk.jeemee_jeemee neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=674},tag=!ending] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.6","with":[{"type":"selector","selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=674},tag=!ending] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.6.more"}]}
execute if entity @s[scores={Dialog=674},tag=!ending] run playsound luigis_mansion:entity.e_gadd.talk.ooh_ooh_yahboh_yahboh_hoo_hoo_hoo neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=674},tag=ending] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.ending.5"}]}
execute if entity @s[scores={Dialog=674},tag=ending] run playsound luigis_mansion:entity.e_gadd.talk.ohmoogah_luigi_odoh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=802},tag=ending] run scoreboard players set @s Dialog 810
data remove entity @s[scores={Dialog=810},tag=ending] data.animation
data modify entity @s[scores={Dialog=810},tag=!ending] data.animation set value {namespace:"luigis_mansion",id:"walk"}
execute if entity @s[scores={Dialog=810}] as @a[tag=same_room] run function luigis_mansion:other/music/set/portraits
execute if entity @s[scores={Dialog=810}] run function e3_demo:dialog/portrificationizing/get_ghost_coin
execute if entity @s[scores={Dialog=810}] unless score #temp Money matches 0 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.money","with":[{"type":"translatable","translate":"e3_demo:item.ghost_coin"},{"type":"score","score":{"objective":"Money","name":"#temp"}},{"type":"score","score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=810}] if score #temp Money matches 0 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=810..825}] unless score #temp Money matches 0 if score #temp Dialog matches 0 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=830}] run function luigis_mansion:dialog/portrificationizing/get_total_score
execute if entity @s[scores={Dialog=830}] if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:0} run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.money.multiplier.peaceful"}]}
execute if entity @s[scores={Dialog=830}] if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:1} run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.money.multiplier.easy"}]}
execute if entity @s[scores={Dialog=830}] if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:2} run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.money.multiplier.normal"}]}
execute if entity @s[scores={Dialog=830}] if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:3} run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.money.multiplier.hard"}]}
execute if entity @s[scores={Dialog=830}] if score #temp Money matches 1.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.money.total","with":[{"type":"score","score":{"objective":"Money","name":"#temp"}}]}]}
execute if entity @s[scores={Dialog=830}] unless score #temp Money matches 1.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.money.total.no_money"}]}
execute if entity @s[scores={Dialog=830},tag=ending] if data storage luigis_mansion:data current_state.high_scores[0] run function luigis_mansion:dialog/portrificationizing/get_high_score
execute if entity @s[scores={Dialog=830},tag=ending] run scoreboard players operation #temp2 Money > #temp Money
execute if entity @s[scores={Dialog=830},tag=ending] run function luigis_mansion:dialog/portrificationizing/save_high_score
execute if entity @s[scores={Dialog=830},tag=ending] if score #temp2 Money matches 1.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.money.high_score","with":[{"type":"score","score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=830},tag=ending] unless score #temp2 Money matches 1.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.money.high_score.no_money"}]}
execute if entity @s[scores={Dialog=830..845}] unless score #temp Money matches 0 if score #temp Dialog matches 0 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=850}] run scoreboard players reset #temp Money
execute if entity @s[scores={Dialog=850}] run scoreboard players reset #temp2 Money
teleport @s[scores={Dialog=810..1068}] ~ ~ ~0.1 0 0
teleport @s[scores={Dialog=1069}] 774 77 14 0 0
data remove entity @s[scores={Dialog=1069}] data.animation
execute at @s[scores={Dialog=1069..}] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=850},tag=ending] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.the_end"}]}
execute if entity @s[scores={Dialog=850},tag=ending] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.the_end.more"}]}
execute if entity @s[scores={Dialog=1070},tag=ending] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.the_end.h_rank"}]}
execute if entity @s[scores={Dialog=1070},tag=ending] run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.h set value 1b
execute if entity @s[scores={Dialog=1070},tag=ending] run function #luigis_mansion:cleared_mansion
execute if entity @s[scores={Dialog=1070},tag=ending] unless score #3ds_remake Loaded matches 1.. run function luigis_mansion:old_entities/mario/delete_mansion_data
execute if entity @s[scores={Dialog=1070},tag=ending] unless score #3ds_remake Loaded matches 1.. run scoreboard players set #mansion_type Selected -1
execute if entity @s[scores={Dialog=1070},tag=ending] unless score #3ds_remake Loaded matches 1.. run scoreboard players set #mansion_data_index Selected -1
execute if entity @s[scores={Dialog=1070},tag=ending] unless score #3ds_remake Loaded matches 1.. run scoreboard players set #previous_mansion_index Selected -1
execute if entity @s[scores={Dialog=1070},tag=ending] unless score #3ds_remake Loaded matches 1.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"luigis_mansion:message.save.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger EGaddGhostPortrificationizerRoomChoice set 1"},"extra":[{"type":"text","text":"\n"},{"type":"translatable","translate":"luigis_mansion:message.save.no","clickEvent":{"action":"run_command","value":"/trigger EGaddGhostPortrificationizerRoomChoice set 2"}}]}
execute if entity @s[scores={Dialog=1070},tag=!ending] run tellraw @a[tag=same_room] {"type":"translatable","translate":"luigis_mansion:message.save.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger EGaddGhostPortrificationizerRoomChoice set 1"},"extra":[{"type":"text","text":"\n"},{"type":"translatable","translate":"luigis_mansion:message.save.no","clickEvent":{"action":"run_command","value":"/trigger EGaddGhostPortrificationizerRoomChoice set 2"}}]}
execute if entity @s[scores={Dialog=1070},tag=ending] unless score #3ds_remake Loaded matches 1.. run scoreboard players enable @a[tag=same_room] EGaddGhostPortrificationizerRoomChoice
execute if entity @s[scores={Dialog=1070},tag=!ending] run scoreboard players enable @a[tag=same_room] EGaddGhostPortrificationizerRoomChoice
execute if entity @s[scores={Dialog=1070},tag=ending] unless score #3ds_remake Loaded matches 1.. run tag @a add show_credits
execute if entity @s[scores={Dialog=1071},tag=ending] unless score #3ds_remake Loaded matches 1.. unless entity @a[tag=same_room,limit=1] run scoreboard players set @s Dialog 1072
execute if entity @s[scores={Dialog=1071},tag=!ending] unless entity @a[tag=same_room,limit=1] run scoreboard players set @s Dialog 1072
execute if entity @s[scores={Dialog=1071},tag=ending] if score #3ds_remake Loaded matches 1.. run scoreboard players set @s Dialog 1072
execute if entity @s[scores={Dialog=1072},tag=ending] unless score #3ds_remake Loaded matches 1.. as @a[scores={EGaddGhostPortrificationizerRoomChoice=1},limit=1] run function luigis_mansion:data/save
execute if entity @s[scores={Dialog=1072},tag=!ending] as @a[scores={EGaddGhostPortrificationizerRoomChoice=1},limit=1] run function luigis_mansion:data/save
execute if entity @s[scores={Dialog=1072},tag=ending] unless score #3ds_remake Loaded matches 1.. run scoreboard players reset @a[tag=same_room] EGaddGhostPortrificationizerRoomChoice
execute if entity @s[scores={Dialog=1072},tag=!ending] run scoreboard players reset @a[tag=same_room] EGaddGhostPortrificationizerRoomChoice
execute if entity @s[scores={Dialog=1072},tag=ending] unless score #3ds_remake Loaded matches 1.. as @a[tag=same_room] run function luigis_mansion:other/music/set/credits
tag @s[scores={Dialog=1072}] remove portrificationizing
execute if score #3ds_remake Loaded matches 1.. run tag @s[scores={Dialog=1072},tag=ending] add gooigi_results
tag @s[scores={Dialog=1072}] remove ending
execute if entity @s[scores={Dialog=1072}] run scoreboard players reset @a EGaddGhostPortrificationizerRoomChoice
scoreboard players set @s[scores={Dialog=1072}] Dialog 0
scoreboard players reset #temp Dialog