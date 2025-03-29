tag @s remove try_opening_door
tag @s add me
execute if entity @s[scores={UseItem=1..},tag=!poltergust_selected,nbt={data:{selected_item:{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"interact"}}}}}] unless entity @s[nbt={data:{animation:{}}},tag=!idle] unless entity @s[scores={InteractionTime=1..}] run function luigis_mansion:entities/luigi/run_command_as_owner {command:"function luigis_mansion:items/interact/use_item"}
execute if entity @s[scores={UseItem=1..},tag=!poltergust_selected,nbt={data:{selected_item:{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"interact"}}}}}] unless entity @s[nbt={data:{animation:{}}},tag=!idle] unless entity @s[scores={InteractionTime=1..}] run function luigis_mansion:items/interact/trigger
tag @s remove me
execute if entity @s[scores={InteractionTime=1..}] run function luigis_mansion:items/interact/shake