scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={SpawnTime=..-1}] ActionTime 20
execute if entity @s[scores={ActionTime=1}] if entity @e[tag=boo,tag=same_room,limit=1] run function luigis_mansion:entities/hidden_boo/spawn/cancel
scoreboard players add @s[scores={ActionTime=1}] ActionTime 1
execute if entity @s[scores={ActionTime=2}] if entity @e[tag=caught_by_boo_radar,tag=same_room,scores={ActionTime=2..},limit=1] run scoreboard players set @s ActionTime 1
execute if entity @s[scores={ActionTime=2}] run particle minecraft:dust{color:16777215,scale:1.5f} ~ ~1.2 ~ 0.5 0.5 0.5 1 30
execute if entity @s[scores={ActionTime=21},tag=trap] run function luigis_mansion:entities/hidden_boo/spawn/trap with entity @s data.boo
execute if entity @s[scores={ActionTime=21},tag=!trap] run function luigis_mansion:entities/hidden_boo/spawn/boo with entity @s data.boo
tag @s[scores={ActionTime=20}] add remove_from_existence