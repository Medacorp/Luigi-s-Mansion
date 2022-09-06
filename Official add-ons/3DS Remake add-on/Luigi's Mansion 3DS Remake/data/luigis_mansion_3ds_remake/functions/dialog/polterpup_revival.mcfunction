summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PosY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 0.01 run scoreboard players get @s RotY
execute store result entity @e[tag=home,limit=1] Rotation[1] float 0.01 run scoreboard players get @s RotX
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
kill @e[tag=home,limit=1]
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=100..140}] run stopsound @a[tag=same_room] music
execute if entity @s[scores={AnimationProg=100..140}] run scoreboard players set @a[tag=same_room] Music 320
execute if entity @s[scores={AnimationProg=120}] run scoreboard players operation #temp ID = @s ID
execute if entity @s[scores={AnimationProg=120},tag=!flipped_gravity] if score #mirrored Selected matches 0 as @e[type=minecraft:armor_stand,tag=luigi_model,tag=head] if score @s ID = #temp ID at @s rotated ~ 0 positioned ^-2 ^-1 ^1 rotated ~-90 0 run function luigis_mansion_3ds_remake:spawn_entities/ghost/polterpup
execute if entity @s[scores={AnimationProg=120},tag=flipped_gravity] if score #mirrored Selected matches 0 as @e[type=minecraft:armor_stand,tag=luigi_model,tag=head] if score @s ID = #temp ID at @s rotated ~ 0 positioned ^2 ^2.5 ^1 rotated ~90 0 run function luigis_mansion_3ds_remake:spawn_entities/ghost/polterpup
execute if entity @s[scores={AnimationProg=120},tag=!flipped_gravity] if score #mirrored Selected matches 1 as @e[type=minecraft:armor_stand,tag=luigi_model,tag=head] if score @s ID = #temp ID at @s rotated ~ 0 positioned ^2 ^-1 ^1 rotated ~90 0 run function luigis_mansion_3ds_remake:spawn_entities/ghost/polterpup
execute if entity @s[scores={AnimationProg=120},tag=flipped_gravity] if score #mirrored Selected matches 1 as @e[type=minecraft:armor_stand,tag=luigi_model,tag=head] if score @s ID = #temp ID at @s rotated ~ 0 positioned ^-2 ^2.5 ^1 rotated ~-90 0 run function luigis_mansion_3ds_remake:spawn_entities/ghost/polterpup
execute if entity @s[scores={AnimationProg=120},tag=flipped_gravity] run tag @e[tag=polterpup,tag=save_luigi,limit=1] add flipped_gravity
execute if entity @s[scores={AnimationProg=120}] run scoreboard players reset #temp ID
execute if entity @s[scores={AnimationProg=140}] run playsound luigis_mansion_3ds_remake:music.polterpup music @a[tag=same_room] ~ ~ ~ 1000
tag @s[scores={AnimationProg=420}] add revive_animation
tag @s[scores={AnimationProg=460}] remove polterpup_reviving
scoreboard players reset @s[scores={AnimationProg=460}] AnimationProg