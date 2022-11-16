execute if entity @s[scores={Dialog=1..2042}] unless entity @s[scores={Dialog=865..1634}] run scoreboard players set #freeze_timer Selected 1
teleport @s[tag=visible,tag=!pop_out,tag=!pop_in,tag=!vanish] ~ 28.5 ~
teleport @s[tag=!visible,tag=!pop_out,tag=!pop_in] ~ 27.5 ~

scoreboard players add @s[scores={Dialog=620..},tag=!vanish] Dialog 1
execute if entity @a[scores={JarvisChoice=1..},limit=1] run scoreboard players add @s[scores={Dialog=555..619}] Dialog 1
scoreboard players add @s[scores={Dialog=1..554}] Dialog 1
execute if entity @e[tag=same_room,tag=!spectator,distance=..4,limit=1] if entity @s[tag=!tried_to_appear] unless entity @s[scores={Dialog=1..}] if predicate luigis_mansion:jarvis_appear_chance run scoreboard players add @s Dialog 1
execute if entity @e[tag=same_room,tag=!spectator,distance=..4,limit=1] if entity @s[tag=!tried_to_appear] unless entity @s[scores={Dialog=1..}] run tag @s add tried_to_appear
execute unless entity @e[tag=same_room,tag=!spectator,distance=..4,limit=1] if entity @s[tag=tried_to_appear] unless entity @s[scores={Dialog=1..}] run tag @s remove tried_to_appear

