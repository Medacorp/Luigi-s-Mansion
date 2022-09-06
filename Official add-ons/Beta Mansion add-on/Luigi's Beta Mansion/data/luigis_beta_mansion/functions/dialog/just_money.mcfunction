execute if entity @a[scores={EGaddGPRChoice=1..},limit=1] run scoreboard players add @s[scores={Dialog=701..}] Dialog 1
scoreboard players add @s[scores={Dialog=..700}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1}] add nod
execute if entity @s[scores={Dialog=1..457}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
scoreboard players set @s[scores={Dialog=1}] AnimationProg 0
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_beta_mansion:dialog.just_money.1","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_beta_mansion:dialog.just_money.1.more"}]}
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.e_gadd.talk.ohmoogah_luigi_odoh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=96}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_beta_mansion:dialog.just_money.2"}]}
execute if entity @s[scores={Dialog=96}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_beta_mansion:dialog.just_money.2.more"}]}
execute if entity @s[scores={Dialog=96}] run playsound luigis_mansion:entity.e_gadd.talk.soh_suu_suhm_ehdeedee_ck_ck_suku_suku neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=376}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_beta_mansion:dialog.just_money.3"}]}
execute if entity @s[scores={Dialog=376}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_beta_mansion:dialog.just_money.3.more"}]}
execute if entity @s[scores={Dialog=376}] run playsound luigis_mansion:entity.e_gadd.talk.bohh_squirtbottlelaugh neutral @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=456}] remove nod
execute if entity @s[scores={Dialog=458}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
scoreboard players set @s[scores={Dialog=458}] AnimationProg 0
execute if entity @s[scores={Dialog=458}] as @a[tag=same_room] run function luigis_mansion:other/music/set/portraits
execute if entity @s[scores={Dialog=458}] run function luigis_beta_mansion:dialog/portrificationizing/get_ghost_coin
execute if entity @s[scores={Dialog=458}] unless score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_beta_mansion:item.ghost_coin"},{"score":{"objective":"Money","name":"#temp"}},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=458}] if score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=458..473}] unless score #temp Money matches 0 if score #temp Dialog matches 0 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=478}] run function luigis_mansion:dialog/portrificationizing/get_total_score
execute if entity @s[scores={Dialog=478}] if score #temp Money matches 1.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.total","with":[{"score":{"objective":"Money","name":"#temp"}}]}]}
execute if entity @s[scores={Dialog=478}] unless score #temp Money matches 1.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.total.no_money"}]}
execute if entity @s[scores={Dialog=478}] if data storage luigis_mansion:data current_state.high_scores[0] run function luigis_mansion:dialog/portrificationizing/get_high_score
execute if entity @s[scores={Dialog=478}] run scoreboard players operation #temp2 Money > #temp Money
execute if entity @s[scores={Dialog=478}] run function luigis_mansion:dialog/portrificationizing/save_high_score
execute if entity @s[scores={Dialog=478}] if score #temp2 Money matches 1.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.high_score","with":[{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=478}] unless score #temp2 Money matches 1.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.high_score.no_money"}]}
execute if entity @s[scores={Dialog=478..493}] unless score #temp Money matches 0 if score #temp Dialog matches 0 as @a[tag=same_room] at @s run playsound luigis_mansion:item.count_money player @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=498}] run scoreboard players reset #temp Money
execute if entity @s[scores={Dialog=498}] run scoreboard players reset #temp2 Money
execute if entity @s[scores={Dialog=480}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.the_end"}]}
execute if entity @s[scores={Dialog=480}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.the_end.more"}]}
execute if entity @s[scores={Dialog=700}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.the_end.h_rank"}]}
execute if entity @s[scores={Dialog=700}] run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.h set value 1b
execute if entity @s[scores={Dialog=700}] run function #luigis_mansion:cleared_mansion
execute if entity @s[scores={Dialog=700}] unless score #3ds_remake Loaded matches 1.. run function luigis_mansion:entities/mario/delete_mansion_data
execute if entity @s[scores={Dialog=700}] unless score #3ds_remake Loaded matches 1.. run scoreboard players set #mansion_type Selected -1
execute if entity @s[scores={Dialog=700}] unless score #3ds_remake Loaded matches 1.. run scoreboard players set #mansion_data_index Selected -1
execute if entity @s[scores={Dialog=700}] unless score #3ds_remake Loaded matches 1.. run scoreboard players set #previous_mansion_index Selected -1
execute if entity @s[scores={Dialog=700}] unless score #3ds_remake Loaded matches 1.. run tellraw @a[tag=same_room] {"translate":"luigis_mansion:message.save.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger EGaddGPRChoice set 1"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:message.save.no","clickEvent":{"action":"run_command","value":"/trigger EGaddGPRChoice set 2"}}]}
execute if entity @s[scores={Dialog=700}] unless score #3ds_remake Loaded matches 1.. run scoreboard players enable @a[tag=same_room] EGaddGPRChoice
execute if entity @s[scores={Dialog=700}] unless score #3ds_remake Loaded matches 1.. run tag @a add show_credits
execute if entity @s[scores={Dialog=701}] unless score #3ds_remake Loaded matches 1.. unless entity @a[tag=same_room,limit=1] run scoreboard players set @s Dialog 702
execute if entity @s[scores={Dialog=701}] if score #3ds_remake Loaded matches 1.. run scoreboard players set @s Dialog 702
execute if entity @s[scores={Dialog=702}] unless score #3ds_remake Loaded matches 1.. as @a[scores={EGaddGPRChoice=1},limit=1] run function luigis_mansion:data/save
execute if entity @s[scores={Dialog=702}] unless score #3ds_remake Loaded matches 1.. run scoreboard players reset @a[tag=same_room] EGaddGPRChoice
execute if entity @s[scores={Dialog=702}] unless score #3ds_remake Loaded matches 1.. as @a[tag=same_room] run function luigis_mansion:other/music/set/credits
tag @s[scores={Dialog=702}] remove just_money_dialog
execute if score #3ds_remake Loaded matches 1.. run tag @s[scores={Dialog=702}] add gooigi_results
scoreboard players set @s[scores={Dialog=702}] Dialog 0