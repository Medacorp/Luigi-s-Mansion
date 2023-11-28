tag @s[tag=!dark_room,nbt=!{SelectedItem:{tag:{luigis_mansion:{is_poltergust:1b}}}}] remove new_poltergust_grabbed
tag @s[scores={KnockbackType=3..},tag=!gooigi] remove new_poltergust_grabbed
tag @s[scores={KnockbackType=3..},tag=!gooigi] remove poltergust_grabbed
tag @s[scores={KnockbackType=3..4},tag=gooigi] remove new_poltergust_grabbed
tag @s[scores={KnockbackType=3..4},tag=gooigi] remove poltergust_grabbed
tag @s[scores={KnockbackType=6..},tag=gooigi] remove new_poltergust_grabbed
tag @s[scores={KnockbackType=6..},tag=gooigi] remove poltergust_grabbed
tag @s[scores={ScareType=2..}] remove new_poltergust_grabbed
tag @s[scores={ScareType=2..}] remove poltergust_grabbed
execute unless entity @s[scores={InteractionTime=1..}] unless entity @s[scores={KnockbackType=1..}] unless entity @s[scores={ScareType=1..}] run tag @s[scores={Animation=1..},tag=!idle] remove new_poltergust_grabbed
execute unless entity @s[scores={InteractionTime=1..}] unless entity @s[scores={KnockbackType=1..}] unless entity @s[scores={ScareType=1..}] run tag @s[scores={Animation=1..},tag=!idle] remove poltergust_grabbed
tag @s[tag=capturing_ghost] add new_poltergust_grabbed