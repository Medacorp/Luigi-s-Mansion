scoreboard players add @s Time 1
execute if entity @s[scores={Time=10}] run playsound luigis_mansion:item.gameboy_horror.warp player @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Time=50..}] remove grabbed
execute if entity @s[scores={Time=95..129}] run function #luigis_mansion:items/gameboy_horror/warp_location
execute at @s[scores={Time=50..130}] run particle minecraft:dust 0.5 0.5 1 1.5 ~ ~1.2 ~ 0.5 0.6 0.5 0 10
execute if score #mirrored Selected matches 0 at @s[scores={Time=70..129}] run teleport @s ~ ~ ~ ~54 ~
execute if score #mirrored Selected matches 1 at @s[scores={Time=70..129}] run teleport @s ~ ~ ~ ~-54 ~
execute if entity @s[scores={Time=95}] run scoreboard players operation @s LastRoom = @s Room
execute if entity @s[scores={Time=96}] run scoreboard players operation @s PrevRoom = @s Room
execute if entity @s[scores={Time=96}] if score @s Room = @s LastRoom run tag @s add was_in_room
tag @s[scores={Time=130},tag=!was_in_room] remove seen_room_name
tag @s[scores={Time=130}] remove warp
tag @s[scores={Time=130}] remove was_in_room
scoreboard players reset @s[scores={Time=130}] Time