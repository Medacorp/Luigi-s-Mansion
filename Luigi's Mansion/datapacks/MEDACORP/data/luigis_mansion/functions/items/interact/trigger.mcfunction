tag @s add searcher
scoreboard players operation #temp Room = @s Room
tellraw @s[tag=show_credits] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.use_interact_during_credits"}]}
execute at @s[scores={Shrunk=0},tag=!show_credits] unless entity @s[scores={OpenMapTime=1..}] rotated ~ 0 positioned ^ ^ ^1 align xyz positioned ~0.5 ~ ~0.5 if entity @e[distance=..1,tag=door,tag=!open_door,tag=!barricade,tag=!unopenable,tag=affected_by_interact,limit=1] run function luigis_mansion:items/interact/try_opening_door
execute at @s[scores={Shrunk=0},tag=!show_credits,tag=!try_opening_door] unless entity @s[scores={OpenMapTime=1..}] rotated ~ 0 positioned ^ ^1.1 ^2 if entity @e[distance=..2,tag=can_talk_to,tag=!talk,tag=!ghost,limit=1] run function luigis_mansion:items/interact/try_talking
execute at @s[scores={Shrunk=0},tag=!show_credits,tag=!try_opening_door,tag=!talk] unless entity @s[scores={OpenMapTime=1..}] rotated ~ 0 positioned ^ ^1.1 ^2 if entity @e[distance=..2,tag=can_talk_to,tag=!talk,tag=ghost,tag=visible,limit=1] run function luigis_mansion:items/interact/try_talking_with_ghost
execute at @s[scores={Shrunk=0},tag=!show_credits,tag=!try_opening_door,tag=!talk] unless entity @s[scores={OpenMapTime=1..}] run function luigis_mansion:items/interact/try_shaking
execute unless entity @s[scores={InteractionTime=1..}] at @s[scores={Shrunk=0},tag=!show_credits,tag=!try_opening_door,tag=!talk] unless entity @s[scores={OpenMapTime=1..}] rotated ~ 0 positioned ^ ^1.1 ^2 if entity @e[distance=..2,tag=player,tag=!spectator,limit=1] run function luigis_mansion:items/interact/try_interacting_with_player
execute unless entity @s[scores={InteractionTime=1..}] if entity @s[scores={Sound=0},tag=!show_credits,tag=!try_opening_door,tag=!talk] run function luigis_mansion:room/yell
execute unless entity @s[scores={InteractionTime=1..}] if entity @s[scores={Sound=1..},tag=idle,tag=!show_credits,tag=!try_opening_door,tag=!talk] run function luigis_mansion:room/yell
scoreboard players reset #temp Room
tag @s remove talk
tag @s remove searcher
scoreboard players set @s UseItem 0