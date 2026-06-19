execute if entity @s[tag=!was_in_vacuum] if block ~ ~-0.01 ~ #luigis_mansion:items_ignore run function luigis_mansion:entities/banana_peel/spin
execute if entity @s[tag=was_in_vacuum] run data modify entity @s transformation.left_rotation set value [0.7071067811865476f,0.0f,0.0f,0.7071067811865476f]
scoreboard players add @s SpawnTime 1
tag @s[tag=!vacuumable] remove in_vacuum
tag @s[scores={SpawnTime=90}] add vacuumable
tag @s[scores={SpawnTime=600},tag=!eternal] add dead
execute if entity @s[tag=in_vacuum] facing entity @e[tag=vacuuming_me,sort=nearest,limit=1] feet positioned ~ ~0.6 ~ run function luigis_mansion:entities/banana_peel/pull
execute if entity @s[tag=thrown] run function luigis_mansion:entities/banana_peel/thrown
tag @s remove hit_floor
execute at @s unless block ~ ~-0.01 ~ #luigis_mansion:items_ignore unless block ~ ~-0.01 ~ #minecraft:slabs[type=bottom] run tag @s add hit_floor
execute at @s if block ~ ~0.4 ~ #minecraft:slabs[type=bottom] run tag @s add hit_floor
execute at @s[tag=!hit_floor,tag=!thrown] run teleport @s ~ ~-0.1 ~
execute at @s[tag=hit_floor] if block ~ ~0.5 ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~0.01 ~
execute at @s[tag=hit_floor] unless block ~ ~ ~ #luigis_mansion:items_ignore unless block ~ ~0.4 ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~0.01 ~
execute at @s[tag=!captured,tag=!dead] if entity @e[tag=luigi,distance=..0.7,limit=1] run function luigis_mansion:entities/banana_peel/slip
execute if data entity @s[tag=captured] data.owner run function luigis_mansion:entities/ghost/owner_complain with entity @s data