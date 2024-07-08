scoreboard players add @s[tag=in_vacuum] VacuumTime 1
scoreboard players set @s[tag=!in_vacuum] VacuumTime 0
$execute if entity @s[tag=in_vacuum,scores={PoltergustSound=0}] run playsound $(namespace):entity.$(id).mask_shake hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=in_vacuum,scores={PoltergustSound=0}] PoltergustSound 3
execute if entity @s[scores={VacuumTime=40}] run function luigis_mansion:entities/dancing_ghost_guy/lose_mask with entity @s data.entity