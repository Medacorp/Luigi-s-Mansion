scoreboard players add @s AnimationProgress 1
tag @s add animation_may_move
tag @s add tick_down_invulnerability
execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.grabbed.high_health",medium:"luigis_mansion:entity.player.grabbed.high_health",low:"luigis_mansion:entity.player.grabbed.low_health",duration:40}
scoreboard players set @s[scores={Sound=0}] Sound 2
scoreboard players operation #temp GrabbedID = @s ID
execute as @e[tag=ghost,scores={GrabbedID=-2147483648..},tag=!vanish] if score @s GrabbedID = #temp GrabbedID run tag @s add this_ghost
execute if entity @e[tag=this_ghost,limit=1,scores={VulnerableTime=0}] run scoreboard players remove @s[scores={AnimationProgress=10}] AnimationProgress 1
execute if entity @s[scores={AnimationProgress=..9}] run scoreboard players operation #temp PositionX = @a[tag=this_player,limit=1] PositionX
execute if entity @s[scores={AnimationProgress=..9}] run scoreboard players operation #temp PositionZ = @a[tag=this_player,limit=1] PositionZ
execute if entity @s[scores={AnimationProgress=..9}] run scoreboard players operation #temp PositionX -= @a[tag=this_player,limit=1] OtherX
execute if entity @s[scores={AnimationProgress=..9}] run scoreboard players operation #temp PositionZ -= @a[tag=this_player,limit=1] OtherZ
execute if entity @s[scores={AnimationProgress=..9},tag=!positive_x] if score #temp PositionX matches 3.. run tag @s add struggle
execute if entity @s[scores={AnimationProgress=..9},tag=!positive_z] if score #temp PositionZ matches 3.. run tag @s add struggle
execute if entity @s[scores={AnimationProgress=..9},tag=!negative_x] if score #temp PositionX matches ..-3 run tag @s add struggle
execute if entity @s[scores={AnimationProgress=..9},tag=!negative_z] if score #temp PositionZ matches ..-3 run tag @s add struggle
execute if score #temp PositionX matches -3..3 if score #temp PositionZ matches -3..3 run tag @s add didnt_move
tag @s[tag=!didnt_move] remove positive_x
tag @s[tag=!didnt_move] remove positive_z
tag @s[tag=!didnt_move] remove negative_x
tag @s[tag=!didnt_move] remove negative_z
execute if entity @s[scores={AnimationProgress=..9},tag=!didnt_move] if score #temp PositionX matches 3.. run tag @s add positive_x
execute if entity @s[scores={AnimationProgress=..9},tag=!didnt_move] if score #temp PositionZ matches 3.. run tag @s add positive_z
execute if entity @s[scores={AnimationProgress=..9},tag=!didnt_move] if score #temp PositionX matches ..-3 run tag @s add negative_x
execute if entity @s[scores={AnimationProgress=..9},tag=!didnt_move] if score #temp PositionZ matches ..-3 run tag @s add negative_z
tag @s remove didnt_move
execute if entity @s[scores={AnimationProgress=..9},tag=struggle] run scoreboard players add @s GrabbedShake 1
execute if entity @s[scores={AnimationProgress=..9},tag=struggle] run scoreboard players set @e[tag=this_ghost,limit=1] ActionTime 20
execute if entity @s[scores={AnimationProgress=..9,GrabbedShake=5..}] run scoreboard players reset @e[tag=this_ghost,limit=1] GrabbedID
execute if entity @s[scores={AnimationProgress=..9}] run tag @s remove struggle
scoreboard players set @s[scores={AnimationProgress=..9,Invulnerable=6..},tag=harmfull_grab] Invulnerable 5
execute if entity @s[scores={AnimationProgress=2..9,Invulnerable=0},tag=harmfull_grab] run data modify storage luigis_mansion:data damage set value {amount:1}
execute if entity @s[scores={AnimationProgress=2..9,Invulnerable=0},tag=harmfull_grab] if data storage luigis_mansion:data my_memory.hurt_by.attacker[0] run data modify storage luigis_mansion:data damage.attacker set from storage luigis_mansion:data my_memory.hurt_by.attacker[0].id
execute if entity @s[scores={AnimationProgress=2..9,Invulnerable=0},tag=harmfull_grab] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={AnimationProgress=..9}] run effect give @a[tag=this_player,limit=1] minecraft:slowness 1 0 true
execute if entity @s[scores={AnimationProgress=10}] run effect clear @a[tag=this_player,limit=1] minecraft:slowness
execute if entity @s[scores={AnimationProgress=10}] run scoreboard players reset @e[tag=this_ghost,limit=1] GrabbedID
scoreboard players set @s[scores={AnimationProgress=10},tag=harmfull_grab] Invulnerable 60
scoreboard players reset @s[scores={AnimationProgress=10}] GrabbedShake
tag @s[scores={AnimationProgress=10}] remove grabbed
tag @s[scores={AnimationProgress=10}] remove harmfull_grab
tag @e[tag=this_ghost,limit=1] remove this_ghost
scoreboard players reset #temp GrabbedID
tag @s remove new_poltergust_grabbed
tag @s remove poltergust_grabbed
tag @s remove vacuuming_ghost
tag @s add disable_flashlight
tag @s add disable_game_boy_horror
tag @s add disable_interact
tag @s add disable_poltergust
execute if entity @s[scores={AnimationProgress=10}] run function luigis_mansion:entities/luigi/animation/set/none