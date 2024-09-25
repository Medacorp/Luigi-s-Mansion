execute store result score @s Room run data get storage luigis_mansion:data luigi.room
execute if data storage luigis_mansion:data luigi.mirror.x store result score @s MirrorX run data get storage luigis_mansion:data luigi.mirror.x
execute if data storage luigis_mansion:data luigi.mirror.z store result score @s MirrorZ run data get storage luigis_mansion:data luigi.mirror.z
#todelete - old mirror reflections
execute if data storage luigis_mansion:data luigi.mirror{mirror_set_by_furniture_entity:1b} run tag @s add mirror_set_by_furniture_entity
#/todelete
tag @s add found_owner
tag @s add this_gooigi