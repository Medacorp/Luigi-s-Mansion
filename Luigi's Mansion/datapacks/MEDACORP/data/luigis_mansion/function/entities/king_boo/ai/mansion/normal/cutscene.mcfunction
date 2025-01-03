scoreboard players add @s ActionTime 1
execute unless entity @s[scores={ActionTime=..20}] unless entity @s[scores={ActionTime=42..121}] run function luigis_mansion:entities/ghost/move_forward_force
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.king_boo.laugh_2 hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1}] run teleport @s ~ ~-2 ~
execute if entity @s[scores={ActionTime=21}] run teleport @s ~ ~2 ~
execute at @s[scores={ActionTime=22..31}] run teleport @s ~ ~ ~ ~ ~9
execute if entity @s[scores={ActionTime=80}] run playsound luigis_mansion:entity.king_boo.cutscene_flee hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ActionTime=122..131}] run teleport @s ~ ~ ~ ~ ~-9
execute at @s[scores={ActionTime=122..}] unless block ~ ~ ~ minecraft:air run tag @s add remove_from_existence
execute if entity @s[tag=remove_from_existence] run playsound luigis_mansion:entity.boo.warp hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=remove_from_existence] run particle minecraft:dust{color:13421823,scale:1f} ~ ~1 ~ 0.3 0.3 0.3 0 30 normal @a[tag=same_room]