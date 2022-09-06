execute if entity @a[scores={EGaddGPRChoice=1..},limit=1] run scoreboard players add @s[scores={Dialog=1071..}] Dialog 1
execute unless entity @e[tag=portrificationizing_ghost,limit=1] run scoreboard players add @s[scores={Dialog=665..1070}] Dialog 1
scoreboard players add @s[scores={Dialog=..664}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
scoreboard players operation #temp Dialog = @s Dialog
scoreboard players operation #temp Dialog %= #2 Constants
execute if entity @s[scores={Dialog=1}] as @a[tag=same_room] run function luigis_mansion:other/music/set/portrificationizing
execute if entity @s[scores={Dialog=1}] run function #luigis_mansion:portrificationize_ghosts
teleport @s[scores={Dialog=1}] ~ ~ ~ facing 771 77 15
tag @s[scores={Dialog=201}] add jump
scoreboard players set @s[scores={Dialog=201}] AnimationProg 0
tag @s[scores={Dialog=280}] remove jump
scoreboard players set @s[scores={Dialog=280}] AnimationProg 0
tag @s[scores={Dialog=300}] add walk
scoreboard players set @s[scores={Dialog=300}] AnimationProg 0
teleport @s[scores={Dialog=300..335}] ~ ~ ~-0.2 -180 0
tag @s[scores={Dialog=335}] remove walk
scoreboard players set @s[scores={Dialog=335}] AnimationProg 0
execute if entity @s[scores={Dialog=336..359}] facing entity @e[tag=portrificationizing_ghost,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
tag @s[scores={Dialog=360}] add walk
scoreboard players set @s[scores={Dialog=360}] AnimationProg 0
teleport @s[scores={Dialog=360..395}] ~ ~ ~-0.115 -180 0
tag @s[scores={Dialog=395}] remove walk
scoreboard players set @s[scores={Dialog=395}] AnimationProg 0
execute if entity @s[scores={Dialog=396..439}] facing entity @e[tag=portrificationizing_ghost,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
tag @s[scores={Dialog=440}] add walk
scoreboard players set @s[scores={Dialog=440}] AnimationProg 0
teleport @s[scores={Dialog=440..475}] ~ ~ ~-0.171 -180 0
tag @s[scores={Dialog=475}] remove walk
scoreboard players set @s[scores={Dialog=475}] AnimationProg 0
execute if entity @s[scores={Dialog=476..519}] facing entity @e[tag=portrificationizing_ghost,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
tag @s[scores={Dialog=520}] add walk
scoreboard players set @s[scores={Dialog=520}] AnimationProg 0
teleport @s[scores={Dialog=520..555}] ~ ~ ~-0.228 -180 0
tag @s[scores={Dialog=555}] remove walk
scoreboard players set @s[scores={Dialog=555}] AnimationProg 0
teleport @s[scores={Dialog=556..809}] ~ ~ ~ facing 770 77 -12
execute if entity @s[scores={Dialog=360}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.1"}]}
execute if entity @s[scores={Dialog=360}] run playsound luigis_mansion:entity.e_gadd.talk.seedapee_ohyah neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=440}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.2"}]}
execute if entity @s[scores={Dialog=440}] run playsound luigis_mansion:entity.e_gadd.talk.keeyehroo_suu neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=520}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.3"}]}
execute if entity @s[scores={Dialog=520}] run playsound luigis_mansion:entity.e_gadd.talk.hoo_hoo_hoo neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=600}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.4"}]}
execute if entity @s[scores={Dialog=600}] run playsound luigis_mansion:entity.e_gadd.talk.keekehrookukukay neutral @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=666}] add nod
scoreboard players set @s[scores={Dialog=666}] AnimationProg 0
execute if entity @s[scores={Dialog=666}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.5"}]}
execute if entity @s[scores={Dialog=666}] run playsound luigis_mansion:entity.e_gadd.talk.jeemee_jeemee neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=674},tag=!ending] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.6","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=674},tag=!ending] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.6.more"}]}
execute if entity @s[scores={Dialog=674},tag=!ending] run playsound luigis_mansion:entity.e_gadd.talk.ooh_ooh_yahboh_yahboh_hoo_hoo_hoo neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=674},tag=ending] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.ending.5"}]}
execute if entity @s[scores={Dialog=674},tag=ending] run playsound luigis_mansion:entity.e_gadd.talk.ohmoogah_luigi_odoh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=802},tag=ending] run scoreboard players set @s Dialog 810
tag @s[scores={Dialog=810}] remove nod
tag @s[scores={Dialog=810}] add walk
scoreboard players set @s[scores={Dialog=810}] AnimationProg 0
execute if entity @s[scores={Dialog=810}] as @a[tag=same_room] run function luigis_mansion:other/music/set/portraits
execute if entity @s[scores={Dialog=810}] run function luigis_beta_mansion:dialog/portrificationizing/get_ghost_coin
execute if entity @s[scores={Dialog=810}] unless score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_beta_mansion:item.ghost_coin"},{"score":{"objective":"Money","name":"#temp"}},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=810}] if score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=810..825}] unless score #temp Money matches 0 if score #temp Dialog matches 0 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=830}] run function luigis_mansion:dialog/portrificationizing/get_total_score
execute if entity @s[scores={Dialog=830}] if score #temp Money matches 1.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.total","with":[{"score":{"objective":"Money","name":"#temp"}}]}]}
execute if entity @s[scores={Dialog=830}] unless score #temp Money matches 1.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.total.no_money"}]}
execute if entity @s[scores={Dialog=830},tag=ending] if data storage luigis_mansion:data current_state.high_scores[0] run function luigis_mansion:dialog/portrificationizing/get_high_score
execute if entity @s[scores={Dialog=830},tag=ending] run scoreboard players operation #temp2 Money > #temp Money
execute if entity @s[scores={Dialog=830},tag=ending] run function luigis_mansion:dialog/portrificationizing/save_high_score
execute if entity @s[scores={Dialog=830},tag=ending] if score #temp2 Money matches 1.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.high_score","with":[{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=830},tag=ending] unless score #temp2 Money matches 1.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.high_score.no_money"}]}
execute if entity @s[scores={Dialog=830..845}] unless score #temp Money matches 0 if score #temp Dialog matches 0 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=850}] run scoreboard players reset #temp Money
execute if entity @s[scores={Dialog=850}] run scoreboard players reset #temp2 Money
teleport @s[scores={Dialog=810..1068}] ~ ~ ~0.1 0 0
teleport @s[scores={Dialog=1069}] 774 77 14 0 0
tag @s[scores={Dialog=1069}] remove walk
execute at @s[scores={Dialog=1069..}] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s[scores={Dialog=1069}] AnimationProg 0
execute if entity @s[scores={Dialog=850},tag=ending] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.the_end"}]}
execute if entity @s[scores={Dialog=850},tag=ending] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.the_end.more"}]}
execute if entity @s[scores={Dialog=1070},tag=ending] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.the_end.h_rank"}]}
execute if entity @s[scores={Dialog=1070},tag=ending] run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.h set value 1b
execute if entity @s[scores={Dialog=1070},tag=ending] run function #luigis_mansion:cleared_mansion
execute if entity @s[scores={Dialog=1070},tag=ending] unless score #3ds_remake Loaded matches 1.. run function luigis_mansion:entities/mario/delete_mansion_data
execute if entity @s[scores={Dialog=1070},tag=ending] unless score #3ds_remake Loaded matches 1.. run scoreboard players set #mansion_type Selected -1
execute if entity @s[scores={Dialog=1070},tag=ending] unless score #3ds_remake Loaded matches 1.. run scoreboard players set #mansion_data_index Selected -1
execute if entity @s[scores={Dialog=1070},tag=ending] unless score #3ds_remake Loaded matches 1.. run scoreboard players set #previous_mansion_index Selected -1
execute if entity @s[scores={Dialog=1070},tag=ending] unless score #3ds_remake Loaded matches 1.. run tellraw @a[tag=same_room] {"translate":"luigis_mansion:message.save.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger EGaddGPRChoice set 1"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:message.save.no","clickEvent":{"action":"run_command","value":"/trigger EGaddGPRChoice set 2"}}]}
execute if entity @s[scores={Dialog=1070},tag=!ending] run tellraw @a[tag=same_room] {"translate":"luigis_mansion:message.save.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger EGaddGPRChoice set 1"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:message.save.no","clickEvent":{"action":"run_command","value":"/trigger EGaddGPRChoice set 2"}}]}
execute if entity @s[scores={Dialog=1070},tag=ending] unless score #3ds_remake Loaded matches 1.. run scoreboard players enable @a[tag=same_room] EGaddGPRChoice
execute if entity @s[scores={Dialog=1070},tag=!ending] run scoreboard players enable @a[tag=same_room] EGaddGPRChoice
execute if entity @s[scores={Dialog=1070},tag=ending] unless score #3ds_remake Loaded matches 1.. run tag @a add show_credits
execute if entity @s[scores={Dialog=1071},tag=ending] unless score #3ds_remake Loaded matches 1.. unless entity @a[tag=same_room,limit=1] run scoreboard players set @s Dialog 1072
execute if entity @s[scores={Dialog=1071},tag=!ending] unless entity @a[tag=same_room,limit=1] run scoreboard players set @s Dialog 1072
execute if entity @s[scores={Dialog=1071},tag=ending] if score #3ds_remake Loaded matches 1.. run scoreboard players set @s Dialog 1072
execute if entity @s[scores={Dialog=1072},tag=ending] unless score #3ds_remake Loaded matches 1.. as @a[scores={EGaddGPRChoice=1},limit=1] run function luigis_mansion:data/save
execute if entity @s[scores={Dialog=1072},tag=!ending] as @a[scores={EGaddGPRChoice=1},limit=1] run function luigis_mansion:data/save
execute if entity @s[scores={Dialog=1072},tag=ending] unless score #3ds_remake Loaded matches 1.. run scoreboard players reset @a[tag=same_room] EGaddGPRChoice
execute if entity @s[scores={Dialog=1072},tag=!ending] run scoreboard players reset @a[tag=same_room] EGaddGPRChoice
execute if entity @s[scores={Dialog=1072},tag=ending] unless score #3ds_remake Loaded matches 1.. as @a[tag=same_room] run function luigis_mansion:other/music/set/credits
tag @s[scores={Dialog=1072}] remove portrificationizing
execute if score #3ds_remake Loaded matches 1.. run tag @s[scores={Dialog=1072},tag=ending] add gooigi_results
tag @s[scores={Dialog=1072}] remove ending
execute if entity @s[scores={Dialog=1072}] run scoreboard players reset @a EGaddGPRChoice
scoreboard players set @s[scores={Dialog=1072}] Dialog 0
scoreboard players reset #temp Dialog