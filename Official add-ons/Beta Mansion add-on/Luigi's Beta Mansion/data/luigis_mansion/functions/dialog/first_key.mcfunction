execute if entity @s[scores={Dialog=1}] run stopsound @a[tag=same_room] music
execute if entity @s[scores={Dialog=1}] run playsound luigis_beta_mansion:music.first_key music @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room] Music 470
item replace entity @s[scores={Dialog=1}] armor.head with minecraft:brick{CustomModelData:1}
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..370}] run particle minecraft:dust 1 1 1 1 ~ ~0.5 ~ 0.2 0.2 0.2 0 5
teleport @s[scores={Dialog=1..30}] ~ ~ ~-0.025
teleport @s[scores={Dialog=31..60}] ~ ~ ~0.05
teleport @s[scores={Dialog=61..90}] ~ ~ ~-0.05
teleport @s[scores={Dialog=91..120}] ~ ~ ~0.025
teleport @s[scores={Dialog=121..122}] ~ ~-0.2 ~
execute if entity @s[scores={Dialog=216}] run summon minecraft:armor_stand ~ ~ ~ {Pose:{Head:[0.0f,90.0f,0.01f]},Marker:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:brick",Count:1b,tag:{CustomModelData:1}}],Tags:["parlor_key"],Rotation:[-90.0f,0.0f],DisabledSlots:2039583}
item replace entity @s[scores={Dialog=216}] armor.head with minecraft:air
execute if entity @s[scores={Dialog=216..220}] as @e[tag=parlor_key,limit=1] at @s run teleport @s ~ ~0.1 ~
execute if entity @s[scores={Dialog=221..231}] as @e[tag=parlor_key,limit=1] at @s run teleport @s ~ ~-0.3 ~
execute if entity @s[scores={Dialog=232}] as @e[tag=parlor_key,limit=1] at @s run teleport @s ~0.35 ~0.2 ~0.35
execute if entity @s[scores={Dialog=232}] run data merge entity @e[tag=parlor_key,limit=1] {Pose:{Head:[45.0f,45.0f,0.01f]},Rotation:[-67.5f,0.0f]}
execute if entity @s[scores={Dialog=233}] as @e[tag=parlor_key,limit=1] at @s run teleport @s ~0.35 ~-0.3 ~0.35
execute if entity @s[scores={Dialog=233}] run data merge entity @e[tag=parlor_key,limit=1] {Pose:{Head:[90.0f,0.0f,0.01f]},Rotation:[-45.0f,0.0f]}
teleport @s[scores={Dialog=216..255}] ~ ~ ~0.2
execute if entity @s[scores={Dialog=242}] positioned 751 13 14 run function luigis_mansion:spawn_furniture/unlit_candles
teleport @s[scores={Dialog=255..274}] ~-0.2 ~0.2 ~
teleport @s[scores={Dialog=275..294}] ~-0.1 ~ ~-0.1
execute if entity @s[scores={Dialog=280}] run setblock 744 18 16 minecraft:tripwire_hook[facing=east]
teleport @s[scores={Dialog=295..319}] ~ ~0.16 ~-0.2
teleport @s[scores={Dialog=320..339}] ~ ~ ~-0.05
teleport @s[scores={Dialog=340..359}] ~-0.4 ~ ~
teleport @s[scores={Dialog=360..364}] ~0.4 ~ ~
teleport @s[scores={Dialog=365..369}] ~-0.4 ~ ~
teleport @s[scores={Dialog=369..374}] ~-0.4 ~0.2 ~
execute if entity @s[scores={Dialog=469}] run teleport @s ~ ~-100 ~
execute if entity @s[scores={Dialog=469}] at @e[tag=parlor_key,limit=1] run summon minecraft:armor_stand ~-0.7 ~0.9 ~-0.7 {CustomName:'{"translate":"luigis_mansion:item.key"}',Pose:{Head:[0.0f,-90.0f,0.01f]},Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5,CustomModelData:15}}],Small:1b,NoGravity:1b,Tags:["item","key","eternal","parlor","rotated","bounce","no_spawn_sound"],Rotation:[-90.0f,0.0f],DisabledSlots:2039583}
execute if entity @s[scores={Dialog=469}] run scoreboard players set @e[tag=key,tag=parlor,limit=1] ActionTime 4
execute if entity @s[scores={Dialog=469}] run kill @e[tag=parlor_key,limit=1]
execute if entity @s[scores={Dialog=470}] run tag @s add dead
