scoreboard players operation #temp Move = @s Move
scoreboard players operation #temp ID = @s ID
tag @s add me
function luigis_mansion:old_entities/shot_fire/move_forward
scoreboard players reset #temp Move
scoreboard players add @s ActionTime 1
tag @s[scores={ActionTime=200}] add dead
execute if entity @s[tag=!player_shot] positioned ~-0.5 ~-1 ~-0.5 as @e[dx=0,dy=1,dz=0,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute positioned ~-0.5 ~-1 ~-0.5 if entity @a[dx=0,dy=1,dz=0,scores={Invulnerable=0},tag=!spectator] run tag @s[tag=!player_shot] add hit
execute if entity @s[tag=hit] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"fire"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/burn"},attacker:-1,no_delete:1b}
execute if entity @s[tag=hit] if data entity @s ArmorItems[3].tag.luigis_mansion.damage.attack run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.attack
execute if entity @s[tag=hit] store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s Owner
execute if entity @s[tag=hit] positioned ~-0.5 ~-1 ~-0.5 as @a[dx=0,dy=1,dz=0,gamemode=!spectator] run function luigis_mansion:entities/player/damage
execute if entity @s[tag=hit] run data remove storage luigis_mansion:data damage
tag @s[tag=hit] add dead
execute at @s[tag=dead] run playsound luigis_mansion:item.poltergust_3000.shoot.fire.hit hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s positioned ~ ~1.4 ~ run function luigis_mansion:items/poltergust_3000/fire
scoreboard players reset #interact PositionX
scoreboard players reset #interact PositionY
scoreboard players reset #interact PositionZ
tag @e[tag=hit_by_poltergust] remove hit_by_poltergust
scoreboard players reset #temp ID
tag @s remove me