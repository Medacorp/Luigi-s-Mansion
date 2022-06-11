scoreboard players operation #temp Move = @s Move
scoreboard players operation #temp ID = @s ID
tag @s add me
function luigis_mansion:entities/shot_fire/move_forward
scoreboard players reset #temp Move
scoreboard players add @s ActionTime 1
tag @s[scores={ActionTime=200}] add dead
execute if entity @s[tag=!player_shot] positioned ~-0.5 ~-1 ~-0.5 as @e[dx=0,dy=1,dz=0,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute positioned ~-0.5 ~-1 ~-0.5 if entity @a[dx=0,dy=1,dz=0,scores={Invulnerable=0},tag=!spectator] run tag @s[tag=!player_shot] add hit
execute if entity @s[tag=hit] positioned ~-0.5 ~-1 ~-0.5 run effect give @a[dx=0,dy=1,dz=0,scores={Invulnerable=0},tag=!spectator] minecraft:instant_damage 1 0 true
execute if entity @s[tag=hit] positioned ~-0.5 ~-1 ~-0.5 run scoreboard players set @a[dx=0,dy=1,dz=0,scores={Invulnerable=0},tag=!spectator] ForcedDamage 4
execute if entity @s[tag=hit] positioned ~-0.5 ~-1 ~-0.5 as @a[dx=0,dy=1,dz=0,scores={Invulnerable=0},tag=!spectator] positioned ~0.5 ~1 ~0.5 run function luigis_mansion:entities/player/knockback/burn
tag @s[tag=hit] add dead
execute at @s[tag=dead] run playsound luigis_mansion:item.poltergust_3000.shoot.fire.hit hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s positioned ~-0.5 ~-1 ~-0.5 as @e[dx=0,dy=1,dz=0,tag=!shot_fire] run function luigis_mansion:items/poltergust_3000/effect_on_entity/fire
execute at @s unless block ~ ~ ~ minecraft:air run function luigis_mansion:items/poltergust_3000/effect_on_block/fire
execute at @s run function luigis_mansion:items/poltergust_3000/interact
execute at @s[tag=dead] run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0 1
scoreboard players reset #temp ID
tag @s remove me