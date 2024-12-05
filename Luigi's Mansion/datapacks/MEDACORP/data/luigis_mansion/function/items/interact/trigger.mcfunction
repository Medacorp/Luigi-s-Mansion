tag @s add searcher
scoreboard players operation #temp Room = @s Room
execute at @s[scores={Shrunk=0}] unless entity @s[scores={OpenMapTime=1..}] rotated ~ 0 positioned ^ ^ ^1 align xyz positioned ~0.5 ~ ~0.5 if entity @e[distance=..1,tag=door,tag=!open_door,tag=!barricade,tag=!unopenable,tag=affected_by_interact,tag=!no_ai,limit=1] run function luigis_mansion:items/interact/try_opening_door
execute at @s[scores={Shrunk=0},tag=!try_opening_door] unless entity @s[scores={OpenMapTime=1..}] rotated ~ 0 positioned ^ ^1.1 ^2 if entity @e[distance=..2,tag=can_talk_to,tag=!talk,tag=!ghost,tag=!no_ai,limit=1] run function luigis_mansion:items/interact/try_talking
execute at @s[scores={Shrunk=0},tag=!try_opening_door,tag=!talk] unless entity @s[scores={OpenMapTime=1..}] rotated ~ 0 positioned ^ ^1.1 ^2 if entity @e[distance=..2,tag=can_talk_to,tag=!talk,tag=ghost,tag=!no_ai,tag=visible,limit=1] run function luigis_mansion:items/interact/try_talking_with_ghost
execute at @s[scores={Shrunk=0},tag=!try_opening_door,tag=!talk] unless entity @s[scores={OpenMapTime=1..}] run function luigis_mansion:items/interact/try_shaking
execute unless entity @s[scores={InteractionTime=1..}] at @s[scores={Shrunk=0},tag=!try_opening_door,tag=!talk] unless entity @s[scores={OpenMapTime=1..}] rotated ~ 0 positioned ^ ^1.1 ^2 if entity @e[tag=luigi,tag=!me,distance=..2,limit=1] run function luigis_mansion:items/interact/try_interacting_with_player
execute unless entity @s[scores={InteractionTime=1..}] if entity @s[scores={Sound=0},tag=!try_opening_door,tag=!talk] run function luigis_mansion:room/yell
execute unless entity @s[scores={InteractionTime=1..}] if entity @s[scores={Sound=1..},tag=idle,tag=!try_opening_door,tag=!talk] run function luigis_mansion:room/yell
scoreboard players reset #temp Room
tag @s remove talk
tag @s remove searcher
scoreboard players set @s UseItem 0