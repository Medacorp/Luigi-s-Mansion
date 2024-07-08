summon minecraft:marker ~ ~ ~ {Tags:["target_pos"]}
execute store result entity @e[tag=target_pos,type=minecraft:marker,limit=1] Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @e[tag=target_pos,type=minecraft:marker,limit=1] Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @e[tag=target_pos,type=minecraft:marker,limit=1] Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute if entity @e[tag=target_pos,type=minecraft:marker,limit=1,distance=..0.1] run function luigis_mansion:entities/boo/appeared with entity @s data.boo
execute if entity @s[tag=appear,nbt=!{data:{animation:{namespace:"luigis_mansion",id:"appear"}}}] run playsound luigis_mansion:entity.boo.spawn hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[tag=appear] data.animation set value {namespace:"luigis_mansion",id:"appear"}
scoreboard players set #temp Move 50
execute positioned as @s[tag=appear] facing entity @e[tag=target_pos,limit=1] feet run function luigis_mansion:entities/ghost/move_forward_force
kill @e[tag=target_pos,type=minecraft:marker,limit=1]