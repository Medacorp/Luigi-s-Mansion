playsound luigis_mansion:entity.heart.flash hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s StunTime 200
execute if score #global_difficulty Selected matches 3 run scoreboard players set @s StunTime 20