tag @s add is_pulled
function luigis_mansion:entities/ghost/hurt_pull
execute if entity @a[tag=me,limit=1,scores={Sneaking=1},tag=!was_sneaking] run function luigis_mansion:entities/ghost/hurt_pull
execute if entity @a[tag=me,limit=1,scores={Sneaking=1},tag=!was_sneaking] run function luigis_mansion:entities/ghost/hurt_pull
execute if entity @a[tag=me,limit=1,scores={Sneaking=1},tag=!was_sneaking] run function luigis_mansion:entities/ghost/hurt_pull
execute if entity @a[tag=me,limit=1,scores={Sneaking=0},tag=was_sneaking] run function luigis_mansion:entities/ghost/hurt_pull
execute if entity @a[tag=me,limit=1,scores={Sneaking=0},tag=was_sneaking] run function luigis_mansion:entities/ghost/hurt_pull
execute if entity @a[tag=me,limit=1,scores={Sneaking=0},tag=was_sneaking] run function luigis_mansion:entities/ghost/hurt_pull
execute if entity @s[scores={Health=..0}] run playsound luigis_mansion:item.poltergust_3000.reel_in player @a[tag=same_room] ~ ~ ~ 1