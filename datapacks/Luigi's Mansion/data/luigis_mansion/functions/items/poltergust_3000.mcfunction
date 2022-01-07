execute if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000"}}}]}] run function luigis_mansion:items/poltergust_3000/tick
execute unless entity @s[scores={Shrunk=1..}] if entity @s[advancements={luigis_mansion:lab/lab=true},nbt=!{Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000"}}}]}] run function luigis_mansion:items/poltergust_3000/give
