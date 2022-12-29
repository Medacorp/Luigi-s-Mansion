function luigis_mansion:items/interact/target_furniture/root
execute if entity @s[tag=swinging,scores={InteractionType=..-1},tag=hit] at @e[tag=interact,limit=1] run function luigis_mansion:items/interact/target_furniture/swing
execute unless entity @s[tag=swinging,scores={InteractionType=..-1}] run tag @s[tag=hit] add search
scoreboard players operation @e[tag=hit] SearcherID = @s ID
tag @s remove hit