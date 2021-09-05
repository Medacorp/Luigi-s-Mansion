execute unless entity @e[tag=portrificationizing_ghost,limit=1] run scoreboard players add @s[scores={Dialog=665..}] Dialog 1
scoreboard players add @s[scores={Dialog=..664}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] as @a[tag=same_room] run function luigis_mansion:other/music/set/portrificationizing
execute if entity @s[scores={Dialog=1}] run function #luigis_mansion:portrificationize_ghosts
teleport @s[scores={Dialog=1}] ~ ~ ~ facing 771 77 15
tag @s[scores={Dialog=201}] add jump
execute if entity @s[scores={Dialog=201}] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
teleport @s[scores={Dialog=201..210}] ~ ~0.05 ~
teleport @s[scores={Dialog=211..220}] ~ ~-0.05 ~
teleport @s[scores={Dialog=221..230}] ~ ~0.05 ~
teleport @s[scores={Dialog=231..240}] ~ ~-0.05 ~
teleport @s[scores={Dialog=241..250}] ~ ~0.05 ~
teleport @s[scores={Dialog=251..260}] ~ ~-0.05 ~
teleport @s[scores={Dialog=261..270}] ~ ~0.05 ~
teleport @s[scores={Dialog=271..280}] ~ ~-0.05 ~
tag @s[scores={Dialog=280}] remove jump
execute if entity @s[scores={Dialog=280}] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
tag @s[scores={Dialog=300}] add walk
execute if entity @s[scores={Dialog=300}] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
teleport @s[scores={Dialog=300..335}] ~ ~ ~-0.2 -180 0
tag @s[scores={Dialog=335}] remove walk
execute if entity @s[scores={Dialog=335}] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=336..359}] facing entity @e[tag=portrificationizing_ghost,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
tag @s[scores={Dialog=360}] add walk
execute if entity @s[scores={Dialog=360}] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
teleport @s[scores={Dialog=360..395}] ~ ~ ~-0.115 -180 0
tag @s[scores={Dialog=395}] remove walk
execute if entity @s[scores={Dialog=395}] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=396..439}] facing entity @e[tag=portrificationizing_ghost,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
tag @s[scores={Dialog=440}] add walk
execute if entity @s[scores={Dialog=440}] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
teleport @s[scores={Dialog=440..475}] ~ ~ ~-0.171 -180 0
tag @s[scores={Dialog=475}] remove walk
execute if entity @s[scores={Dialog=475}] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=476..519}] facing entity @e[tag=portrificationizing_ghost,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
tag @s[scores={Dialog=520}] add walk
execute if entity @s[scores={Dialog=520}] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
teleport @s[scores={Dialog=520..555}] ~ ~ ~-0.228 -180 0
tag @s[scores={Dialog=555}] remove walk
execute if entity @s[scores={Dialog=555}] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
teleport @s[scores={Dialog=556..809}] ~ ~ ~ facing 770 77 -12
execute if entity @s[scores={Dialog=360}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.1"}]}
execute if entity @s[scores={Dialog=440}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.2"}]}
execute if entity @s[scores={Dialog=520}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.3"}]}
execute if entity @s[scores={Dialog=600}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.4"}]}
tag @s[scores={Dialog=666}] add nod
execute if entity @s[scores={Dialog=666}] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=666}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.5"}]}
execute if entity @s[scores={Dialog=674},tag=!ending] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.6","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=674},tag=!ending] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.6.more"}]}
execute if entity @s[scores={Dialog=674},tag=ending] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.ending.5"}]}
execute if entity @s[scores={Dialog=802},tag=ending] run scoreboard players set @s Dialog 810
tag @s[scores={Dialog=810}] remove nod
tag @s[scores={Dialog=810},tag=!ending] add walk
execute if entity @s[scores={Dialog=810}] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=810}] as @a[tag=same_room] run function luigis_mansion:other/music/set/portraits
execute if entity @s[scores={Dialog=810}] run function luigis_mansion:dialog/portrificationizing/get_gold_coin
execute if entity @s[scores={Dialog=810}] unless score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.gold_coin"},{"score":{"objective":"Money","name":"#temp"}},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=810}] if score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=830}] run function luigis_mansion:dialog/portrificationizing/get_bill
execute if entity @s[scores={Dialog=830}] unless score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.bill"},{"score":{"objective":"Money","name":"#temp"}},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=830}] if score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=850}] run function luigis_mansion:dialog/portrificationizing/get_gold_bar
execute if entity @s[scores={Dialog=850}] unless score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.gold_bar"},{"score":{"objective":"Money","name":"#temp"}},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=850}] if score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=870}] run function luigis_mansion:dialog/portrificationizing/get_blue_sapphire
execute if entity @s[scores={Dialog=870}] unless score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.blue_sapphire"},{"score":{"objective":"Money","name":"#temp"}},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=870}] if score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=890}] run function luigis_mansion:dialog/portrificationizing/get_green_emerald
execute if entity @s[scores={Dialog=890}] unless score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.green_emerald"},{"score":{"objective":"Money","name":"#temp"}},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=890}] if score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=910}] run function luigis_mansion:dialog/portrificationizing/get_red_ruby
execute if entity @s[scores={Dialog=910}] unless score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.red_ruby"},{"score":{"objective":"Money","name":"#temp"}},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=910}] if score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=930}] run function luigis_mansion:dialog/portrificationizing/get_blue_diamond
execute if entity @s[scores={Dialog=930}] unless score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.blue_diamond"},{"score":{"objective":"Money","name":"#temp"}},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=930}] if score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=950}] run function luigis_mansion:dialog/portrificationizing/get_red_diamond
execute if entity @s[scores={Dialog=950}] unless score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.red_diamond"},{"score":{"objective":"Money","name":"#temp"}},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=950}] if score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=970}] run function luigis_mansion:dialog/portrificationizing/get_gold_diamond
execute if entity @s[scores={Dialog=970}] unless score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.gold_diamond"},{"score":{"objective":"Money","name":"#temp"}},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=970}] if score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=990}] run function luigis_mansion:dialog/portrificationizing/get_small_pearl
execute if entity @s[scores={Dialog=990}] unless score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.small_pearl"},{"score":{"objective":"Money","name":"#temp"}},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=990}] if score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=1010}] run function luigis_mansion:dialog/portrificationizing/get_medium_pearl
execute if entity @s[scores={Dialog=1010}] unless score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.medium_pearl"},{"score":{"objective":"Money","name":"#temp"}},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=1010}] if score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=1030}] run function luigis_mansion:dialog/portrificationizing/get_big_pearl
execute if entity @s[scores={Dialog=1030}] unless score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.big_pearl"},{"score":{"objective":"Money","name":"#temp"}},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=1030}] if score #temp Money matches 0 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=1050}] run function luigis_mansion:dialog/portrificationizing/get_total_score
execute if entity @s[scores={Dialog=1050}] if score #temp Money matches 1.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.total","with":[{"score":{"objective":"Money","name":"#temp"}}]}]}
execute if entity @s[scores={Dialog=1050}] unless score #temp Money matches 1.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=1050},tag=ending] if data storage luigis_mansion:data high_scores[0] run function luigis_mansion:dialog/portrificationizing/get_high_score
execute if entity @s[scores={Dialog=1050},tag=ending] run scoreboard players operation #temp2 Money > #temp Money
execute if entity @s[scores={Dialog=1050},tag=ending] run function luigis_mansion:dialog/portrificationizing/save_high_score
execute if entity @s[scores={Dialog=1050},tag=ending] if score #temp2 Money matches 1.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.high_score","with":[{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=1050},tag=ending] unless score #temp2 Money matches 1.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.high_score","with":[{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=1050}] run scoreboard players reset #temp Money
execute if entity @s[scores={Dialog=1050}] run scoreboard players reset #temp2 Money
teleport @s[scores={Dialog=810..1068},tag=!ending] ~ ~ ~0.1 0 0
teleport @s[scores={Dialog=1069},tag=!ending] 774 77 14 0 0
tag @s[scores={Dialog=1069},tag=!ending] remove walk
execute if entity @s[scores={Dialog=1069},tag=!ending] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
tag @s[scores={Dialog=1070}] remove portrificationizing
tag @s[scores={Dialog=1070},tag=ending] add mario_to_normal
tag @s[scores={Dialog=1070}] remove ending
scoreboard players set @s[tag=!portrificationizing] Dialog 0