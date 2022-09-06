data modify storage luigis_mansion:data ghost_list set from entity @s ArmorItems[3].tag.attacked_by
function luigis_beta_mansion:items/poltergust_500/search_my_id
data remove storage luigis_mansion:data ghost_list
scoreboard players reset #temp2 ID

execute if entity @s[tag=!already_included] in minecraft:overworld run setblock 27 0 0 minecraft:chest{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{Value:0}}]}
execute if entity @s[tag=!already_included] in minecraft:overworld store result block 27 0 0 Items[0].tag.Value int 1 run scoreboard players get #temp ID
execute if entity @s[tag=!already_included] unless data entity @s ArmorItems[3].tag run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{attacked_by:[]}}]}
execute if entity @s[tag=!already_included] unless data entity @s ArmorItems[3].tag.attacked_by run data modify entity @s ArmorItems[3].tag merge value {attacked_by:[]}
execute if entity @s[tag=!already_included] in minecraft:overworld run data modify entity @s ArmorItems[3].tag.attacked_by append from block 27 0 0 Items[0].tag.Value
execute if entity @s[tag=!already_included] in minecraft:overworld run setblock 27 0 0 minecraft:air

execute if entity @s[tag=!already_included,tag=!vacuumable] at @a[tag=me,scores={Health=41..,Shrunk=0},tag=vacuuming,tag=!gooigi,limit=1] run playsound luigis_mansion:entity.player.latch_onto_ghost.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!already_included,tag=!vacuumable] at @a[tag=me,scores={Health=41..,Shrunk=1..},tag=vacuuming,tag=!gooigi,limit=1] run playsound luigis_mansion:entity.player.latch_onto_ghost.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[tag=!already_included,tag=!vacuumable] at @a[tag=me,scores={Health=..40,Shrunk=0},tag=vacuuming,tag=!gooigi,limit=1] run playsound luigis_mansion:entity.player.latch_onto_ghost.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!already_included,tag=!vacuumable] at @a[tag=me,scores={Health=..40,Shrunk=1..},tag=vacuuming,tag=!gooigi,limit=1] run playsound luigis_mansion:entity.player.latch_onto_ghost.low_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[tag=!already_included,tag=!vacuumable] run scoreboard players set @a[tag=me,tag=vacuuming,tag=!gooigi,limit=1] Sound 20

tag @s remove already_included