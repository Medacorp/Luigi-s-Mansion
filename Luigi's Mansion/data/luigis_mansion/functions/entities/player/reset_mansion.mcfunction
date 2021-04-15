scoreboard players set * ResetMansion
execute if entity @e[tag=chauncey,tag=fight] run function luigis_mansion:entities/chauncey/return
tag @e[tag=chauncey] add dead
tag @e[tag=shivers] add dead
execute if entity @e[tag=bogmire,tag=fight] run function luigis_mansion:entities/bogmire/return
tag @e[tag=bogmire] add dead
execute if entity @e[tag=boolossus,tag=battle] run function luigis_mansion:entities/boolossus/return
tag @e[tag=boolossus] add dead
execute if entity @e[tag=bowser] run function luigis_mansion:entities/king_boo/return
tag @e[tag=king_boo] add dead
tag @e[tag=bowser] add dead
tag @e[tag=bowser_body] add dead
execute as @a run function luigis_mansion:other/load_data/reset_mansion_data
execute if block 771 97 2 minecraft:soul_fire run function luigis_mansion:entities/e_gadd/load_mansion/empty
scoreboard players set #mansion_type Selected -1
scoreboard players set #mansion_data_index Selected -1
scoreboard players set #previous_mansion_index Selected -1
data modify storage luigis_mansion:data current_state.current_data set value {}