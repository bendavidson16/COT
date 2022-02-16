recipes.remove(<kitchensink:LevelPick>);
recipes.addShaped(<kitchensink:LevelPick>.withTag({dur: 250, maxdur: 250, harvestlevel: 0, pickspeed: 3.0 as float, xptonextlevel: 180, texture: 0, pickxp: 0, picklevel: 0}), [[<ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>], [null, <mysticalagriculture:mystical_tool_rod>, null], [null, <mysticalagriculture:mystical_tool_rod>, null]]);
recipes.addShaped(<kitchensink:LevelPick:1>.withTag({dummyXP:1}), [
	[<kitchensink:xpItem>, <kitchensink:xpItem>, <kitchensink:xpItem>], 
	[<kitchensink:xpItem>, <kitchensink:LevelPick:*>.marked("pickaxe"), <kitchensink:xpItem>],
	[<kitchensink:xpItem>, <kitchensink:xpItem>, <kitchensink:xpItem>]], 
	function (bout, inputs, crafting) {
		var output = inputs.pickaxe;
		output = output.updateTag({xpfromblocks: 0});
		if (output.damage == 0) {
			output = output.withDamage(1);
		} else if (output.damage == 2) {
			output = output.withDamage(4);
		} else if (output.damage == 3) {
			output = output.withDamage(5);
		} else if (output.damage == 6) {
			output = output.withDamage(7);
		}
		return output;
});
recipes.addShaped(<kitchensink:LevelPick>.withTag({dummyRepair: 1}), [[<kitchensink:LevelPick:*>.marked("pickaxe"), <minecraft:iron_ingot>]], function (bout, inputs, crafting) {
	var output = inputs.pickaxe;
	output = output.updateTag({dur: output.tag.dur + output.tag.maxdur/6});
	if (output.tag.dur > output.tag.maxdur) {
		output = output.updateTag({dur: output.tag.maxdur});
	}
	return output;
});
recipes.addShaped(<kitchensink:LevelPick>.withTag({dummySpeed: 1}), [[<kitchensink:LevelPick:*>.marked("pickaxe"), <ore:blockRedstone>]], function (bout, inputs, crafting) {
	var output = inputs.pickaxe;
	output = output.updateTag({pickspeed: output.tag.pickspeed + 0.5});
	return output;
});
recipes.addShaped(<kitchensink:LevelPick:3>.withTag({dummyAutoRepair: 1}), [[<kitchensink:LevelPick:*>.marked("pickaxe"), <kitchensink:diamondPlate>]], function (bout, inputs, crafting) {
	var output = inputs.pickaxe;
	output = output.updateTag({autorepair: 1});
	return output;
});
recipes.addShaped(<kitchensink:LevelPick>.withTag({dummyUnbreakable: 1, display: {Lore:["This will make your pickaxe unbreakable."]}}), [
	[<kitchensink:obsidianPlate>, <kitchensink:diamondPlate>, <kitchensink:obsidianPlate>],
	[<kitchensink:diamondPlate>, <kitchensink:LevelPick:*>.marked("pickaxe"), <kitchensink:diamondPlate>],
	[<kitchensink:obsidianPlate>, <kitchensink:diamondPlate>, <kitchensink:obsidianPlate>]], function (bout, inputs, crafting) {
	var output = inputs.pickaxe;
	output = output.updateTag({unbreakable: 1, dur: 1000, maxdur: 1000});
	if (output.damage == 0) {
		output = output.withDamage(3);
	} else if (output.damage == 1) {
		output = output.withDamage(5);
	} else if (output.damage == 2) {
		output = output.withDamage(6);
	} else if (output.damage == 4) {
		output = output.withDamage(7);
	}
	return output;
});