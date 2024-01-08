tag @s[tag=!dark_room,nbt=!{SelectedItem:{tag:{luigis_mansion:{is_poltergust:1b}}}}] remove new_poltergust_grabbed
tag @s[scores={Animation=29..38},tag=!gooigi] remove new_poltergust_grabbed
tag @s[scores={Animation=29..38},tag=!gooigi] remove poltergust_grabbed
tag @s[scores={Animation=29..30},tag=gooigi] remove new_poltergust_grabbed
tag @s[scores={Animation=29..30},tag=gooigi] remove poltergust_grabbed
tag @s[scores={Animation=32..38},tag=gooigi] remove new_poltergust_grabbed
tag @s[scores={Animation=32..38},tag=gooigi] remove poltergust_grabbed
tag @s[scores={Animation=40..41}] remove new_poltergust_grabbed
tag @s[scores={Animation=40..41}] remove poltergust_grabbed
execute unless entity @s[scores={InteractionTime=1..}] unless entity @s[scores={Animation=27..41}] run tag @s[scores={Animation=1..},tag=!idle] remove new_poltergust_grabbed
execute unless entity @s[scores={InteractionTime=1..}] unless entity @s[scores={Animation=27..41}] run tag @s[scores={Animation=1..},tag=!idle] remove poltergust_grabbed
tag @s[tag=capturing_ghost] add new_poltergust_grabbed