execute unless entity @e[tag=portrificationizing_ghost,limit=1] run scoreboard players add @s[scores={Dialog=665..}] Dialog 1
scoreboard players add @s[scores={Dialog=..664}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room] MusicType 22
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room] Music 0
execute if entity @s[scores={Dialog=1}] run function #luigis_mansion:portrificationize_ghosts
teleport @s[scores={Dialog=1}] ~ ~ ~ facing 771 77 15
tag @s[scores={Dialog=201}] add jump
teleport @s[scores={Dialog=201..210}] ~ ~0.05 ~
teleport @s[scores={Dialog=211..220}] ~ ~-0.05 ~
teleport @s[scores={Dialog=221..230}] ~ ~0.05 ~
teleport @s[scores={Dialog=231..240}] ~ ~-0.05 ~
teleport @s[scores={Dialog=241..250}] ~ ~0.05 ~
teleport @s[scores={Dialog=251..260}] ~ ~-0.05 ~
teleport @s[scores={Dialog=261..270}] ~ ~0.05 ~
teleport @s[scores={Dialog=271..280}] ~ ~-0.05 ~
tag @s[scores={Dialog=280}] remove jump
tag @s[scores={Dialog=300}] add walk
teleport @s[scores={Dialog=300..335}] ~ ~ ~-0.2 -180 0
tag @s[scores={Dialog=335}] remove walk
execute if entity @s[scores={Dialog=336..359}] facing entity @e[tag=portrificationizing_ghost,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
tag @s[scores={Dialog=360}] add walk
teleport @s[scores={Dialog=360..395}] ~ ~ ~-0.115 -180 0
tag @s[scores={Dialog=395}] remove walk
execute if entity @s[scores={Dialog=396..439}] facing entity @e[tag=portrificationizing_ghost,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
tag @s[scores={Dialog=440}] add walk
teleport @s[scores={Dialog=440..475}] ~ ~ ~-0.171 -180 0
tag @s[scores={Dialog=475}] remove walk
execute if entity @s[scores={Dialog=476..519}] facing entity @e[tag=portrificationizing_ghost,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
tag @s[scores={Dialog=520}] add walk
teleport @s[scores={Dialog=520..555}] ~ ~ ~-0.228 -180 0
tag @s[scores={Dialog=555}] remove walk
teleport @s[scores={Dialog=556..809}] ~ ~ ~ facing 770 77 -12
execute if entity @s[scores={Dialog=360}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.1"}]}
execute if entity @s[scores={Dialog=440}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.2"}]}
execute if entity @s[scores={Dialog=520}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.3"}]}
execute if entity @s[scores={Dialog=600}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.4"}]}
tag @s[scores={Dialog=666}] add nod
execute if entity @s[scores={Dialog=666}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.5"}]}
execute if entity @s[scores={Dialog=674},tag=!ending] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.6","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=674},tag=!ending] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.portrificationizing.6.more"}]}
execute if entity @s[scores={Dialog=674},tag=ending] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.ending.5"}]}
execute if entity @s[scores={Dialog=802},tag=ending] run scoreboard players set @s Dialog 810
tag @s[scores={Dialog=810}] remove nod
tag @s[scores={Dialog=810},tag=!ending] add walk
execute if entity @s[scores={Dialog=810}] run scoreboard players set @a[tag=same_room] MusicType 38
execute if entity @s[scores={Dialog=810}] run scoreboard players set @a[tag=same_room] Music 0
execute if entity @s[scores={Dialog=810}] store result score #temp2 Money run data get storage luigis_mansion:data current_state.current_data.money.gold_coin
execute if entity @s[scores={Dialog=810}] run scoreboard players operation #temp2 Money *= #5 Constants
execute if entity @s[scores={Dialog=810}] run scoreboard players operation #temp Money += #temp2 Money
execute if entity @s[scores={Dialog=810}] unless data storage luigis_mansion:data current_state.current_data.money{gold_coin:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.gold_coin"},{"storage":"luigis_mansion:data","nbt":"current_state.current_data.money.gold_coin"},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=810}] if data storage luigis_mansion:data current_state.current_data.money{gold_coin:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=830}] store result score #temp2 Money run data get storage luigis_mansion:data current_state.current_data.money.bill
execute if entity @s[scores={Dialog=830}] run scoreboard players operation #temp2 Money *= #20 Constants
execute if entity @s[scores={Dialog=830}] run scoreboard players operation #temp Money += #temp2 Money
execute if entity @s[scores={Dialog=830}] unless data storage luigis_mansion:data current_state.current_data.money{bill:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.bill"},{"storage":"luigis_mansion:data","nbt":"current_state.current_data.money.bill"},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=830}] if data storage luigis_mansion:data current_state.current_data.money{bill:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=850}] store result score #temp2 Money run data get storage luigis_mansion:data current_state.current_data.money.gold_bar
execute if entity @s[scores={Dialog=850}] run scoreboard players operation #temp2 Money *= #100 Constants
execute if entity @s[scores={Dialog=850}] run scoreboard players operation #temp Money += #temp2 Money
execute if entity @s[scores={Dialog=850}] unless data storage luigis_mansion:data current_state.current_data.money{gold_bar:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.gold_bar"},{"storage":"luigis_mansion:data","nbt":"current_state.current_data.money.gold_bar"},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=850}] if data storage luigis_mansion:data current_state.current_data.money{gold_bar:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=870}] store result score #temp2 Money run data get storage luigis_mansion:data current_state.current_data.money.blue_sapphire
execute if entity @s[scores={Dialog=870}] run scoreboard players operation #temp2 Money *= #500 Constants
execute if entity @s[scores={Dialog=870}] run scoreboard players operation #temp Money += #temp2 Money
execute if entity @s[scores={Dialog=870}] unless data storage luigis_mansion:data current_state.current_data.money{blue_sapphire:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.blue_sapphire"},{"storage":"luigis_mansion:data","nbt":"current_state.current_data.money.blue_sapphire"},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=870}] if data storage luigis_mansion:data current_state.current_data.money{blue_sapphire:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=890}] store result score #temp2 Money run data get storage luigis_mansion:data current_state.current_data.money.green_emerald
execute if entity @s[scores={Dialog=890}] run scoreboard players operation #temp2 Money *= #800 Constants
execute if entity @s[scores={Dialog=890}] run scoreboard players operation #temp Money += #temp2 Money
execute if entity @s[scores={Dialog=890}] unless data storage luigis_mansion:data current_state.current_data.money{green_emerald:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.green_emerald"},{"storage":"luigis_mansion:data","nbt":"current_state.current_data.money.green_emerald"},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=890}] if data storage luigis_mansion:data current_state.current_data.money{green_emerald:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=910}] store result score #temp2 Money run data get storage luigis_mansion:data current_state.current_data.money.red_ruby
execute if entity @s[scores={Dialog=910}] run scoreboard players operation #temp2 Money *= #1000 Constants
execute if entity @s[scores={Dialog=910}] run scoreboard players operation #temp Money += #temp2 Money
execute if entity @s[scores={Dialog=910}] unless data storage luigis_mansion:data current_state.current_data.money{red_ruby:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.red_ruby"},{"storage":"luigis_mansion:data","nbt":"current_state.current_data.money.red_ruby"},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=910}] if data storage luigis_mansion:data current_state.current_data.money{red_ruby:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=930}] store result score #temp2 Money run data get storage luigis_mansion:data current_state.current_data.money.blue_diamond
execute if entity @s[scores={Dialog=930}] run scoreboard players operation #temp2 Money *= #2000 Constants
execute if entity @s[scores={Dialog=930}] run scoreboard players operation #temp Money += #temp2 Money
execute if entity @s[scores={Dialog=930}] unless data storage luigis_mansion:data current_state.current_data.money{blue_diamond:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.blue_diamond"},{"storage":"luigis_mansion:data","nbt":"current_state.current_data.money.blue_diamond"},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=930}] if data storage luigis_mansion:data current_state.current_data.money{blue_diamond:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=950}] store result score #temp2 Money run data get storage luigis_mansion:data current_state.current_data.money.red_diamond
execute if entity @s[scores={Dialog=950}] run scoreboard players operation #temp2 Money *= #5 Constants
execute if entity @s[scores={Dialog=950}] run scoreboard players operation #temp Money += #temp2 Money
execute if entity @s[scores={Dialog=950}] unless data storage luigis_mansion:data current_state.current_data.money{red_diamond:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.red_diamond"},{"storage":"luigis_mansion:data","nbt":"current_state.current_data.money.red_diamond"},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=950}] if data storage luigis_mansion:data current_state.current_data.money{red_diamond:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=970}] store result score #temp2 Money run data get storage luigis_mansion:data current_state.current_data.money.gold_diamond
execute if entity @s[scores={Dialog=970}] run scoreboard players operation #temp2 Money *= #20000 Constants
execute if entity @s[scores={Dialog=970}] run scoreboard players operation #temp Money += #temp2 Money
execute if entity @s[scores={Dialog=970}] unless data storage luigis_mansion:data current_state.current_data.money{gold_diamond:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.gold_diamond"},{"storage":"luigis_mansion:data","nbt":"current_state.current_data.money.gold_diamond"},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=970}] if data storage luigis_mansion:data current_state.current_data.money{gold_diamond:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=990}] store result score #temp2 Money run data get storage luigis_mansion:data current_state.current_data.money.small_pearl
execute if entity @s[scores={Dialog=990}] run scoreboard players operation #temp2 Money *= #50 Constants
execute if entity @s[scores={Dialog=990}] run scoreboard players operation #temp Money += #temp2 Money
execute if entity @s[scores={Dialog=990}] unless data storage luigis_mansion:data current_state.current_data.money{small_pearl:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.small_pearl"},{"storage":"luigis_mansion:data","nbt":"current_state.current_data.money.small_pearl"},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=990}] if data storage luigis_mansion:data current_state.current_data.money{small_pearl:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=1010}] store result score #temp2 Money run data get storage luigis_mansion:data current_state.current_data.money.medium_pearl
execute if entity @s[scores={Dialog=1010}] run scoreboard players operation #temp2 Money *= #100 Constants
execute if entity @s[scores={Dialog=1010}] run scoreboard players operation #temp Money += #temp2 Money
execute if entity @s[scores={Dialog=1010}] unless data storage luigis_mansion:data current_state.current_data.money{medium_pearl:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.medium_pearl"},{"storage":"luigis_mansion:data","nbt":"current_state.current_data.money.medium_pearl"},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=1010}] if data storage luigis_mansion:data current_state.current_data.money{medium_pearl:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=1030}] store result score #temp2 Money run data get storage luigis_mansion:data current_state.current_data.money.big_pearl
execute if entity @s[scores={Dialog=1030}] run scoreboard players operation #temp2 Money *= #1000 Constants
execute if entity @s[scores={Dialog=1030}] run scoreboard players operation #temp Money += #temp2 Money
execute if entity @s[scores={Dialog=1030}] unless data storage luigis_mansion:data current_state.current_data.money{big_pearl:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money","with":[{"translate":"luigis_mansion:item.big_pearl"},{"storage":"luigis_mansion:data","nbt":"current_state.current_data.money.big_pearl"},{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=1030}] if data storage luigis_mansion:data current_state.current_data.money{big_pearl:0} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=1050}] run scoreboard players reset #temp2
execute if entity @s[scores={Dialog=1050},tag=ending] if data storage luigis_mansion:data high_scores[0] run function luigis_mansion:dialog/portrificationizing/get_high_score
execute if entity @s[scores={Dialog=1050},tag=ending] unless score #temp2 Money >= #temp Money run scoreboard players operation #temp2 Money = #temp Money
execute if entity @s[scores={Dialog=1050},tag=ending] run function luigis_mansion:dialog/portrificationizing/save_high_score
execute if entity @s[scores={Dialog=1050}] if score #temp Money matches 1.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.total","with":[{"score":{"objective":"Money","name":"#temp"}}]}]}
execute if entity @s[scores={Dialog=1050}] unless score #temp Money matches 1.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.not_obtained"}]}
execute if entity @s[scores={Dialog=1050},tag=ending] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.money.high_score","with":[{"score":{"objective":"Money","name":"#temp2"}}]}]}
execute if entity @s[scores={Dialog=1050}] run scoreboard players reset #temp Money
execute if entity @s[scores={Dialog=1050}] run scoreboard players reset #temp2 Money
teleport @s[scores={Dialog=810..1068},tag=!ending] ~ ~ ~0.1 0 0
teleport @s[scores={Dialog=1069},tag=!ending] 774 77 14 0 0
tag @s[scores={Dialog=1069},tag=!ending] remove walk
tag @s[scores={Dialog=1070}] remove portrificationizing
tag @s[scores={Dialog=1070},tag=ending] add mario_to_normal
tag @s[scores={Dialog=1070}] remove ending
scoreboard players set @s[tag=!portrificationizing] Dialog 0