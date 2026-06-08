scoreboard players add @s Time 1
execute if entity @s[tag=!riding_poltergust,scores={Time=1..2}] if data storage luigis_mansion:data luigi{tags:["poltergust_selected"]} unless data storage luigis_mansion:data luigi{tags:["expelling"]} run scoreboard players add @s AnimationRotationX 10
execute if entity @s[tag=!riding_poltergust,scores={Time=3..4}] if data storage luigis_mansion:data luigi{tags:["poltergust_selected"]} unless data storage luigis_mansion:data luigi{tags:["expelling"]} run scoreboard players remove @s AnimationRotationX 10
scoreboard players set @s[scores={Time=4}] Time 0