tag @s[scores={Dialog=1}] add pop_out
execute if entity @s[scores={Dialog=1..619}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1..863}] if entity @a[scores={JarvisChoice=1}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1..856}] as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/talking_ghost
execute if entity @s[scores={Dialog=10}] if data storage luigis_mansion:data current_state.current_data.technical_data{jarvis_spoke:1b} run scoreboard players set @s Dialog 426
execute if entity @s[scores={Dialog=10}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.1"}]}
execute if entity @s[scores={Dialog=10}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.1.more"}]}
execute if entity @s[scores={Dialog=66}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.2"}]}
execute if entity @s[scores={Dialog=66}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.2.more"}]}
execute if entity @s[scores={Dialog=170}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.3"}]}
execute if entity @s[scores={Dialog=170}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.3.more"}]}
execute if entity @s[scores={Dialog=330}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.4"}]}
execute if entity @s[scores={Dialog=330}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.4.more"}]}
scoreboard players set @s[scores={Dialog=425}] Dialog 553
execute if entity @s[scores={Dialog=426}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.repeat.1"}]}
execute if entity @s[scores={Dialog=458}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.repeat.2"}]}
execute if entity @s[scores={Dialog=458}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.repeat.2.more"}]}
execute if entity @s[scores={Dialog=554}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {jarvis_spoke:1b}
execute if entity @s[scores={Dialog=554}] run tellraw @a[tag=same_room] {"translate":"luigis_mansion:dialog.jarvis.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger JarvisChoice set 1"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.jarvis.no","clickEvent":{"action":"run_command","value":"/trigger JarvisChoice set 2"}}]}
execute if entity @s[scores={Dialog=554}] run scoreboard players enable @a[tag=same_room,tag=!spectator] JarvisChoice
execute if entity @s[scores={Dialog=556}] if entity @a[scores={JarvisChoice=1..}] as @a[scores={JarvisChoice=0}] run trigger JarvisChoice set 0
execute if entity @s[scores={Dialog=556}] if entity @a[scores={JarvisChoice=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.1"}]}
execute if entity @s[scores={Dialog=580}] if entity @a[scores={JarvisChoice=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.2"}]}
execute if entity @s[scores={Dialog=580}] if entity @a[scores={JarvisChoice=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.2.more"}]}
execute if entity @s[scores={Dialog=656}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.3"}]}
execute if entity @s[scores={Dialog=656}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.3.more"}]}
execute if entity @s[scores={Dialog=744}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.4"}]}
execute if entity @s[scores={Dialog=744}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.4.more"}]}
execute if entity @s[scores={Dialog=832}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.5"}]}
execute if entity @s[scores={Dialog=864}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=864}] add pop_in
execute if entity @s[scores={Dialog=556}] if entity @a[scores={JarvisChoice=2}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.no.1"}]}
execute if entity @s[scores={Dialog=556}] if entity @a[scores={JarvisChoice=2}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.no.1.more"}]}
execute if entity @s[scores={Dialog=620}] if entity @a[scores={JarvisChoice=2}] as @a[tag=same_room,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_back_player
execute if entity @s[scores={Dialog=620}] if entity @a[scores={JarvisChoice=2}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=620}] if entity @a[scores={JarvisChoice=2}] run teleport @a[tag=same_room,tag=!spectator] 752 29 -31 0 0
execute if entity @s[scores={Dialog=620}] if entity @a[scores={JarvisChoice=2}] run scoreboard players set #ceramics_studio Wave -1
execute if entity @s[scores={Dialog=620}] run scoreboard players reset @a JarvisChoice

execute if entity @s[scores={Dialog=865}] run tag @e[scores={Room=65},tag=door,tag=frame] add blockade
execute if entity @s[scores={Dialog=865..1519}] as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/mini_game
tag @s[scores={Dialog=865}] add can_freeze
scoreboard players set @s[scores={Dialog=865}] Wave 0
execute if entity @s[scores={Dialog=984}] run function luigis_mansion:entities/jarvis/switch_jar/hidden
tag @s[scores={Dialog=984},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=1004..1134},tag=frozen] Dialog 1134
tag @s[scores={Dialog=1134},tag=!frozen] add pop_in
execute if entity @s[scores={Dialog=1214}] run function luigis_mansion:entities/jarvis/switch_jar/hidden
tag @s[scores={Dialog=1214},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=1234..1274},tag=frozen] Dialog 1274
tag @s[scores={Dialog=1274},tag=!frozen] add pop_in
execute if entity @s[scores={Dialog=1334}] run function luigis_mansion:entities/jarvis/switch_jar/hidden
tag @s[scores={Dialog=1334},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=1354..1394},tag=frozen] Dialog 1394
tag @s[scores={Dialog=1394},tag=!frozen] add pop_in
execute if entity @s[scores={Dialog=1444}] run function luigis_mansion:entities/jarvis/switch_jar/hidden
tag @s[scores={Dialog=1444},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=1464..1504},tag=frozen] Dialog 1504
tag @s[scores={Dialog=1504},tag=!frozen] add pop_in
execute if entity @s[scores={Dialog=1544}] run function luigis_mansion:entities/jarvis/switch_jar/hidden
tag @s[scores={Dialog=1544},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=1564..1604},tag=frozen] Dialog 1604
tag @s[scores={Dialog=1604},tag=!frozen] add pop_in
execute if entity @s[scores={Dialog=1634}] run function luigis_mansion:entities/jarvis/switch_jar/hidden
tag @s[scores={Dialog=1634},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=1654..1694},tag=frozen] Dialog 1694
tag @s[scores={Dialog=1694},tag=!frozen] add pop_in
execute if entity @s[scores={Dialog=1714}] run function luigis_mansion:entities/jarvis/switch_jar/hidden
tag @s[scores={Dialog=1714},tag=!frozen] add pop_out
scoreboard players set @s[scores={Dialog=1734..1774},tag=frozen] Dialog 1774
tag @s[scores={Dialog=1774},tag=!frozen] add pop_in
tag @s[scores={Dialog=1774}] remove can_freeze
execute if entity @s[tag=frozen] run playsound luigis_mansion:entity.jarvis.freeze hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players add @s[tag=frozen] Wave 1
tag @s[tag=frozen] add got_frozen
tag @s[tag=frozen] remove frozen

teleport @s[scores={Dialog=1834}] 701 29 -52
tag @s[scores={Dialog=1854}] add pop_out
execute if entity @s[scores={Dialog=1854..2241}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1864}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.1"}]}
execute if entity @s[scores={Dialog=1864}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.1.more"}]}
execute if entity @s[scores={Dialog=1888}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.2"}]}
tag @s[scores={Dialog=1920}] add pop_in
tag @s[scores={Dialog=1960}] add pop_out
execute if entity @s[scores={Dialog=1960..2241}] as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/talking_ghost
execute if entity @s[scores={Dialog=1970,Wave=0}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.0"}]}
execute if entity @s[scores={Dialog=1970,Wave=0}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.0.more"}]}
execute if entity @s[scores={Dialog=1970,Wave=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.1"}]}
execute if entity @s[scores={Dialog=1970,Wave=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.1.more"}]}
execute if entity @s[scores={Dialog=1970,Wave=2}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.2"}]}
execute if entity @s[scores={Dialog=1970,Wave=2}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.2.more"}]}
execute if entity @s[scores={Dialog=1970,Wave=3}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.3"}]}
execute if entity @s[scores={Dialog=1970,Wave=3}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.3.more"}]}
execute if entity @s[scores={Dialog=1970,Wave=4}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.4"}]}
execute if entity @s[scores={Dialog=1970,Wave=4}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.4.more"}]}
execute if entity @s[scores={Dialog=1970,Wave=5}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.5"}]}
execute if entity @s[scores={Dialog=1970,Wave=5}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.5.more"}]}
execute if entity @s[scores={Dialog=1970,Wave=6}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.6"}]}
execute if entity @s[scores={Dialog=1970,Wave=6}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.6.more"}]}
execute if entity @s[scores={Dialog=1970,Wave=7}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.7"}]}
execute if entity @s[scores={Dialog=1970,Wave=7}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.7.more"}]}
execute if entity @s[scores={Dialog=2018,Wave=0..6}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.no.1"}]}
execute if entity @s[scores={Dialog=2018,Wave=0..6}] if score #players Totals matches 2..3 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.no.1.more"}]}
execute if entity @s[scores={Dialog=2018,Wave=0..6}] if score #players Totals matches 4.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.no.1.even_more"}]}
execute if entity @s[scores={Dialog=2106,Wave=0..6}] as @a[tag=same_room,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_back_player
execute if entity @s[scores={Dialog=2106,Wave=0..6}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=2106,Wave=0..6}] run teleport @a[tag=same_room,tag=!spectator] 752 29 -31 0 0
execute if entity @s[scores={Dialog=2106,Wave=0..6}] run scoreboard players set #ceramics_studio Wave -1
execute if entity @s[scores={Dialog=2018,Wave=7}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.yes.1"}]}
execute if entity @s[scores={Dialog=2018,Wave=7}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.yes.1.more"}]}
execute if entity @s[scores={Dialog=2082,Wave=7}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.yes.2"}]}
execute if entity @s[scores={Dialog=2082,Wave=7}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.yes.2.more"}]}
tag @s[scores={Dialog=2242}] add pop_in
execute if entity @s[scores={Dialog=2242}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=2242}] run tag @e[tag=haunted_jar] add enabled
execute if entity @s[scores={Dialog=2242..}] as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/danger
execute if entity @s[scores={Dialog=2262},tag=!vanish] run function luigis_mansion:entities/jarvis/switch_jar/hidden
tag @s[scores={Dialog=2262},tag=!vanish] add pop_out
scoreboard players set @s[scores={Dialog=2282}] VulnerableTime 40
tag @s[scores={Dialog=2322},tag=!vanish] add pop_in
scoreboard players set @s[scores={Dialog=2381}] Dialog 2261

execute if entity @s[tag=pop_out,tag=!vanish] run function luigis_mansion:entities/jarvis/pop_out
execute if entity @s[tag=pop_in,tag=!vanish] run function luigis_mansion:entities/jarvis/pop_in
execute if entity @s[tag=got_frozen] run function luigis_mansion:entities/jarvis/got_frozen
execute if entity @s[tag=!pop_out,tag=!pop_in,tag=!got_frozen,tag=!vanish] run function luigis_mansion:animations/jarvis/idle