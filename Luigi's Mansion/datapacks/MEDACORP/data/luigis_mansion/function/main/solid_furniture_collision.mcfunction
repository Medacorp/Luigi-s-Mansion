tag @s[scores={ChangedMansion=1,Room=0}] add remove_from_existence
tag @s[tag=remove_from_existence,tag=cannot_be_removed] remove remove_from_existence
data merge entity @s {Peek:0b}
data merge entity @s {Rotation:[0.0d,0.0d],Health:1000.0f,Peek:1b,AbsorptionAmount:1000.0f}

tag @s[tag=remove_from_existence] add dead
teleport @s[tag=dead] ~ ~-100 ~
scoreboard players reset @s[tag=dead]
kill @s[tag=dead]