execute if entity @s[scores={Dialog=1..2034}] unless entity @s[scores={Dialog=857..1626}] run scoreboard players set #freeze_timer Selected 1
teleport @s[tag=visible,tag=!pop_out,tag=!pop_in,tag=!vanish] ~ 28.5 ~
teleport @s[tag=!visible,tag=!pop_out,tag=!pop_in] ~ 27.5 ~

scoreboard players add @s[scores={Dialog=612..},tag=!vanish] Dialog 1
execute if entity @a[scores={JarvisChoice=1..},limit=1] run scoreboard players add @s[scores={Dialog=547..611}] Dialog 1
scoreboard players add @s[scores={Dialog=1..546}] Dialog 1
execute if entity @e[tag=same_room,tag=!spectator,distance=..4,limit=1] if entity @s[tag=!tried_to_appear] unless entity @s[scores={Dialog=1..}] if predicate luigis_mansion:jarvis_appear_chance run scoreboard players add @s Dialog 1
execute if entity @e[tag=same_room,tag=!spectator,distance=..4,limit=1] if entity @s[tag=!tried_to_appear] unless entity @s[scores={Dialog=1..}] run tag @s add tried_to_appear
execute unless entity @e[tag=same_room,tag=!spectator,distance=..4,limit=1] if entity @s[tag=tried_to_appear] unless entity @s[scores={Dialog=1..}] run tag @s remove tried_to_appear

