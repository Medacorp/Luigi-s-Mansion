$execute if data entity @s data{attacked_by:[$(id)]} run tag @s add already_included

execute if entity @s[tag=!already_included] unless data entity @s data.attacked_by run data modify entity @s data.attacked_by set value []
$execute if entity @s[tag=!already_included] run data modify entity @s data.attacked_by append value $(id)

execute if entity @s[tag=!already_included,tag=!vacuumable] at @a[tag=me,scores={Health=41..,Shrunk=0},tag=vacuuming,limit=1] run playsound luigis_mansion:entity.player.latch_onto_ghost.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!already_included,tag=!vacuumable] at @a[tag=me,scores={Health=41..,Shrunk=1..},tag=vacuuming,limit=1] run playsound luigis_mansion:entity.player.latch_onto_ghost.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[tag=!already_included,tag=!vacuumable] at @a[tag=me,scores={Health=..40,Shrunk=0},tag=vacuuming,limit=1] run playsound luigis_mansion:entity.player.latch_onto_ghost.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!already_included,tag=!vacuumable] at @a[tag=me,scores={Health=..40,Shrunk=1..},tag=vacuuming,limit=1] run playsound luigis_mansion:entity.player.latch_onto_ghost.low_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[tag=!already_included,tag=!vacuumable] run scoreboard players set @a[tag=me,tag=vacuuming,limit=1] Sound 20

tag @s remove already_included