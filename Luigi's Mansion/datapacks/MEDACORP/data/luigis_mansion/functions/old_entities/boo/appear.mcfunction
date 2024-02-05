summon minecraft:marker ~ ~ ~ {Tags:["target"]}
execute store result entity @e[tag=target,type=minecraft:marker,limit=1] Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @e[tag=target,type=minecraft:marker,limit=1] Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @e[tag=target,type=minecraft:marker,limit=1] Pos[2] double 0.01 run scoreboard players get @s HomeZ
function luigis_mansion:old_animations/boo/appear
execute if entity @e[tag=target,type=minecraft:marker,limit=1,distance=..1] run function luigis_mansion:old_entities/boo/appeared
execute if entity @s[tag=appear,scores={SpawnTime=1}] run playsound luigis_mansion:entity.boo.spawn hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set #temp Move 12
execute if score #temp Move matches 1.. positioned as @s[tag=appear] facing entity @e[tag=target] feet run function luigis_mansion:old_entities/boo/force_move_forward
kill @e[tag=target,type=minecraft:marker,limit=1]