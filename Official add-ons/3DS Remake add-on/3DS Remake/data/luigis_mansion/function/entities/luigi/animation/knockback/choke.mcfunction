scoreboard players add @s AnimationProgress 1
tag @s add animation_may_move
tag @s add tick_down_invulnerability
execute if entity @s[scores={AnimationProgress=1,Sound=0,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.grabbed.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Sound=0,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.grabbed.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=1,Sound=0,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.grabbed.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Sound=0,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.grabbed.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={Sound=0},tag=!gooigi] Sound 2
execute if entity @s[scores={AnimationProgress=..120}] store result score #temp PositionX run data get entity @s Pos[0] 100
execute if entity @s[scores={AnimationProgress=..120}] store result score #temp PositionZ run data get entity @s Pos[2] 100
execute if entity @s[scores={AnimationProgress=..120}] run scoreboard players operation #temp PositionX -= @s PositionX
execute if entity @s[scores={AnimationProgress=..120}] run scoreboard players operation #temp PositionZ -= @s PositionZ
execute if entity @s[scores={AnimationProgress=..120},tag=!positive_x] if score #temp PositionX matches 3.. run tag @s add struggle
execute if entity @s[scores={AnimationProgress=..120},tag=!positive_z] if score #temp PositionZ matches 3.. run tag @s add struggle
execute if entity @s[scores={AnimationProgress=..120},tag=!negative_x] if score #temp PositionX matches ..-3 run tag @s add struggle
execute if entity @s[scores={AnimationProgress=..120},tag=!negative_z] if score #temp PositionZ matches ..-3 run tag @s add struggle
execute if score #temp PositionX matches -3..3 if score #temp PositionZ matches -3..3 run tag @s add didnt_move
tag @s[tag=!didnt_move] remove positive_x
tag @s[tag=!didnt_move] remove positive_z
tag @s[tag=!didnt_move] remove negative_x
tag @s[tag=!didnt_move] remove negative_z
execute if entity @s[scores={AnimationProgress=..120},tag=!didnt_move] if score #temp PositionX matches 3.. run tag @s add positive_x
execute if entity @s[scores={AnimationProgress=..120},tag=!didnt_move] if score #temp PositionZ matches 3.. run tag @s add positive_z
execute if entity @s[scores={AnimationProgress=..120},tag=!didnt_move] if score #temp PositionX matches ..-3 run tag @s add negative_x
execute if entity @s[scores={AnimationProgress=..120},tag=!didnt_move] if score #temp PositionZ matches ..-3 run tag @s add negative_z
tag @s remove didnt_move
execute if entity @s[scores={AnimationProgress=..120},tag=struggle] run scoreboard players add @s AnimationProgress 10
execute if entity @s[scores={AnimationProgress=..120}] run tag @s remove struggle
scoreboard players set @s[scores={AnimationProgress=..120,Invulnerable=4..}] Invulnerable 3
execute if entity @s[scores={AnimationProgress=2..120,Invulnerable=0}] run data modify storage luigis_mansion:data damage set value {amount:1}
execute if entity @s[scores={AnimationProgress=2..120,Invulnerable=0}] if data storage luigis_mansion:data my_memory.hurt_by.attacker[0] run data modify storage luigis_mansion:data damage.attacker set from storage luigis_mansion:data my_memory.hurt_by.attacker[0].id
execute if entity @s[scores={AnimationProgress=2..120,Invulnerable=0}] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={AnimationProgress=..120}] run effect give @s minecraft:slowness 1 0 true
execute if entity @s[scores={AnimationProgress=121..}] run effect clear @s minecraft:slowness
scoreboard players set @s[scores={AnimationProgress=121..}] Invulnerable 60
tag @s remove new_poltergust_grabbed
tag @s remove poltergust_grabbed
tag @s remove vacuuming_ghost
tag @s add disable_flashlight
tag @s add disable_game_boy_horror
tag @s add disable_interact
tag @s add disable_poltergust
execute if entity @s[scores={AnimationProgress=121..}] run function luigis_mansion:entities/luigi/animation/set/choke_recover