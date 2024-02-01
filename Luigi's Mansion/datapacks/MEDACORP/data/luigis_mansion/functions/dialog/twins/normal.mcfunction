scoreboard players set #freeze_timer Selected 1
execute if entity @a[scores={TwinsChoice=1..},limit=1] run scoreboard players add @s[scores={Dialog=269..}] Dialog 1
scoreboard players add @s[scores={Dialog=..268}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"henry"}}}]},limit=1] add appear
tag @s[scores={Dialog=1}] add appear
execute if entity @s[scores={Dialog=1..333}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/idle
execute if entity @s[scores={Dialog=30}] run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room] ~ ~ ~ 10000
execute if entity @s[scores={Dialog=30}] run scoreboard players set @a[tag=same_room,scores={Music=..30}] Music 30
execute if entity @s[scores={Dialog=61..334}] as @a[tag=same_room] run function luigis_mansion:other/music/set/talking_ghost
tag @s[scores={Dialog=61}] add nod
scoreboard players set @s[scores={Dialog=61}] AnimationProgress 0
execute if entity @s[scores={Dialog=61}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.orville","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.twins.1"}]}
execute if entity @s[scores={Dialog=61}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.orville","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.twins.1.more"}]}
tag @s[scores={Dialog=148}] remove nod
scoreboard players set @s[scores={Dialog=148}] AnimationProgress 0
execute if entity @s[scores={Dialog=148}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"henry"}}}]},limit=1] add nod
execute if entity @s[scores={Dialog=148}] run scoreboard players set @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"henry"}}}]},limit=1] AnimationProgress 0
execute if entity @s[scores={Dialog=148}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.henry","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.twins.2"}]}
execute if entity @s[scores={Dialog=148}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.henry","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.twins.2.more"}]}
execute if entity @s[scores={Dialog=228}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"henry"}}}]},limit=1] remove nod
execute if entity @s[scores={Dialog=228}] run scoreboard players set @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"henry"}}}]},limit=1] AnimationProgress 0
tag @s[scores={Dialog=228}] add nod
scoreboard players set @s[scores={Dialog=228}] AnimationProgress 0
execute if entity @s[scores={Dialog=228}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.orville","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.twins.3"}]}
tag @s[scores={Dialog=268}] remove nod
scoreboard players set @s[scores={Dialog=268}] AnimationProgress 0
execute if entity @s[scores={Dialog=268}] run tellraw @a {"type":"translatable","translate":"luigis_mansion:dialog.twins.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TwinsChoice set 1"},"extra":[{"type":"text","text":"\n"},{"type":"translatable","translate":"luigis_mansion:dialog.twins.no","clickEvent":{"action":"run_command","value":"/trigger TwinsChoice set 2"}}]}
execute if entity @s[scores={Dialog=268}] run scoreboard players enable @a[tag=same_room] TwinsChoice
execute if entity @s[scores={Dialog=270}] run scoreboard players set @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"henry"}}}]},limit=1] AnimationProgress 0
execute if entity @s[scores={Dialog=270}] if entity @a[scores={TwinsChoice=1..}] as @a[scores={TwinsChoice=0}] run trigger TwinsChoice set 0
execute if entity @s[scores={Dialog=270}] if entity @a[scores={TwinsChoice=1}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"henry"}}}]},limit=1] add nod
execute if entity @s[scores={Dialog=270}] if entity @a[scores={TwinsChoice=1}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.henry","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.twins.yes.1"}]}
execute if entity @s[scores={Dialog=278}] if entity @a[scores={TwinsChoice=1}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"henry"}}}]},limit=1] remove nod
execute if entity @s[scores={Dialog=278}] if entity @a[scores={TwinsChoice=1}] run scoreboard players set @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"henry"}}}]},limit=1] AnimationProgress 0
execute if entity @s[scores={Dialog=278}] if entity @a[scores={TwinsChoice=1}] run tag @s add nod
execute if entity @s[scores={Dialog=278}] if entity @a[scores={TwinsChoice=1}] run scoreboard players set @s AnimationProgress 0
execute if entity @s[scores={Dialog=278}] if entity @a[scores={TwinsChoice=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.orville","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.twins.yes.2"}]}
execute if entity @s[scores={Dialog=278}] if entity @a[scores={TwinsChoice=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.orville","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.twins.yes.2.more"}]}
execute if entity @s[scores={Dialog=278}] if entity @a[scores={TwinsChoice=1}] run scoreboard players set #the_twins_room Wave 3
execute if entity @s[scores={Dialog=278}] if entity @a[scores={TwinsChoice=2}] run tag @s add shake
execute if entity @s[scores={Dialog=278}] if entity @a[scores={TwinsChoice=2}] run scoreboard players set @s AnimationProgress 0
execute if entity @s[scores={Dialog=270}] if entity @a[scores={TwinsChoice=2}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"henry"}}}]},limit=1] add shake
execute if entity @s[scores={Dialog=270}] if entity @a[scores={TwinsChoice=2}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.orville","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.twins.no.1"}]}
execute if entity @s[scores={Dialog=310}] if entity @a[scores={TwinsChoice=2}] run scoreboard players set @s Dialog 334
execute if entity @s[scores={Dialog=334}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=334}] run scoreboard players set @a TwinsChoice 0
tag @s[scores={Dialog=334}] add remove_from_existence
execute if entity @s[tag=remove_from_existence] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if entity @s[tag=remove_from_existence] run scoreboard players reset @a[scores={TwinsChoice=0..}] TwinsChoice
execute if entity @s[tag=remove_from_existence] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"henry"}}}]},tag=no_ai,limit=1] add remove_from_existence
execute if entity @s[tag=remove_from_existence] run teleport @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"henry"}}}]},tag=no_ai,limit=1] ~ ~-100 ~
teleport @s[tag=remove_from_existence] ~ ~-100 ~