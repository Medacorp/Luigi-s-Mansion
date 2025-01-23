execute store result score #temp GhostNr run data get storage luigis_mansion:data dialogs[0].bowser
execute as @e[tag=ghost,tag=same_room] if score @s GhostNr = #temp GhostNr run tag @s add this_bowser
execute store result score #temp GhostNr run data get storage luigis_mansion:data dialogs[0].bowser_head
execute as @e[tag=ghost,tag=same_room] if score @s GhostNr = #temp GhostNr run tag @s add this_bowser_head
scoreboard players reset #temp GhostNr

scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 1 run tag @e[tag=this_bowser_head,limit=1] add dying
execute if score #dialog Dialog matches 1 run tag @e[tag=this_bowser,limit=1] add dying
execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 1 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=this_bowser,limit=1] rotated ~70 0",teleport:"^ ^ ^-15 ~ ~"}
execute if score #dialog Dialog matches 1 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=this_bowser,limit=1] rotated ~-70 0",teleport:"^ ^ ^-15 ~ ~"}
execute if score #dialog Dialog matches 2..100 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"positioned ^ ^ ^15 rotated ~1 0 positioned ^ ^ ^-15",teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 2..100 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"positioned ^ ^ ^15 rotated ~-1 0 positioned ^ ^ ^-15",teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 101..180 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"positioned ^ ^ ^15 rotated ~1 0 positioned ^ ^ ^-15",teleport:"^0.25 ^0.05 ^-0.25 ~ ~"}
execute if score #dialog Dialog matches 101..180 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"positioned ^ ^ ^15 rotated ~-1 0 positioned ^ ^ ^-15",teleport:"^-0.25 ^0.05 ^-0.25 ~ ~"}
execute if score #dialog Dialog matches 181..199 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 200 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 200 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 200 as @a[tag=same_room] run function luigis_mansion:other/music/set/area_clear_skip_intro
execute if score #dialog Dialog matches 200 run scoreboard players set #dialog Dialog -1

tag @e[tag=this_bowser,limit=1] remove this_bowser
tag @e[tag=this_bowser_head,limit=1] remove this_bowser_head