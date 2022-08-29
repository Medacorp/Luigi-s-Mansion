function luigis_mansion:items/interact/target_furniture/root
execute if entity @s[tag=swinging,scores={InteractionType=..-1},tag=hit] run function luigis_mansion:items/interact/target_furniture/swing
execute unless entity @s[tag=swinging,scores={InteractionType=..-1}] run tag @s[tag=hit] add search
tag @s remove hit