tag @s add is_pulled
tag @a[tag=me,limit=1] add is_pulling
function luigis_mansion:entities/ghost/hurt_pull
execute if entity @a[tag=me,limit=1,scores={Sneaking=1},tag=!was_sneaking] run function luigis_mansion:entities/ghost/hurt_pull
execute if entity @a[tag=me,limit=1,scores={Sneaking=1},tag=!was_sneaking] run function luigis_mansion:entities/ghost/hurt_pull
execute if entity @a[tag=me,limit=1,scores={Sneaking=1},tag=!was_sneaking] run function luigis_mansion:entities/ghost/hurt_pull
execute if entity @a[tag=me,limit=1,scores={Sneaking=0},tag=was_sneaking] run function luigis_mansion:entities/ghost/hurt_pull
execute if entity @a[tag=me,limit=1,scores={Sneaking=0},tag=was_sneaking] run function luigis_mansion:entities/ghost/hurt_pull
execute if entity @a[tag=me,limit=1,scores={Sneaking=0},tag=was_sneaking] run function luigis_mansion:entities/ghost/hurt_pull
execute if entity @s[scores={Health=..0}] run playsound luigis_mansion:item.poltergust_3000.reel_in player @a[tag=same_room] ~ ~ ~ 1

execute at @a[tag=me,scores={Sound=0,Health=41..,Shrunk=0},limit=1] run playsound luigis_mansion:entity.player.pull.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @a[tag=me,scores={Sound=0,Health=41..,Shrunk=1..},limit=1] run playsound luigis_mansion:entity.player.pull.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @a[tag=me,scores={Sound=0,Health=..40,Shrunk=0},limit=1] run playsound luigis_mansion:entity.player.pull.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @a[tag=me,scores={Sound=0,Health=..40,Shrunk=1..},limit=1] run playsound luigis_mansion:entity.player.pull.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @a[tag=me,scores={Sound=0}] Sound 10