execute if entity @s[scores={RoomNoise=0}] run playsound luigis_mansion:furniture.wind_warp block @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={RoomNoise=0}] RoomNoise 25
summon minecraft:marker ~ ~ ~ {Tags:["warp_position","remove_from_existence"]}
execute store result entity @e[tag=warp_position,limit=1] Pos[1] double 0.1 run scoreboard players get @s PositionY
$execute as @e[tag=warp_position,limit=1] positioned as @s run teleport @s ^ ^ ^$(forward) ~ ~
execute at @e[tag=warp_position,limit=1] run particle minecraft:dust{color:8355839,scale:2f} ^ ^ ^0.5 0 0 0 0 1 normal @a[tag=same_room]
execute at @e[tag=warp_position,limit=1] run particle minecraft:dust{color:8355839,scale:1.5f} ^ ^ ^0.167 0 0 0 0 1 normal @a[tag=same_room]
execute at @e[tag=warp_position,limit=1] run particle minecraft:dust{color:8355839,scale:1f} ^ ^ ^-0.167 0 0 0 0 1 normal @a[tag=same_room]
execute at @e[tag=warp_position,limit=1] run particle minecraft:dust{color:8355839,scale:0.5f} ^ ^ ^-0.5 0 0 0 0 1 normal @a[tag=same_room]
tag @s add me
execute if entity @s[scores={MirrorX=-2147483648..}] as @e[tag=warp_position,limit=1] at @s run function luigis_mansion:entities/furniture/wind_warp/mirror_x
execute if entity @s[scores={MirrorZ=-2147483648..}] as @e[tag=warp_position,limit=1] at @s run function luigis_mansion:entities/furniture/wind_warp/mirror_z
execute if entity @s[tag=!wind_warping] at @e[tag=warp_position,limit=1] as @e[tag=luigi,tag=same_room,distance=..0.7,tag=!wind_warping,limit=1] run function luigis_mansion:entities/furniture/wind_warp/trigger
$execute at @e[tag=warp_position,limit=1] as @e[tag=luigi,tag=same_room,distance=..1,tag=wind_warping,scores={AnimationProgress=20..},limit=1] positioned ^ ^ ^-$(forward) run function luigis_mansion:entities/furniture/wind_warp/warp with entity @e[tag=me,limit=1] data.scan_result
kill @e[tag=warp_position,limit=1]
tag @s remove me
tag @s[tag=!wind_warp] remove wind_warping
execute if entity @s[tag=!wind_warp] run stopsound @a[tag=same_room] block luigis_mansion:furniture.wind_warp
scoreboard players set @s[tag=!wind_warp] RoomNoise 0