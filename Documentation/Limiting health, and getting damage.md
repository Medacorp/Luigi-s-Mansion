Damage is done by calling the `luigis_mansion:entities/player/take_damage` function as the player to take damage. It'll look at the damage data to determine what to do. This data is stored in the storage `luigis_mansion:data damage` object.

```
damage: {
    amount:X, //Amount of damage taken, before scaling with the multiply_damage_taken global variable.
    during_knockback_amount:X //Same as above, but this damage will be applied in the middle of knockback (eg fake door, or slipping).
    limit_health:X, //Limits the max health of the player.
    method:{ //The method used in the death message.
		namespace:"<namespace>", //The method namespace.
		id:"<id>" //The method id.
	},
    attacker:X, //The attacker used in the death message, either a ghost number or a string to be interpreted when the death message triggers. Forgotten by the player after 10 seconds.
    animation:{ //The animation to use.
		namespace:"<namespace>", //The animation namespace.
		id:"<id>" //The animation id.
	},
    no_delete:1b //When set, doesn't delete this damage object. Used when multiple players can be hit at once. When used, make sure to delete the object afterwards.
}
```

If an amount and limit_health are both set, the amount is damage handled, then the max health.

Examples: 100 HP -> 70 limit+10 damage -> 70/70; 100 HP -> 70 limit+50 damage -> 50/70

Deal damage 1 tick after setting max health to have it "stack" with the health limitation.

Max health will return to 100 after 5 to 10 seconds depending on how much the player moves. This timer resets whenever the player is scared by a ghost.