$tag @e[nbt={UUID:$(owner)},limit=1] add owner
scoreboard players set @e[tag=owner,limit=1] ActionTime 0
tag @e[tag=owner,limit=1] add laugh
tag @e[tag=owner,limit=1] remove complain
tag @e[tag=owner,limit=1] remove attack
tag @e[tag=owner,limit=1] remove owner