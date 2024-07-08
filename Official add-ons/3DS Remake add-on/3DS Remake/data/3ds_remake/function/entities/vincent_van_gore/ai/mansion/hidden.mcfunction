scoreboard players add @s[scores={Dialog=5..6}] Dialog 1
execute if score #the_artists_studio Wave matches 9 if entity @e[tag=same_room,tag=player,tag=!spectator,distance=..5,limit=1] run scoreboard players add @s[scores={Dialog=4}] Dialog 1
scoreboard players add @s[scores={Dialog=1..3}] Dialog 1
execute if entity @e[tag=same_room,tag=!spectator,tag=player,limit=1] unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
tag @s add visible
execute if entity @s[scores={Dialog=4}] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 run tag @s[distance=..8] remove visible
execute if entity @s[scores={Dialog=1}] if data storage luigis_mansion:data current_state.current_data.technical_data{vincent_van_gore_spoke:1b} run scoreboard players set @s Dialog 3
execute if entity @s[scores={Dialog=2}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"ghost_gauntlet"},progress:0}
execute if entity @s[scores={Dialog=2}] store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @s Room
execute if entity @s[scores={Dialog=3}] run function 3ds_remake:room/hidden/the_artists_studio/wave_2 
execute if entity @s[scores={Dialog=3..4}] as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/mini_game
execute if entity @s[scores={Dialog=4}] run teleport @s ~ ~ ~ -180 ~
execute if entity @s[scores={Dialog=5}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"vincent_van_gore"},progress:0}
execute if entity @s[scores={Dialog=5}] store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @s Room
execute if entity @s[scores={Dialog=6}] run playsound luigis_mansion:entity.vincent_van_gore.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=7}] run scoreboard players set #the_artists_studio Wave 10
scoreboard players set @s[scores={Dialog=7}] VulnerableTime 2147483647

execute if entity @s[scores={Dialog=4,Sound=0}] run playsound luigis_mansion:entity.vincent_van_gore.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=4,Sound=0}] Sound 80

data remove entity @s data.animation
data modify entity @s[scores={Dialog=6..7}] data.animation set value {namespace:"luigis_mansion",id:"complain"}