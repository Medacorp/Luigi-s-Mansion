execute unless entity @a[scores={LastRoom=49},limit=1] run function #luigis_mansion:room/hidden/the_twins_room/reset
execute as @e[scores={Room=49},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #the_twins_room Vacuumables

execute if score #the_twins_room Wave matches 3 unless entity @a[x=729.5,y=20,z=-40.5,distance=..1,tag=pause_dialog,limit=1] if score #players Totals matches 1 run tellraw @a[scores={Room=7}] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.henry","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.twins.game.1"}]}
execute if score #the_twins_room Wave matches 3 unless entity @a[x=729.5,y=20,z=-40.5,distance=..1,tag=pause_dialog,limit=1] if score #players Totals matches 2.. run tellraw @a[scores={Room=7}] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.henry","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.twins.game.1.more"}]}
execute if score #the_twins_room Wave matches 3..7 unless entity @a[x=729.5,y=20,z=-40.5,distance=..1,tag=pause_dialog,limit=1] run tag @e[scores={Room=49},tag=ghost] add remove_from_existence
execute if score #the_twins_room Wave matches 3..7 unless entity @a[x=729.5,y=20,z=-40.5,distance=..1,tag=pause_dialog,limit=1] run scoreboard players set #the_twins_room Wave 4
setblock 738 20 -25 minecraft:air
setblock 742 20 -31 minecraft:air
setblock 747 20 -28 minecraft:air
setblock 747 20 -22 minecraft:air
setblock 742 20 -19 minecraft:air
tag @e[tag=hide_and_seek_box,scores={Room=49}] add remove_from_existence