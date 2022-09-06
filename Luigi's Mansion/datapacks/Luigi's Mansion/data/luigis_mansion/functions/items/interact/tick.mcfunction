tag @s remove try_opening_door
execute if entity @s[scores={UseItem=1..},tag=!poltergust_selected,nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:interact"}}}}] unless entity @s[scores={IdleTime=..-1},tag=!idle] unless entity @s[scores={InteractionTime=1..}] unless entity @s[scores={GBHCall=1..}] unless entity @s[scores={Dialog=1..}] run function luigis_mansion:items/interact/trigger
execute if entity @s[scores={InteractionTime=1..}] run function luigis_mansion:items/interact/shake
execute if entity @s[scores={YellTime=1..}] run function luigis_mansion:items/interact/yell