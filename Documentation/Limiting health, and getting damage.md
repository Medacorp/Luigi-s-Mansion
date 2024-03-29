Damage is done by calling the `luigis_mansion:entities/player/take_damage` function as the player to take damage from the position where the damage originates from. It'll look at the damage data to determine what to do. This data is stored in the storage `luigis_mansion:data damage` object.

```
damage: {
    amount:X, //Amount of damage taken, before scaling with the multiply_damage_taken global variable.
    during_knockback_amount:X //Same as above, but this damage will be applied in the middle of knockback (eg fake door, or slipping).
    limit_health:X, //Limits the max health of the player.
    method:{ //The method used in the death message.
		namespace:"<namespace>", //The method namespace.
		id:"<id>" //The method id.
	},
    attacker:..., //The attacker used in the death message, either a UUID or a string to be interpreted when the death message triggers. Forgotten by the player after 10 seconds.
    animation:{ //The animation to use.
		namespace:"<namespace>", //The animation namespace.
		id:"<id>" //The animation id.
	},
    no_delete:1b //When set, doesn't delete this damage object. Used when multiple players can be hit at once. When used, make sure to delete the object afterwards.
}
```

If an amount and limit_health are both set, the amount is applied and then afterwards the max health limited.

Examples: 
100/100 HP + {limit_health:70,amount:10} = 70/70 HP
100/100 HP + {limit_health:70,amount:50} = 50/70 HP

Run `luigis_mansion:entities/player/take_damage` again after limiting max health to have it "stack" with the health limitation.
100/100 HP + {limit_health:70} + {amount:10} = 60/70 HP
100/100 HP + {limit_health:70} + {amount:50} = 20/70 HP

Max health will return to 100 after 5 to 10 seconds depending on how much the player moves. This timer resets whenever the player enters any scare animation.
If the player is in the animation `luigis_mansion:scare/bash(_no_move)`, the player will stay on the ground until max health recovers.
If the player is in the animation `luigis_mansion:scare/bash(_no_move)`, and the player triggers any scare animation, it's treated as triggering the `luigis_mansion:scare/bash(_no_move)` animation.