tag @s[scores={Dialog=1}] add pop_out
execute if entity @s[scores={Dialog=1..856}] as @a[tag=same_room,tag=!spectator] unless entity @s[scores={MusicGroup=0,MusicType=23}] run function luigis_mansion:other/music/set/talking_ghost
execute if entity @s[scores={Dialog=10}] if data storage luigis_mansion:data current_state.current_data.technical_data{jarvis_spoke:1b} run scoreboard players set @s Dialog 418
execute if entity @s[scores={Dialog=10}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.1"}]}
execute if entity @s[scores={Dialog=10}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.1.more"}]}
execute if entity @s[scores={Dialog=58}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.2"}]}
execute if entity @s[scores={Dialog=58}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.2.more"}]}
execute if entity @s[scores={Dialog=162}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.3"}]}
execute if entity @s[scores={Dialog=162}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.3.more"}]}
execute if entity @s[scores={Dialog=322}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.4"}]}
execute if entity @s[scores={Dialog=322}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.4.more"}]}
execute if entity @s[scores={Dialog=418}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.5"}]}
execute if entity @s[scores={Dialog=418}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {jarvis_spoke:1b}
execute if entity @s[scores={Dialog=450}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.6"}]}
execute if entity @s[scores={Dialog=450}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.6.more"}]}
execute if entity @s[scores={Dialog=546}] run tellraw @a[tag=same_room] {"translate":"luigis_mansion:dialog.jarvis.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger JarvisChoice set 1"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.jarvis.no","clickEvent":{"action":"run_command","value":"/trigger JarvisChoice set 2"}}]}
execute if entity @s[scores={Dialog=546}] run scoreboard players enable @a[tag=same_room,tag=!spectator] JarvisChoice
execute if entity @s[scores={Dialog=548}] if entity @a[scores={JarvisChoice=1..}] as @a[scores={JarvisChoice=0}] run trigger JarvisChoice set 0
execute if entity @s[scores={Dialog=548}] if entity @a[scores={JarvisChoice=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.1"}]}
execute if entity @s[scores={Dialog=572}] if entity @a[scores={JarvisChoice=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.2"}]}
execute if entity @s[scores={Dialog=572}] if entity @a[scores={JarvisChoice=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.2.more"}]}
execute if entity @s[scores={Dialog=648}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.3"}]}
execute if entity @s[scores={Dialog=648}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.3.more"}]}
execute if entity @s[scores={Dialog=736}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.4"}]}
execute if entity @s[scores={Dialog=736}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.4.more"}]}
execute if entity @s[scores={Dialog=824}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.5"}]}
tag @s[scores={Dialog=856}] add pop_in
execute if entity @s[scores={Dialog=548}] if entity @a[scores={JarvisChoice=2}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.no.1"}]}
execute if entity @s[scores={Dialog=548}] if entity @a[scores={JarvisChoice=2}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.no.1.more"}]}
execute if entity @s[scores={Dialog=612}] if entity @a[scores={JarvisChoice=2}] as @a[tag=same_room,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_back_player
execute if entity @s[scores={Dialog=612}] if entity @a[scores={JarvisChoice=2}] run teleport @a[tag=same_room,tag=!spectator] 752 29 46 -180 0
execute if entity @s[scores={Dialog=612}] if entity @a[scores={JarvisChoice=2}] run scoreboard players set #ceramics_studio Wave -1
execute if entity @s[scores={Dialog=612}] run scoreboard players reset @a JarvisChoice

execute if entity @s[scores={Dialog=857}] run function luigis_mansion:room/normal/ceramics_studio/add_blockade
execute if entity @s[scores={Dialog=857..1511}] as @a[tag=same_room,tag=!spectator] unless entity @s[scores={MusicGroup=0,MusicType=37}] run function luigis_mansion:other/music/set/mini_game
tag @s[scores={Dialog=857}] add can_freeze
scoreboard players set @s[scores={Dialog=857}] Wave 0
execute if entity @s[scores={Dialog=976}] run function luigis_mansion:entities/jarvis/switch_jar/normal
tag @s[scores={Dialog=976},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=996..1126},tag=frozen] Dialog 1126
tag @s[scores={Dialog=1126},tag=!frozen] add pop_in
execute if entity @s[scores={Dialog=1206}] run function luigis_mansion:entities/jarvis/switch_jar/normal
tag @s[scores={Dialog=1206},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=1226..1266},tag=frozen] Dialog 1266
tag @s[scores={Dialog=1266},tag=!frozen] add pop_in
execute if entity @s[scores={Dialog=1326}] run function luigis_mansion:entities/jarvis/switch_jar/normal
tag @s[scores={Dialog=1326},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=1346..1386},tag=frozen] Dialog 1386
tag @s[scores={Dialog=1386},tag=!frozen] add pop_in
execute if entity @s[scores={Dialog=1436}] run function luigis_mansion:entities/jarvis/switch_jar/normal
tag @s[scores={Dialog=1436},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=1456..1496},tag=frozen] Dialog 1496
tag @s[scores={Dialog=1496},tag=!frozen] add pop_in
execute if entity @s[scores={Dialog=1536}] run function luigis_mansion:entities/jarvis/switch_jar/normal
tag @s[scores={Dialog=1536},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=1556..1596},tag=frozen] Dialog 1596
tag @s[scores={Dialog=1596},tag=!frozen] add pop_in
execute if entity @s[scores={Dialog=1626}] run function luigis_mansion:entities/jarvis/switch_jar/normal
tag @s[scores={Dialog=1626},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=1646..1686},tag=frozen] Dialog 1686
tag @s[scores={Dialog=1686},tag=!frozen] add pop_in
execute if entity @s[scores={Dialog=1706}] run function luigis_mansion:entities/jarvis/switch_jar/normal
tag @s[scores={Dialog=1706},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=1726..1766},tag=frozen] Dialog 1766
tag @s[scores={Dialog=1766},tag=!frozen] add pop_in
tag @s[scores={Dialog=1766}] remove can_freeze
execute if entity @s[tag=frozen] run playsound luigis_mansion:entity.jarvis.freeze hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players add @s[tag=frozen] Wave 1
tag @s[tag=frozen] add got_frozen
tag @s[tag=frozen] remove frozen

teleport @s[scores={Dialog=1826}] 701 29 67
tag @s[scores={Dialog=1846}] add pop_out
execute if entity @s[scores={Dialog=1856}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.1"}]}
execute if entity @s[scores={Dialog=1856}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.1.more"}]}
execute if entity @s[scores={Dialog=1880}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.2"}]}
tag @s[scores={Dialog=1912}] add pop_in
tag @s[scores={Dialog=1952}] add pop_out
execute if entity @s[scores={Dialog=1952..2233}] as @a[tag=same_room,tag=!spectator] unless entity @s[scores={MusicGroup=0,MusicType=23}] run function luigis_mansion:other/music/set/talking_ghost
execute if entity @s[scores={Dialog=1962,Wave=0}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.0"}]}
execute if entity @s[scores={Dialog=1962,Wave=0}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.0.more"}]}
execute if entity @s[scores={Dialog=1962,Wave=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.1"}]}
execute if entity @s[scores={Dialog=1962,Wave=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.1.more"}]}
execute if entity @s[scores={Dialog=1962,Wave=2}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.2"}]}
execute if entity @s[scores={Dialog=1962,Wave=2}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.2.more"}]}
execute if entity @s[scores={Dialog=1962,Wave=3}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.3"}]}
execute if entity @s[scores={Dialog=1962,Wave=3}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.3.more"}]}
execute if entity @s[scores={Dialog=1962,Wave=4}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.4"}]}
execute if entity @s[scores={Dialog=1962,Wave=4}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.4.more"}]}
execute if entity @s[scores={Dialog=1962,Wave=5}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.5"}]}
execute if entity @s[scores={Dialog=1962,Wave=5}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.5.more"}]}
execute if entity @s[scores={Dialog=1962,Wave=6}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.6"}]}
execute if entity @s[scores={Dialog=1962,Wave=6}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.6.more"}]}
execute if entity @s[scores={Dialog=1962,Wave=7}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.7"}]}
execute if entity @s[scores={Dialog=1962,Wave=7}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.7.more"}]}
execute if entity @s[scores={Dialog=2010,Wave=0..6}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.no.1"}]}
execute if entity @s[scores={Dialog=2010,Wave=0..6}] if score #players Totals matches 2..3 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.no.1.more"}]}
execute if entity @s[scores={Dialog=2010,Wave=0..6}] if score #players Totals matches 4.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.no.1.even_more"}]}
execute if entity @s[scores={Dialog=2098,Wave=0..6}] as @a[tag=same_room,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_back_player
execute if entity @s[scores={Dialog=2098,Wave=0..6}] run teleport @a[tag=same_room,tag=!spectator] 752 29 46 -180 0
execute if entity @s[scores={Dialog=2098,Wave=0..6}] run scoreboard players set #ceramics_studio Wave -1
execute if entity @s[scores={Dialog=2010,Wave=7}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.yes.1"}]}
execute if entity @s[scores={Dialog=2074,Wave=7}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.yes.2"}]}
execute if entity @s[scores={Dialog=2074,Wave=7}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.yes.2.more"}]}
tag @s[scores={Dialog=2234}] add pop_in
execute if entity @s[scores={Dialog=2234}] run tag @e[tag=haunted_jar] add enabled
execute if entity @s[scores={Dialog=2234..}] as @a[tag=same_room,tag=!spectator] unless entity @s[scores={MusicGroup=0,MusicType=36}] run function luigis_mansion:other/music/set/danger
execute if entity @s[scores={Dialog=2254},tag=!vanish] run function luigis_mansion:entities/jarvis/switch_jar/normal
tag @s[scores={Dialog=2254},tag=!vanish] add pop_out
scoreboard players set @s[scores={Dialog=2274}] VulnerableTime 40
tag @s[scores={Dialog=2314},tag=!vanish] add pop_in
scoreboard players set @s[scores={Dialog=2373}] Dialog 2253

execute if entity @s[tag=pop_out,tag=!vanish] run function luigis_mansion:entities/jarvis/pop_out
execute if entity @s[tag=pop_in,tag=!vanish] run function luigis_mansion:entities/jarvis/pop_in
execute if entity @s[tag=got_frozen] run function luigis_mansion:entities/jarvis/got_frozen
execute if entity @s[tag=!pop_out,tag=!pop_in,tag=!got_frozen,tag=!vanish] run function luigis_mansion:animations/jarvis/idle