tag @s add animation_may_move
execute if entity @s[scores={IdleTime=-10,Sound=0,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.grabbed.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-10,Sound=0,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.grabbed.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={IdleTime=-10,Sound=0,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.grabbed.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-10,Sound=0,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.grabbed.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={Sound=0}] Sound 2
scoreboard players operation #temp GrabbedID = @s ID
execute as @e[tag=ghost,scores={GrabbedID=-2147483648..}] if score @s GrabbedID = #temp GrabbedID run tag @s add this_ghost
execute if entity @e[tag=this_ghost,limit=1,scores={VulnerableTime=0}] run scoreboard players remove @s[scores={IdleTime=-1}] IdleTime 1
execute if entity @s[scores={IdleTime=..-2}] store result score #temp PositionX run data get entity @s Pos[0] 100
execute if entity @s[scores={IdleTime=..-2}] store result score #temp PositionZ run data get entity @s Pos[2] 100
execute if entity @s[scores={IdleTime=..-2}] run scoreboard players operation #temp PositionX -= @s PositionX
execute if entity @s[scores={IdleTime=..-2}] run scoreboard players operation #temp PositionZ -= @s PositionZ
execute if entity @s[scores={IdleTime=..-2},tag=!positive_x] if score #temp PositionX matches 8.. run tag @s add struggle
execute if entity @s[scores={IdleTime=..-2},tag=!positive_z] if score #temp PositionZ matches 8.. run tag @s add struggle
execute if entity @s[scores={IdleTime=..-2},tag=!negative_x] if score #temp PositionX matches ..-8 run tag @s add struggle
execute if entity @s[scores={IdleTime=..-2},tag=!negative_z] if score #temp PositionZ matches ..-8 run tag @s add struggle
execute if score #temp PositionX matches -8..8 if score #temp PositionZ matches -8..8 run tag @s add didnt_move
tag @s[tag=!didnt_move] remove positive_x
tag @s[tag=!didnt_move] remove positive_z
tag @s[tag=!didnt_move] remove negative_x
tag @s[tag=!didnt_move] remove negative_z
tag @s remove didnt_move
execute if entity @s[scores={IdleTime=..-2}] if score #temp PositionX matches 8.. run tag @s add positive_x
execute if entity @s[scores={IdleTime=..-2}] if score #temp PositionZ matches 8.. run tag @s add positive_z
execute if entity @s[scores={IdleTime=..-2}] if score #temp PositionX matches ..-8 run tag @s add negative_x
execute if entity @s[scores={IdleTime=..-2}] if score #temp PositionZ matches ..-8 run tag @s add negative_z
execute if entity @s[scores={IdleTime=..-2},tag=struggle,tag=harmfull_grab] run scoreboard players add @s GrabbedShake 1
execute if entity @s[scores={IdleTime=..-2},tag=struggle] run scoreboard players set @e[tag=this_ghost,limit=1] ActionTime 20
execute if entity @s[scores={IdleTime=..-2,GrabbedShake=5..}] run scoreboard players reset @e[tag=this_ghost,limit=1] GrabbedID
execute if entity @s[scores={IdleTime=..-2}] run tag @s remove struggle
scoreboard players set @s[scores={IdleTime=..-2,Invulnerable=6..},tag=harmfull_grab] Invulnerable 5
execute if entity @s[scores={IdleTime=-9..-2,Invulnerable=0},tag=harmfull_grab] run function luigis_mansion:entities/player/memory/get with entity @s
execute if entity @s[scores={IdleTime=-9..-2,Invulnerable=0},tag=harmfull_grab] run data modify storage luigis_mansion:data damage set value {amount:1,attacker:-1}
execute if entity @s[scores={IdleTime=-9..-2,Invulnerable=0},tag=harmfull_grab] run data modify storage luigis_mansion:data damage.attacker set from storage luigis_mansion:data my_memory.hurt_by.attacker
execute if entity @s[scores={IdleTime=-9..-2,Invulnerable=0},tag=harmfull_grab] run function luigis_mansion:entities/player/damage
execute if entity @s[scores={IdleTime=..-2}] run effect give @s minecraft:slowness 1 0 true
execute if entity @s[scores={IdleTime=-1}] run effect clear @s minecraft:slowness
execute if entity @s[scores={IdleTime=-1}] run scoreboard players reset @e[tag=this_ghost,limit=1] GrabbedID
scoreboard players set @s[scores={IdleTime=-1},tag=harmfull_grab] Invulnerable 60
scoreboard players reset @s[scores={IdleTime=-1}] GrabbedShake
tag @s[scores={IdleTime=-1}] remove grabbed
tag @s[scores={IdleTime=-1}] remove harmfull_grab
tag @e[tag=this_ghost,limit=1] remove this_ghost
scoreboard players reset #temp GrabbedID

tag @s remove vacuuming_ghost