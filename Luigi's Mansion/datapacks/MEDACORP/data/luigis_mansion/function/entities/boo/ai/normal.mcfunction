execute if entity @s[tag=can_attack,tag=!frozen,tag=!flee,tag=!dark_room] if predicate luigis_mansion:boo/attack_chance run tag @s add attack

execute unless entity @s[scores={BooTimer=..599},nbt={data:{warp_options:[{}]}}] run function luigis_mansion:entities/boo/direction with entity @s data.mansion
execute if score #temp Move matches 1.. run function luigis_mansion:entities/boo/move/target with entity @s data.boo_target

execute if entity @s[tag=target_reached] run function luigis_mansion:entities/boo/warp with entity @s data.mansion