tag @s[tag=!dark_room,nbt=!{data:{selected_item:{components:{"minecraft:custom_data":{is_poltergust:1b}}}}}] remove new_poltergust_grabbed
execute if data storage luigis_mansion:data my_memory.animation unless entity @s[scores={InteractionTime=1..}] run tag @s[tag=!idle] remove new_poltergust_grabbed
execute if data storage luigis_mansion:data my_memory.animation unless entity @s[scores={InteractionTime=1..}] run tag @s[tag=!idle] remove poltergust_grabbed
tag @s[tag=capturing_ghost] add new_poltergust_grabbed
tag @s[tag=capturing_ghost] add poltergust_grabbed
tag @s[tag=riding_poltergust] add new_poltergust_grabbed
tag @s[tag=riding_poltergust] add poltergust_grabbed