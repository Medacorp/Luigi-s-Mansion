scoreboard players add @s[scores={Dialog=996..}] Dialog 1
execute unless data storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"jarvis_results"}}] run scoreboard players add @s[scores={Dialog=995}] Dialog 1
scoreboard players add @s[scores={Dialog=3..994}] Dialog 1
execute unless data storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"jarvis"}}] run scoreboard players add @s[scores={Dialog=2}] Dialog 1
scoreboard players add @s[scores={Dialog=1}] Dialog 1
execute if entity @e[tag=same_room,tag=luigi,distance=..4,limit=1] if entity @s[tag=!tried_to_appear] unless entity @s[scores={Dialog=1..}] if predicate luigis_mansion:jarvis/appear_chance run scoreboard players add @s Dialog 1
execute if entity @e[tag=same_room,tag=luigi,distance=..4,limit=1] if entity @s[tag=!tried_to_appear] unless entity @s[scores={Dialog=1..}] run tag @s add tried_to_appear
execute unless entity @e[tag=same_room,tag=luigi,distance=..4,limit=1] if entity @s[tag=tried_to_appear] unless entity @s[scores={Dialog=1..}] run tag @s remove tried_to_appear

execute if entity @s[scores={Dialog=1}] at @e[tag=same_room,tag=furniture,tag=jarvis_initial_vase,limit=1] run function luigis_mansion:entities/jarvis/ai/mansion/normal/select_vase
execute if entity @s[scores={Dialog=1}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"jarvis"},progress:0}
execute if entity @s[scores={Dialog=1}] store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @s Room
execute if entity @s[tag=kick_players_out] as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/move/teleport {teleport:"752 29 46 -180 0"}
execute if entity @s[tag=kick_players_out] run scoreboard players set @s ActionTime 0
execute if entity @s[tag=kick_players_out] run scoreboard players reset @s Dialog
execute if entity @s[tag=kick_players_out] run scoreboard players reset @s Wave
execute if entity @s[tag=kick_players_out] run tag @s remove pop_out
execute if entity @s[tag=kick_players_out] run tag @s remove frozen
execute if entity @s[tag=kick_players_out] run tag @s[tag=visible] add pop_in
execute if entity @s[tag=kick_players_out] run tag @e[tag=same_room,tag=haunted_jar] remove enabled
execute if entity @s[tag=kick_players_out] run tag @e[tag=same_room,tag=furniture,tag=door] remove blockade
execute if entity @s[tag=kick_players_out] at @e[tag=same_room,tag=furniture,tag=jarvis_initial_vase,limit=1] run function luigis_mansion:entities/jarvis/ai/mansion/normal/select_vase
execute if entity @s[tag=kick_players_out] run tag @s remove kick_players_out

execute if entity @s[scores={Dialog=5}] run tag @e[tag=same_room,tag=furniture,tag=door] add blockade
execute if entity @s[scores={Dialog=5..659}] as @a[tag=same_room] run function luigis_mansion:other/music/set/mini_game
scoreboard players add @s[scores={Dialog=5..914},tag=!frozen,tag=in_ice,tag=!pop_out,tag=!pop_in,tag=visible] Wave 1
tag @s[scores={Dialog=5..914},tag=!frozen,tag=in_ice,tag=!pop_out,tag=!pop_in,tag=visible] add frozen
scoreboard players set @s[scores={Dialog=5}] Wave 0
execute if entity @s[scores={Dialog=124}] at @e[tag=same_room,tag=furniture,tag=jarvis_game_vase,sort=random,limit=1] run function luigis_mansion:entities/jarvis/ai/mansion/normal/select_vase
tag @s[scores={Dialog=124},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=144..274},tag=frozen] Dialog 274
tag @s[scores={Dialog=274},tag=!frozen] add pop_in
execute if entity @s[scores={Dialog=354}] at @e[tag=same_room,tag=furniture,tag=jarvis_game_vase,sort=random,limit=1] run function luigis_mansion:entities/jarvis/ai/mansion/normal/select_vase
tag @s[scores={Dialog=354},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=374..414},tag=frozen] Dialog 414
tag @s[scores={Dialog=414},tag=!frozen] add pop_in
execute if entity @s[scores={Dialog=474}] at @e[tag=same_room,tag=furniture,tag=jarvis_game_vase,sort=random,limit=1] run function luigis_mansion:entities/jarvis/ai/mansion/normal/select_vase
tag @s[scores={Dialog=474},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=494..534},tag=frozen] Dialog 534
tag @s[scores={Dialog=534},tag=!frozen] add pop_in
execute if entity @s[scores={Dialog=584}] at @e[tag=same_room,tag=furniture,tag=jarvis_game_vase,sort=random,limit=1] run function luigis_mansion:entities/jarvis/ai/mansion/normal/select_vase
tag @s[scores={Dialog=584},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=604..644},tag=frozen] Dialog 644
tag @s[scores={Dialog=644},tag=!frozen] add pop_in
execute if entity @s[scores={Dialog=684}] at @e[tag=same_room,tag=furniture,tag=jarvis_game_vase,sort=random,limit=1] run function luigis_mansion:entities/jarvis/ai/mansion/normal/select_vase
tag @s[scores={Dialog=684},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=704..744},tag=frozen] Dialog 744
tag @s[scores={Dialog=744},tag=!frozen] add pop_in
execute if entity @s[scores={Dialog=774}] at @e[tag=same_room,tag=furniture,tag=jarvis_game_vase,sort=random,limit=1] run function luigis_mansion:entities/jarvis/ai/mansion/normal/select_vase
tag @s[scores={Dialog=774},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=794..834},tag=frozen] Dialog 834
tag @s[scores={Dialog=834},tag=!frozen] add pop_in
execute if entity @s[scores={Dialog=854}] at @e[tag=same_room,tag=furniture,tag=jarvis_game_vase,sort=random,limit=1] run function luigis_mansion:entities/jarvis/ai/mansion/normal/select_vase
tag @s[scores={Dialog=854},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=874..914},tag=frozen] Dialog 914
tag @s[scores={Dialog=914},tag=!frozen] add pop_in

execute if entity @s[scores={Dialog=994}] at @e[tag=same_room,tag=furniture,tag=jarvis_initial_vase,limit=1] run function luigis_mansion:entities/jarvis/ai/mansion/normal/select_vase
execute if entity @s[scores={Dialog=994}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"jarvis_results"},progress:0}
execute if entity @s[scores={Dialog=994}] store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @s Room
execute if entity @s[scores={Dialog=994}] store result storage luigis_mansion:data dialogs[-1].result int 1 run scoreboard players get @s Wave
tag @s[scores={Dialog=996}] add pop_in
execute if entity @s[scores={Dialog=996}] as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if entity @s[scores={Dialog=996}] run tag @e[tag=same_room,tag=haunted_jar] add enabled
execute if entity @s[scores={Dialog=996..}] as @a[tag=same_room] run function luigis_mansion:other/music/set/danger
execute if entity @s[scores={Dialog=1016}] at @e[tag=same_room,tag=furniture,tag=jarvis_fight_vase,limit=1] run function luigis_mansion:entities/jarvis/ai/mansion/normal/select_vase
tag @s[scores={Dialog=1016},tag=!vanish] add pop_out
scoreboard players set @s[scores={Dialog=1036}] VulnerableTime 40
tag @s[scores={Dialog=1076},tag=!vanish] add pop_in
scoreboard players set @s[scores={Dialog=1135}] Dialog 1015