scoreboard players add @s Time 1
data modify entity @s[tag=!riding_poltergust,scores={Time=1}] Pose.Head[0] set value 0.001f
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[tag=!riding_poltergust,scores={Time=1..2}] if data storage luigis_mansion:data luigi{tags:["poltergust_selected"]} unless data storage luigis_mansion:data luigi{tags:["expelling"]} store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[tag=!riding_poltergust,scores={Time=3..4}] if data storage luigis_mansion:data luigi{tags:["poltergust_selected"]} unless data storage luigis_mansion:data luigi{tags:["expelling"]} store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
scoreboard players set @s[scores={Time=4}] Time 0