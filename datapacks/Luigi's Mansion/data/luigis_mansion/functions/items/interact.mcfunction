execute if entity @s[scores={InteractionTime=1..}] run function luigis_mansion:items/interact/use
execute if entity @s[scores={InteractionTime=1..,Shrunk=1..}] run function luigis_mansion:items/interact/use
execute if entity @s[scores={YellTime=1..}] run function luigis_mansion:items/interact/yell
execute if entity @s[scores={YellTime=1..,Shrunk=1..}] run function luigis_mansion:items/interact/yell
execute if entity @s[scores={UseItem=1..}] unless entity @s[scores={InteractionTime=1..}] run function luigis_mansion:items/interact/trigger
execute if entity @s[nbt=!{Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:interact"}}}]}] run function luigis_mansion:items/interact/give