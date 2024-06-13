execute unless entity @s[scores={HomeX=-2147483648..}] store result score @s HomeX run data get entity @s Pos[0] 100
execute unless entity @s[scores={HomeY=-2147483648..}] store result score @s HomeY run data get entity @s Pos[1] 100
execute unless entity @s[scores={HomeZ=-2147483648..}] store result score @s HomeZ run data get entity @s Pos[2] 100
execute if entity @a[tag=same_room,limit=1] run tag @s[scores={SpawnTime=..-1}] add spawn
execute if entity @s[tag=spawn] run function luigis_mansion:entities/hidden_boo/spawn
execute if entity @s[scores={SpawnTime=0},tag=!spawn] run function luigis_mansion:entities/hidden_boo/swap_spot with entity @s data.boo
execute if entity @s[scores={SpawnTime=-2}] run function luigis_mansion:entities/hidden_boo/warp with entity @s data.boo
tag @s[scores={SpawnTime=1..},tag=!spawn] add can_play_sound
tag @s[scores={SpawnTime=-1}] add remove_from_existence
scoreboard players remove @s[tag=!trap,scores={SpawnTime=1..},tag=!spawn] SpawnTime 1
scoreboard players add @s[scores={SpawnTime=..-1},tag=!spawn] SpawnTime 1