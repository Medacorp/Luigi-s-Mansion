function luigis_mansion:items/interact/target_furniture/root
execute if entity @s[nbt={ArmorItems:[{tag:{luigis_mansion:{furniture_type:"swinging",interact_animation:{namespace:"luigis_mansion",id:"enthusiastic"}}}}]},tag=hit] at @e[tag=interact,limit=1] run function luigis_mansion:items/interact/target_furniture/swing
execute unless entity @s[nbt={ArmorItems:[{tag:{luigis_mansion:{furniture_type:"swinging",interact_animation:{namespace:"luigis_mansion",id:"enthusiastic"}}}}]}] run tag @s[tag=hit] add search
scoreboard players operation @e[tag=hit] SearcherID = @s ID
tag @s remove hit