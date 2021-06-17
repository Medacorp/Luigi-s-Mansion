scoreboard players add @s Time 1
execute if entity @s[tag=lift_fail] run function luigis_mansion:entities/biff_atlas/move_weights/fail
execute if entity @s[tag=lift_succeed] run function luigis_mansion:entities/biff_atlas/move_weights/succeed
execute positioned ^ ^-1.16 ^1 run scoreboard players operation @e[tag=weights,distance=..0.7,limit=1] GhostNr = @s GhostNr
tag @s[scores={Time=1}] remove strech_neck
tag @s[scores={Time=1}] add lift_fail
tag @s[scores={Time=101}] remove lift_fail
tag @s[scores={Time=101}] add strech_neck
tag @s[scores={Time=141}] remove strech_neck
tag @s[scores={Time=141}] add lift_fail
tag @s[scores={Time=241}] remove lift_fail
tag @s[scores={Time=241}] add strech_neck
tag @s[scores={Time=281}] remove strech_neck
tag @s[scores={Time=281}] add lift_fail
tag @s[scores={Time=381}] remove lift_fail
tag @s[scores={Time=381}] add strech_neck
tag @s[scores={Time=421}] remove strech_neck
tag @s[scores={Time=421}] add lift_succeed
tag @s[scores={Time=581}] remove lift_succeed
tag @s[scores={Time=581}] add strech_neck
tag @s[scores={Time=621}] remove strech_neck
tag @s[scores={Time=621}] add lift_succeed
tag @s[scores={Time=781}] remove lift_succeed
tag @s[scores={Time=781}] add strech_neck
scoreboard players set @s[scores={Time=820}] Time 0