execute if entity @s[scores={ClairvoyaSpoke=0}] run function luigis_mansion:dialog/marios_item/normal/item_1
execute if entity @s[scores={ClairvoyaSpoke=1}] run function luigis_mansion:dialog/marios_item/normal/item_2
execute if entity @s[scores={ClairvoyaSpoke=2}] run function luigis_mansion:dialog/marios_item/normal/item_3
execute if entity @s[scores={ClairvoyaSpoke=3}] run function luigis_mansion:dialog/marios_item/normal/item_4
execute if entity @s[scores={ClairvoyaSpoke=4}] run function luigis_mansion:dialog/marios_item/normal/item_5

execute if entity @s[tag=!talk,tag=hat] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {shown_marios_hat:1b}
execute if entity @s[tag=!talk,tag=letter] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {shown_marios_letter:1b}
execute if entity @s[tag=!talk,tag=star] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {shown_marios_star:1b}
execute if entity @s[tag=!talk,tag=glove] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {shown_marios_glove:1b}
execute if entity @s[tag=!talk,tag=shoe] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {shown_marios_shoe:1b}
execute if entity @s[tag=!talk] run scoreboard players add @s ClairvoyaSpoke 1

execute unless entity @a[tag=same_room,distance=..7] run tag @s remove talk
execute if entity @s[tag=!talk] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if entity @s[tag=!talk] as @a[scores={ClairvoyaChoice=0..}] run trigger ClairvoyaChoice set 0
scoreboard players set @s[tag=!talk] Dialog 0
tag @s[tag=!talk] remove next
tag @s[tag=!talk] remove hat
tag @s[tag=!talk] remove letter
tag @s[tag=!talk] remove star
tag @s[tag=!talk] remove glove
tag @s[tag=!talk] remove shoe
tag @s[tag=!talk] remove nod
tag @s[tag=!talk] remove explain
tag @s[tag=!talk] remove power