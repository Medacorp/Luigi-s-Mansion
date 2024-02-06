scoreboard players set @s TargetTask 3
data modify entity @s data.target_pos set from entity @e[tag=target,limit=1] Pos
execute store result score #temp Time run data get entity @s data.target_pos[1] 100
scoreboard players add #temp Time 300
execute store result score #temp2 Time run data get entity @s Pos[1] 100
scoreboard players operation #temp2 Time -= #temp Time
execute if score #temp2 Time matches -100..100 run data modify entity @s data.target_pos set from entity @s Pos
execute store result entity @s data.target_pos[1] double 0.01 run scoreboard players get #temp Time
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time

#go to 3 blocks above target entity; if not near the height yet, go straight up/down