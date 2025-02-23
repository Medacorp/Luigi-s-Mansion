scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 1..109 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=ghost,tag=same_room,limit=1] positioned ^ ^-1.25 ^3 facing entity @e[tag=ghost,tag=same_room,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/move/execute {execute:"at @e[tag=ghost,tag=same_room,limit=1] positioned ^ ^-1 ^4 facing entity @e[tag=ghost,tag=same_room,limit=1] feet",teleport:"~ ~ ~ ~ 0"}
execute if score #dialog Dialog matches 110 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 110 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^2 ~-180 0"}
execute if score #dialog Dialog matches 111..170 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 180 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=ghost,tag=same_room,limit=1] positioned ^2 ^-1 ^6 facing entity @e[tag=ghost,tag=same_room,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 180 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=ghost,tag=same_room,limit=1] positioned ^-2 ^-1 ^6 facing entity @e[tag=ghost,tag=same_room,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 180..220 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^0.1 ~ ~"}
execute if score #dialog Dialog matches 221..240 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 1..109 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 1.. as @a[tag=same_room] run function luigis_mansion:other/music/set/bogmire_battle
execute if score #dialog Dialog matches 60 at @e[tag=ghost,tag=same_room,limit=1] run summon minecraft:lightning_bolt ~ ~ ~
execute if score #dialog Dialog matches 70 at @e[tag=ghost,tag=same_room,limit=1] run summon minecraft:lightning_bolt ~ ~ ~
execute if score #dialog Dialog matches 80 at @e[tag=ghost,tag=same_room,limit=1] run summon minecraft:lightning_bolt ~ ~ ~
execute if score #dialog Dialog matches 90 at @e[tag=ghost,tag=same_room,limit=1] run summon minecraft:lightning_bolt ~ ~ ~
execute if score #dialog Dialog matches 80 run tag @e[tag=ghost,tag=same_room,limit=1] add appear
execute if score #dialog Dialog matches 110 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 110 as @e[tag=luigi,tag=same_room] at @s positioned ^ ^ ^1 run function luigis_mansion:entities/luigi/animation/set/scare/bash_no_move
execute if score #dialog Dialog matches 110..240 run scoreboard players set @e[tag=luigi,tag=same_room,scores={AnimationProgress=30..}] AnimationProgress 29
execute if score #dialog Dialog matches 240 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 240 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 240 run scoreboard players add #graveyard Wave 1
execute if score #dialog Dialog matches 240 run scoreboard players set #dialog Dialog -1

execute if entity @e[tag=ghost,tag=same_room,limit=1,scores={Sound=0},tag=visible,tag=!appear] run playsound luigis_mansion:entity.bogmire.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @e[tag=ghost,tag=same_room,limit=1,scores={Sound=0},tag=visible,tag=!appear] Sound 30