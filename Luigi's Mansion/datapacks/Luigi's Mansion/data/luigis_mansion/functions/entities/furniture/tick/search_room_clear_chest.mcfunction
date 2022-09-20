tag @s add open
execute rotated ~ 0 if entity @s[nbt={ArmorItems:[{tag:{loot:{}}}]}] run function luigis_mansion:entities/furniture/tick/spawn_contents
execute if data entity @s[tag=search] ArmorItems[3].tag.dialog run function luigis_mansion:entities/furniture/tick/trigger_dialog
scoreboard players reset @s SearcherID