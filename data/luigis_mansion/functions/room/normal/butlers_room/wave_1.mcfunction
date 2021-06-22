execute unless entity @e[tag=shivers,limit=1] positioned 745 11 67 facing 742 11 69 rotated ~-180 ~ run function luigis_mansion:spawn_entities/portrait_ghost/shivers
scoreboard players set @e[x=745.5,y=11,z=67.5,tag=shivers,distance=..0.7,limit=1] PathStep 53
scoreboard players set #butlers_room Wave 1