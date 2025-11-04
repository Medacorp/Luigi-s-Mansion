execute if entity @s[tag=dying] run function luigis_mansion:entities/ghost/death

function luigis_mansion:room/dark_room
tag @s[tag=dark_room] remove caught_by_boo_radar
tag @s[tag=dark_room,scores={Health=1}] remove in_vacuum
scoreboard players set @s[tag=dark_room,scores={Health=1}] HurtTime 0
execute if entity @s[tag=dark_room] run scoreboard players operation #temp Move *= #2 Constants
tag @s[tag=!dark_room] add caught_by_boo_radar

scoreboard players set @s[scores={Dialog=0},tag=in_ice] Dialog 40
execute if entity @s[scores={Dialog=1..}] run function luigis_mansion:entities/boo/ai/frozen

scoreboard players operation #temp RoomSection = @s RoomSection

execute if entity @s[tag=!dying,tag=!appear,tag=!countdown] unless entity @s[tag=!in_vacuum,scores={HurtTime=0}] run function luigis_mansion:entities/boo/hurt
execute at @s[tag=!flee,tag=!in_vacuum,tag=!appear,tag=!countdown,tag=!laugh,tag=!taunt,tag=!attack,tag=!dying] run function luigis_mansion:entities/boo/ai/normal
execute at @s[tag=flee,tag=!dying,tag=!appear,tag=!countdown] run function luigis_mansion:entities/boo/ai/flee

execute if entity @s[tag=attack] run function luigis_mansion:entities/boo/attack/dash
execute if entity @s[tag=appear] run function luigis_mansion:entities/boo/appear
execute if entity @s[tag=countdown] run function luigis_mansion:entities/boo/countdown
execute if entity @s[tag=laugh,tag=!collided] run function luigis_mansion:entities/boo/laugh
execute if entity @s[tag=taunt] run function luigis_mansion:entities/boo/taunt
execute at @s[tag=!dying,tag=!appear] if entity @e[tag=luigi,distance=..0.7,limit=1] run function luigis_mansion:entities/boo/collide

execute if entity @s[tag=remove_from_existence,tag=!dying,tag=!warped] run function luigis_mansion:entities/boo/warp with entity @s data.mansion

tag @s remove flee
scoreboard players reset #temp RoomSection