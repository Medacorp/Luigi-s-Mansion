scoreboard players set @s HomeY 3700
execute if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser"}}},tag=decapitate,scores={Dialog=1..20},limit=1] run scoreboard players set @s[scores={Wave=101..}] Wave 100
execute if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser_head"}}},tag=decapitate,scores={Dialog=1..20},limit=1] run scoreboard players set @s[scores={Wave=101..}] Wave 100
scoreboard players add @s Wave 1
tag @s[scores={Wave=..99}] remove in_vacuum
execute if entity @s[scores={Wave=50..99}] run scoreboard players set #temp Move 1
tag @s[scores={Wave=31..40}] add move_up
tag @s[scores={Wave=41..99}] remove move_up
execute at @s[scores={Wave=31..40}] facing entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser"}}},limit=1] feet rotated ~-180 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[scores={Wave=41..99}] facing entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser"}}},limit=1] feet rotated ~-180 20 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Time=200..,Wave=41..270}] unless entity @s[tag=in_vacuum,scores={HurtTime=0..20}] run function luigis_mansion:entities/boo/rotate_random
execute if score #temp Move matches 1.. at @s[scores={Wave=41..270},tag=move_up] unless entity @s[tag=in_vacuum,scores={HurtTime=0..20}] run function luigis_mansion:entities/boo/move/up
execute if score #temp Move matches 1.. at @s[scores={Wave=41..270},tag=!move_up] unless entity @s[tag=in_vacuum,scores={HurtTime=0..20}] run function luigis_mansion:entities/boo/move/down
scoreboard players set @s[tag=wall] Time 200
tag @s remove wall

execute if entity @s[scores={Wave=271..},tag=!dying] run function luigis_mansion:entities/king_boo/ai/flee_to_bowser