# Remove if no owner was found
scoreboard players set @s[tag=found_owner] ModelTime 0
scoreboard players set @s[tag=found_shrunk_owner] ModelTime 0
scoreboard players add @s[tag=!found_owner,tag=!no_auto_kill,tag=!found_shrunk_owner] ModelTime 1
tag @s remove found_owner
tag @s remove found_shrunk_owner
tag @s[scores={ModelTime=10}] add dead
scoreboard players reset @s[tag=dead]
kill @s[tag=dead]