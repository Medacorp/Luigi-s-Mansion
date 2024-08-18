scoreboard players set @s HomeY 3700
execute if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser"}}},tag=decapitate,scores={Dialog=1..20},limit=1] run scoreboard players set @s[scores={Wave=61..}] Wave 60
execute if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser_head"}}},tag=decapitate,scores={Dialog=1..20},limit=1] run scoreboard players set @s[scores={Wave=61..}] Wave 60
scoreboard players add @s Wave 1
tag @s[scores={Wave=..59}] remove in_vacuum
execute if entity @s[scores={Wave=20..59}] run scoreboard players set #temp Move 1
execute at @s[scores={Wave=1..59}] facing entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser"}}},limit=1] feet rotated ~-180 20 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Time=200..,Wave=..240}] unless entity @s[tag=in_vacuum,scores={HurtTime=0..20}] run function luigis_mansion:entities/boo/rotate_random
execute if score #temp Move matches 1.. at @s[scores={Wave=..240},tag=move_up] unless entity @s[tag=in_vacuum,scores={HurtTime=0..20}] run function luigis_mansion:entities/boo/move/up
execute if score #temp Move matches 1.. at @s[scores={Wave=..240},tag=!move_up] unless entity @s[tag=in_vacuum,scores={HurtTime=0..20}] run function luigis_mansion:entities/boo/move/down
scoreboard players set @s[tag=wall] Time 200
tag @s remove wall

execute if entity @s[scores={Wave=241..},tag=!dying] run function luigis_mansion:entities/king_boo/ai/flee_to_bowser