scoreboard players add @s Time 1
tag @s[scores={Time=1}] remove lift_succeed
tag @s[scores={Time=1}] add lift_fail
tag @s[scores={Time=480}] remove lift_fail
tag @s[scores={Time=480}] add lift_succeed
scoreboard players set @s[scores={Time=880}] Time 0