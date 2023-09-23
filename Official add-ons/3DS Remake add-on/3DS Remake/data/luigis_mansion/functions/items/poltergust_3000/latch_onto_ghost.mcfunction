cute if entity @s ArmorItems[3].tag{attacked_by:[$(id)]} run tag @s add already_included

execute if entity @s[tag=!already_included] unless data entity @s ArmorItems[3].id run item replace entity @s armor.head with minecraft:stone_button{attacked_by:[]}
execute if entity @s[tag=!already_included] unless data entity @s ArmorItems[3].tag.attacked_by run data modify entity @s ArmorItems[3].tag merge value {attacked_by:[]}
$execute if entity @s[tag=!already_included] run data modify entity @s ArmorItems[3].tag.attacked_by append value $(id)

execute if entity @s[tag=!already_included,tag=!vacuumable] at @a[tag=me,scores={Health=41..,Shrunk=0},tag=vacuuming,tag=!gooigi,limit=1] run playsound luigis_mansion:entity.player.latch_onto_ghost.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!already_included,tag=!vacuumable] at @a[tag=me,scores={Health=41..,Shrunk=1..},tag=vacuuming,tag=!gooigi,limit=1] run playsound luigis_mansion:entity.player.latch_onto_ghost.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[tag=!already_included,tag=!vacuumable] at @a[tag=me,scores={Health=..40,Shrunk=0},tag=vacuuming,tag=!gooigi,limit=1] run playsound luigis_mansion:entity.player.latch_onto_ghost.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!already_included,tag=!vacuumable] at @a[tag=me,scores={Health=..40,Shrunk=1..},tag=vacuuming,tag=!gooigi,limit=1] run playsound luigis_mansion:entity.player.latch_onto_ghost.low_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[tag=!already_included,tag=!vacuumable] run scoreboard players set @a[tag=me,tag=vacuuming,tag=!gooigi,limit=1] Sound 20

tag @s remove already_included