tag @s add searcher
scoreboard players operation #temp Room = @s Room
tellraw @s[tag=show_credits] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.use_interact_during_credits"}]}
execute at @s[scores={Shrunk=0},tag=!show_credits,tag=!gooigi] rotated ~ 0 positioned ^ ^ ^1 align xyz positioned ~0.5 ~ ~0.5 if entity @e[distance=..1,tag=door,tag=frame,tag=!open_door,tag=!unopenable,tag=!barricade,limit=1] run function luigis_mansion:items/interact/try_opening_door
execute at @s[scores={Shrunk=0},tag=!show_credits,tag=!try_opening_door,tag=!gooigi] rotated ~ 0 positioned ^ ^1.1 ^2 if entity @e[distance=..2,tag=can_talk_to,tag=!talk,limit=1] run function luigis_mansion:items/interact/try_talking
execute at @s[scores={Shrunk=0},tag=!show_credits,tag=!try_opening_door,tag=!talk] run function luigis_mansion:items/interact/try_shaking
execute unless entity @s[scores={InteractionTime=1..}] if entity @s[scores={Sound=0},tag=!show_credits,tag=!try_opening_door,tag=!talk] run function #luigis_mansion:room/yell
scoreboard players reset #temp Room
tag @s remove talk
tag @s remove searcher
scoreboard players set @s UseItem 0