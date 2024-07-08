tag @s[tag=!dark_room,nbt=!{SelectedItem:{components:{"minecraft:custom_data":{is_poltergust:1b}}}}] remove new_poltergust_grabbed
execute unless entity @s[scores={InteractionTime=1..}] run tag @s[scores={AnimationProgress=1..},tag=!idle] remove new_poltergust_grabbed
execute unless entity @s[scores={InteractionTime=1..}] run tag @s[scores={AnimationProgress=1..},tag=!idle] remove poltergust_grabbed
tag @s[tag=capturing_ghost] add new_poltergust_grabbed
tag @s[tag=capturing_ghost] add poltergust_grabbed
tag @s[tag=riding_poltergust] add new_poltergust_grabbed
tag @s[tag=riding_poltergust] add poltergust_grabbed