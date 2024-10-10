scoreboard players add @s WarpTime 1
execute if entity @s[scores={WarpTime=10}] run playsound luigis_mansion:item.game_boy_horror.warp player @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={WarpTime=50..}] remove grabbed
execute if entity @s[scores={WarpTime=95..129}] run function luigis_mansion:room/default_position_in_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute if entity @s[scores={WarpTime=95..129}] run function luigis_mansion:main/update_last_position
execute at @s[scores={WarpTime=50..130}] run particle minecraft:dust{color:8421631,scale:1.5f} ~ ~1.2 ~ 0.5 0.6 0.5 0 10
execute unless score #mirrored Selected matches 1 at @s[scores={WarpTime=70..129}] run teleport @s ~ ~ ~ ~54 ~
execute if score #mirrored Selected matches 1 at @s[scores={WarpTime=70..129}] run teleport @s ~ ~ ~ ~-54 ~
execute if entity @s[scores={WarpTime=96}] run scoreboard players set @s LastRoom 0
execute if entity @s[scores={WarpTime=96}] run scoreboard players operation @s PreviousRoom = @s Room
execute if entity @s[scores={WarpTime=96}] if score @s Room = @s LastRoom run tag @s add was_in_room
tag @s[scores={WarpTime=130},tag=!was_in_room] remove seen_room_name
scoreboard players set @s[scores={Dialog=1..}] WarpTime 130
tag @s[scores={WarpTime=130}] remove warp
tag @s[scores={WarpTime=130}] remove was_in_room
scoreboard players reset @s[scores={WarpTime=130}] WarpTime