texts = require('texts')
local res = require('resources')
local runes = {
    ['Ignis'] = true,
    ['Gelus'] = true,
    ['Flabra'] = true,
    ['Tellus'] = true,
    ['Sulpor'] = true,
    ['Unda'] = true,
    ['Lux'] = true,
    ['Tenebrae'] = true,
}
local rune_buff_ids = {
    [523] = 'Ignis',
    [524] = 'Gelus',
    [525] = 'Flabra',
    [526] = 'Tellus',
    [527] = 'Sulpor',
    [528] = 'Unda',
    [529] = 'Lux',
    [530] = 'Tenebrae',
}
function get_active_runes()

    local player = windower.ffxi.get_player()
    if not player then
        return 'None'
    end

    local runes = {}

    for _, buff_id in ipairs(player.buffs) do
		local rune = rune_buff_ids[buff_id]
        if rune then
            table.insert(runes, color_runes(rune))
        end
    end

    if #runes == 0 then
        return 'None'
    end

    return table.concat(runes, '  ')

end
function get_sets()
	send_command('bind f9 gs c toggle TP set') 
	send_command('bind !f9 gs c toggle Tank_Mode') 
	send_command('bind ^f9 gs c toggle STP Set') 
	send_command('bind f10 gs c toggle run set') 
	send_command('bind !f10 gs c toggle Supertank') 
	send_command('bind f12 gs c toggle TH set') 
	send_command('bind f7 gs c toggle Weapons set') 
	send_command('bind !f7 gs c toggle Sub_Weapons set') 
	send_command('bind ^numpad1 gs c toggle Buff set')
	send_command('bind !numpad3 gs c toggle Remedy')
	send_command('bind !numpad1 gs c toggle Holy Water')
	send_command('bind !numpad0 gs c toggle Emergency MEVA')
	send_command('bind ^numpad0 gs c toggle Meva/Stun resist')
	
	send_command('bind !pause input //send Nolyte /Savage Blade')
	send_command('bind !pageup input //send Kiokura /Savage Blade')	
	send_command('bind !end input //send Kiokura /LeadenSalute')	
	send_command('bind !pagedown input //send @others /Savage Blade')
	
	Run_Index = 1 --, Index for gearsets, needed for when there is more than 1 in a set and you wish you toggle beween them
	TH_Index = 1
	Weapons_Index = 1
	Sub_Weapons_Index = 1	
	Buff_Index = 1	

	sets["WarpRing"] = {
	left_ring= "Warp Ring"
	}
	sets["DemRing"] = {
	left_ring= "Dim. Ring (Dem)"
	}

	Weapons_Set_Names = {'Epeolatry',"Lycurgos"} --, "Aettir", 'Montante','Zantetsuken X', "Peord Claymore - Double Damage","Peord Claymore - Subtle Blow II +20" Define set names, allows the lua to know what you are referring to.
	sets.weapons = {}

	sets.weapons["Peord Claymore - Subtle Blow II +20"] = {
    main={ name="Peord Claymore", augments={'Path: B',}},
	sub="Utu Grip",
}
	sets.weapons.Epeolatry = {
    main="Epeolatry",
	sub="Utu Grip",
}
	sets.weapons.Aettir = {
    main="Aettir",
	sub="Utu Grip",
}
	sets.weapons.Lycurgos = {
    main="Lycurgos",
	sub="Utu Grip",
}
	
	Sub_Weapons_Set_Names = {'Loxotic',} --, 'Lycurgos'
	sets.sub_weapons = {}
	sets.sub_weapons.Lycurgos = {
    main="Lycurgos",
	sub="Utu Grip",
	}	
	sets.sub_weapons.Loxotic = {
    main={ name="Loxotic Mace +1", augments={'Path: A',}},
	}
	sets.ranged = {}
	sets.ranged.precast = {
    ammo="Dart",
	}
	
	sets.DD_Mode = {}
	sets.DD_Mode.index = {"Normal: 30PDT - 12MDT", "Parry: 44PDT - 46MDT",}--,"Glass Cannon"
	DD_Mode_ind = 1

	sets.DD_Mode["Normal: 30PDT - 12MDT"] = { -- 3QA, 16TA, 27DA, Temper+28 = 55DA, Embolden +14 = 69DA, -30PDT, -12MDT, 2850HP
    ammo="Yamarang",
    head="Null Masque",
    body="Ashera Harness",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Telos Earring",
    right_ear="Sherida Earring",
    left_ring="Moonlight Ring",
    right_ring="Niqmaddu Ring",
    back="Null Shawl",
	}
	sets.DD_Mode["Glass Cannon"] = { 
    ammo="Coiste Bodhar",
    head="Adhemar Bonnet +1",priority=16,
	body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},priority=17,
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},priority=19,
	legs="Samnuha Tights",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Anu Torque",
    waist="Sailfi Belt +1",
    left_ear="Telos Earring",
    right_ear="Sherida Earring",
    left_ring="Epona's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},priority=14,
	}
	sets.DD_Mode["Parry: 44PDT - 46MDT"] = { -- 3QA, 24DA, Temper+28 = 52DA, Embolden +14 = 64DA, -44PDT, -46MDT, +11 Inquartata, Parry+5%, 3270HP
    ammo="Staunch Tathlum +1",
    head="Null Masque",priority=13,
    body="Ashera Harness",priority=17,
    hands="Turms Mittens +1",priority=14,
    legs="Eri. Leg Guards +2",priority=16,
    feet="Turms Leggings +1",priority=15,
    --neck="Futhark Torque +2",priority=11,
    neck="Hoxne Torque",
    waist="Ioskeha Belt +1",
    left_ear="Alabaster Earring",priority=19,
    right_ear="Sherida Earring",
    left_ring="Murky Ring",priority=18,
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Parrying rate+5%',}},priority=12,
	}
	sets.DD_Mode.Inquartata = {
	ammo="Staunch Tathlum +1",
    hands="Turms Mittens +1",priority=16,
	body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},priority=14,
    legs="Eri. Leg Guards +2",priority=18,
    feet="Turms Leggings +1",priority=17,
    left_ear="Alabaster Earring",priority=19,
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Parrying rate+5%',}},priority=15,
	}
	
	sets.Aftermath = { 
    ammo="Yamarang",
    head="Null Masque",priority=16,
    body="Ashera Harness",priority=17,
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},priority=15,
    legs="Meg. Chausses +2",priority=18,
	feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck={ name="Futhark Torque +2", augments={'Path: A',}},
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear="Sherida Earring",
    left_ring="Moonlight Ring",priority=19,
    right_ring="Lehko's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},priority=14,
	}
	sets.Tank_Mode = {}
	sets.Tank_Mode.index = {"Parry: 55PDT - 41MDT","Hybrid: 56PDT - 44MDT","Magic Absorb/Annul"} --, 
	Tank_Mode_ind = 1
	
	sets.Tank_Mode["Hybrid: 56PDT - 44MDT"] = { --, +44 DA, +8 TA, +3 QA, 3270 HP
    ammo="Yamarang",
    head="Adhemar Bonnet +1",priority=13,
    body="Ashera Harness",priority=18,
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},priority=14,
    legs="Erilaz Leg Guards +2",priority=17,
    feet="Erilaz Greaves +2",priority=16,
    --neck="Futhark Torque +2",priority=15,
	neck="Loricate Torque +1",
    -- waist="Engraved Belt",
	waist="Platinum Moogle Belt",priority=20,
    left_ear="Telos Earring",
    right_ear="Sherida Earring",
    left_ring="Moonlight Ring",priority=19,
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},priority=12,
	}
	sets.Tank_Mode["Magic Absorb/Annul"] = { --, +50-60 Elemental Resist, +5% Damage Absorb Chance, +5% Magic Absorb Chance, +13% Magic Damage Annulment Chance, 3485 HP, 
    ammo="Vanir Battery",
    head="Null Masque",priority=17,
    body="Adamantite Armor",priority=19,
    hands="Nyame Gauntlets",priority=13,
    legs="Eri. Leg Guards +2",priority=15,
    feet="Erilaz Greaves +2",priority=12,
    neck="Warder's Charm +1",
	waist="Null Belt",
    --waist="Plat. Mog. Belt", priority=20,
    left_ear={ name="Arete del Luna +1", augments={'Path: A',}},
    right_ear="Sanare Earring",
    left_ring="Moonlight Ring",priority=16,
    right_ring="Shadow Ring",
    back="Null Cape",
	}
	sets.Tank_Mode["Parry: 55PDT - 41MDT"] = { --, +11 Inquartata, Parry +5%, +25 DA, 3650 HP
    ammo="Eluder's Sachet",
    head="Null Masque",priority=16,
    body="Adamantite Armor",priority=19,
    hands="Turms Mittens +1",priority=13,
    legs="Eri. Leg Guards +2",priority=14,
    feet="Turms Leggings +1",priority=12,
    --neck="Futhark Torque +2",priority=11,
    neck="Hoxne Torque",
	waist="Engraved Belt",
    left_ear="Alabaster Earring",priority=18,
    right_ear="Erilaz Earring +1",
    left_ring="Moonlight Ring",priority=17,
    right_ring="Fortified Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Parrying rate+5%',}},priority=19,
	}
	sets.Tank_Mode.Inquartata = {
    hands="Turms Mittens +1",priority=17,
    legs="Eri. Leg Guards +2",priority=19,
    feet="Turms Leggings +1",priority=18,
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Parrying rate+5%',}},priority=16,
	}	

	MEVA_Set_Name = {'MEVA'}
	sets.MEVA = { 				--, +50-60 Elemental Resist, +5% Negate Magic Damage chance, +728 MEVA, -54% PDT, -60% MDT
    ammo="Shadow Sachet",
    head="Null Masque",priority=13,			--, +123, -7% DT
    body="Adamantite Armor",priority=16,	--, +139, -9% DT
    hands="Nyame Gauntlets",priority=12,	--, +112, -7% DT
    legs="Nyame Flanchard",priority=15,	--, +147, -12% DT
    feet="Erilaz Greaves +2",priority=14, 	--, +147, +30 Element Resist, -10% DT
    neck="Futhark Torque +2",priority=11,	--, +30, -6% DT
    waist="Null belt",
    left_ear="Sanare Earring",
    right_ear={ name="Erilaz Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Damage taken-3%',}},
    --left_ring="Archon Ring", 	--, +5% Negate Magic Damage chance
    left_ring="Shadow Ring",
    right_ring="Purity Ring", 	--, +10, -4% MDT
    back="Null Cape",
	}	
	sets["MEVA Stun Resist"] = { 				--, +30-80 Elemental Resist, +18% Status Resist, +60%(?) Stun Resist
    ammo="Staunch Tathlum +1", 				--, +11% Status Resist, -3% DT
    head="Null Masque",priority=13,			--, +123, -7% DT
    body="Nyame Mail",priority=16,	 		--, +139, -9% DT
    hands="Erilaz Gauntlets +2",priority=12,--, +49, -10% DT
    legs="Eri. Leg Guards +2",priority=15,	--, +147, -12% DT
    feet="Erilaz Greaves +2",priority=14, 	--, +147, +30 Element Resist, -10% DT
    neck="Futhark Torque +2",priority=11,	--, +30, -7% DT
    waist="Platinum Moogle Belt",
    left_ear={ name="Arete del Luna +1", augments={'Path: A',}}, --, 20% Stun Resist
    right_ear="Arete Del Luna",	--, 15% Stun Resist
    --left_ring="Archon Ring", 	--, +5% Negate Magic Damage chance
    left_ring="Terrasoul Ring", --, 15% Stun Resist
    right_ring="Icecrack Ring", --, ??(10)% Stun Resist
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Parrying rate+5%',}},priority=10, --, +20 MEVA
	}		
	Run_Set_Names = {'DT','Refresh','Regen'}
	sets.run = {}
	sets.run.DT =  { 			--, -53% PDT, -35% MDT
    ammo="Staunch Tathlum +1",
    head="Null Masque", priority=21,
    body="Adamantite Armor",priority=20,
    hands="Regal Gauntlets", priority=17,
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Erilaz Greaves +2", priority=16,
    neck="Loricate Torque +1",
    waist="Null Belt",
    left_ear="Tuisto Earring", priority=17,
    right_ear="Sanare Earring",
    left_ring="Shadow Ring", priority=18,
    right_ring="Purity Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}}, priority=20,
	}
	sets.run.Regen =  { 		-- Refresh 4/Tic, Regen 18/Tic
    ammo="Homiliary",
    head="Turms Cap +1",priority=18, 
    body="Adamantite Armor",priority=15, 
    hands="Regal Gauntlets", priority=16, 
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},priority=14, 
    feet="Turms Leggings +1",priority=17, 
    neck={ name="Bathy Choker +1", augments={'Path: A',}},priority=12, 
    waist="Flume Belt",
    left_ear="Alabaster Earring",priority=18, 
    right_ear="Infused Earring",priority=13, 
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}},
	}
	sets.run.Refresh =  { 		-- Refresh 7/Tic
    ammo="Homiliary",
    head="Null Masque",
    body="Runeist Coat +2",priority=15, 
    hands="Regal Gauntlets",priority=16, 
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},priority=13, 
    feet="Nyame Sollerets",priority=18, 
    neck="Sibyl Scarf",
    waist="Flume Belt",
    left_ear="Alabaster Earring",priority=18, 
    right_ear="Sanare Earring",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}},
	}
	
	TH_Set_Names = {'TH'}
	sets.TH = {}
	sets.TH.TH = {
    head="White Rarab Cap +1",
	ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
    feet={ name="Herculean Boots", augments={'"Dual Wield"+1','Attack+5','"Treasure Hunter"+1',}},
	}

	sets.CureHP = {						--, +715HP
	left_Ear="Magnetic Earring",
    right_ear="Alabaster Earring",	priority=20, 	--, +110HP
	left_ring="Moonlight Ring",		priority=19,	--, +110HP
	right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},priority=18,	--, +135HP
	}
	sets.RegenHP = {					--, +645HP
    left_ear="Tuisto Earring",priority=19, 		--, +150HP
	left_ring="Moonlight Ring",priority=17,		--, +110HP
	right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},priority=18,	--, +135HP
	back="Moonbeam Cape",priority=20,			--, +250HP
	}		
	sets.TankHP = {						--, +395HP
	waist="Platinum Moogle Belt",priority=20, 	--, +270-400HP'ish
    left_ear="Alabaster Earring",priority=17, 	--, +110HP
    right_ear="Tuisto Earring",priority=18, 	--, +150HP
	}
	sets.TankEnmity = {					--, +395HP
	waist="Platinum Moogle Belt",priority=20,	--, +270-400HP'ish
    left_ear="Alabaster Earring",priority=18, 	--, +110HP
    right_ear="Tuisto Earring",priority=19,	--, +150HP
	}
	sets.TankFoil = {					--, +260HP
    left_ear="Alabaster Earring",priority=19, 	--, +110HP
    right_ear="Tuisto Earring",priority=20, 	--, +150HP
	}
	sets.TankWS = {						--, +260HP
    right_ear="Tuisto Earring",priority=18, 	--, +150HP
	left_ring="Moonlight Ring",priority=17,		--, +110HP
	}
	
	sets.ws = {}
	sets.ws['Resolution']	= { 	--FTP Replicating WS, Prefer Multi Attack to WSD
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},priority=17, 
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},priority=19, 
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},priority=16, 
    legs="Meg. Chausses +2",priority=18, 
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},priority=15, 
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Ifrit Ring +1",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}

	sets.ws['Dimidiation']	= {
    ammo="Knobkierrie",
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Ilabrat Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}

	sets.ws.epami = {
	right_ring="Epaminondas's Ring",	
	}
	
	sets.ws['Spinning Slash']	= {
    ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    body="Futhark Coat +3",priority=19, 
    hands="Meg. Gloves +2",priority=17, 
    legs="Meg. Chausses +2",priority=18, 
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}	
	
	sets.ws['Freezebite']	= {
	ammo="Knobkierrie",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body="Nyame Mail",priority=19, 
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Null Loop",
    waist="Orpheus's Sash",
	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Friomisi Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Herculean Slash']	= {
	ammo="Knobkierrie",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body="Nyame Mail",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Null Loop",
    waist="Orpheus's Sash",
	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Friomisi Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Shockwave']	= { 		--, Use MACC to ensure additional effect proc, Sleepga
    ammo="Yamarang",
    head="Null Masque",priority=16,  
    body="Adamantite Armor",priority=18, 
    hands="Erilaz Gauntlets +2",priority=15, 
    legs="Erilaz Leg Guards +2",priority=17, 
    feet="Erilaz Greaves +2",priority=14, 
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Crepuscular Earring",
    right_ear="Erilaz Earring +1",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back="Null Shawl",
	}
	sets.ws['Ground Strike']	= {
    ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    body="Futhark Coat +3",priority=19, 
    hands="Meg. Gloves +2",priority=17, 
    legs="Meg. Chausses +2",priority=18, 
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}	
	

	sets.ws['Savage Blade']	= {
    ammo="Knobkierrie",
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Futhark Coat +3",priority=19, 
    hands="Meg. Gloves +2",priority=18, 
    legs="Lustr. Subligar +1",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Chant du Cygne']	= {
    ammo="Knobkierrie",
    head="Adhemar Bonnet +1",priority=15, 
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},priority=18, 
    hands="Meg. Gloves +2",priority=16, 
    legs="Meg. Chausses +2",priority=17, 
    feet="Nyame Sollerets",priority=19, 
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Epona's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	
	sets.ws['Sanguine Blade']	= { 	--, Mix MACC and MAB for high Drain rate
	ammo="Knobkierrie",
    head="Pixie Hairpin +1",
    body="Nyame Mail",priority=19, 
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Crep. Earring",
    right_ear="Friomisi Earring",
    left_ring="Archon Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Upheaval']	= {
    ammo="Knobkierrie",
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Futhark Coat +3",
    hands="Meg. Gloves +2",
    legs="Eri. Leg Guards +2",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Steel Cyclone']	= {
    ammo="Knobkierrie",
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Futhark Coat +3",
    hands="Meg. Gloves +2",
    legs="Eri. Leg Guards +2",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}

	sets.ws['Fell Cleave']	= {
    ammo="Knobkierrie",
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Futhark Coat +3",
    hands="Meg. Gloves +2",
    legs="Eri. Leg Guards +2",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Armor Break']	= { --, Use MACC to ensure additional effect proc, Defense Down
    ammo="Knobkierrie",
    head="Null Masque",priority=16,  
    body="Adamantite Armor",priority=18, 
    hands="Erilaz Gauntlets +2",priority=14, 
    legs="Erilaz Leg Guards +2",priority=17, 
    feet="Erilaz Greaves +2",priority=15, 
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Crepuscular Earring",
    right_ear="Erilaz Earring +1",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back="Null Shawl",
	}
	sets.ws['Decimation']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Fotia Gorget",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Epona's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}	
	sets.ws['Smash Axe']	= {
    ammo="Knobkierrie",
    head="Null Masque",
    body="Adamantite Armor",
    hands="Erilaz Gauntlets +2",
    legs="Erilaz Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Crepuscular Earring",
    right_ear="Erilaz Earring +1",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back="Null Shawl",
	}
	sets.ws['Rampage']	= {
    main="Kaja Axe",
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body="Meg. Cuirie +2",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Eri. Leg Guards +2",
    feet="Aya. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Odr Earring",
    left_ring="Sroda Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}	
	sets.ws['Judgment']	= {
    ammo="Knobkierrie",
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Futhark Coat +3",priority=19, 
    hands="Meg. Gloves +2",priority=18, 
    legs="Lustr. Subligar +1",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Flash Nova']	= {
    ammo="Knobkierrie",
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Nyame Mail",priority=19, 
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Ishvara Earring",
    right_ear="Friomisi Earring",
    left_ring="Weatherspoon Ring +1",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}

	sets.ja = {} 					-- Leave this empty
	sets.ja.Enmity = { 				--, +79% Enmity (Enmity gear is a percentage increase or decrease, not an addition
    head="Halitus Helm", 			--, 8
    body="Emet Harness",priority=19, 			--, 9
	hands="Erilaz Gauntlets +2",priority=17,
    legs="Erilaz Leg Guards +2",priority=18, 	--, 12
    feet="Erilaz Greaves +2",priority=16,		--, 8
    neck="Moonlight Necklace", 		--, 15 Enmity
    waist="Warwolf Belt",
    left_ear="Cryptic Earring",		--, 4
    right_ear="Trux Earring",		--, 5
    left_ring="Supershear Ring",priority=13, 	--, 5
    right_ring="Eihwaz Ring",priority=15, 		--, 5
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}},priority=14, --, 10
	}
		
	sets.ja['Vallation'] = set_combine(sets.ja.Enmity, { --, When we define a set as as "sets.ja['xx'], then we can in our precast set, refer to all named in this way, while still specifying a single set.
	body="Runeist Coat +2",
	})
	sets.ja['Embolden'] = set_combine(sets.ja.Enmity, { --, Adoulin cape lowers Embolden Duration penalty, from 50% -> 35%
    head="Erilaz Galea +2",priority=17,
	legs="Futhark Trousers +3",priority=19,
    back={ name="Evasionist's Cape", augments={'Enmity+4','"Embolden"+15','"Dbl.Atk."+1',}},
	right_ring="Murky Ring",
	left_ear="Alabaster Earring",priority=18,
	})
	sets.ja['Valiance'] = set_combine(sets.ja.Enmity, {
	body="Runeist Coat +2",
	})
	sets.ja['Vivacious Pulse'] = set_combine(sets.ja.Enmity,{ --, Higher Divine Magic skill provides more HP, More of the same Runes provides more HP
    ammo="Staunch Tathlum +1",
    head="Erilaz Galea +2",
    body="Adamantite Armor",priority=18,
    hands="Erilaz Gauntlets +2",
    legs="Rune. Trousers +1",
    feet="Erilaz Greaves +2",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},priority=19,
    waist="Plat. Mog. Belt",priority=20,
    left_ear="Saxnot Earring",
    right_ear="Tuisto Earring",priority=17,
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}},
	})
	sets.ja['Pflug'] = set_combine(sets.ja.Enmity, {
	})
	sets.ja['Liement'] = set_combine(sets.ja.Enmity, {
	body="Futhark Coat +3",
	})
	sets.ja['Gambit'] = set_combine(sets.ja.Enmity, {
	hands="Runeist Mitons +2",
	})
	sets.ja['Battuta'] = set_combine(sets.ja.Enmity, {
    head={ name="Fu. Bandeau +1", augments={'Enhances "Battuta" effect',}},
	})
	sets.ja['Rayke'] = set_combine(sets.ja.Enmity, {
	feet="Futhark Boots",
	})
	sets.ja['Elemental Sforzo'] = set_combine(sets.ja.Enmity, {
	body="Futhark Coat +3",
	})
	sets.ja['Weapon Bash'] = set_combine(sets.ja.Enmity, {
	})
	sets.ja['Swordplay'] = set_combine(sets.ja.Enmity, {
	hands="Futhark Mitons +2",
	})
	sets.ja['Souleater'] = set_combine(sets.ja.Enmity, {
	})
	sets.ja['Last Resort'] = set_combine(sets.ja.Enmity, {
	})
	sets.ja['Holy Circle'] = set_combine(sets.ja.Enmity, {
	})
	sets.ja['Sentinel'] = set_combine(sets.ja.Enmity, {
	})
	sets.ja['Cover'] = set_combine(sets.ja.Enmity, {
	})
	sets.ja['One for All'] = { --, Higher HP provides higher Magic Stoneskin
    head="Null Masque",priority=10,
    body="Adamantite Armor",priority=16,
    hands="Nyame Gauntlets",priority=9,
    legs="Eri. Leg Guards +2",priority=13,
    feet="Erilaz Greaves +2",priority=12,
    neck="Unmoving Collar +1",priority=11,
    waist="Platinum Moogle Belt",priority=20,
    left_ear="Alabaster Earring",priority=17,
    right_ear="Tuisto Earring",priority=18,
    left_ring="Moonlight Ring",priority=15,
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},priority=14,
    back="Moonbeam Cape",priority=19,	
	}
	sets.ja['Ignis'] = {
    ammo="Staunch Tathlum +1",
    head="Null Masque",priority=15,
    body="Adamantite Armor",priority=18,
    hands="Nyame Gauntlets",priority=14,
    legs="Eri. Leg Guards +2",priority=17,
    feet="Erilaz Greaves +2",priority=16,
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Tuisto Earring",priority=19,
    right_ear="Sanare Earring",priority=12,
    left_ring="Archon Ring",
    right_ring="Murky Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}},priority=13,	
	}
	sets.ja['Gelus'] = set_combine(sets.ja['Ignis'], {
	})
	sets.ja['Tellus'] = set_combine(sets.ja['Ignis'], {
	})
	sets.ja['Sulpor'] = set_combine(sets.ja['Ignis'], {
	})
	sets.ja['Unda'] = set_combine(sets.ja['Ignis'], {
	})
	sets.ja['Flabra'] = set_combine(sets.ja['Ignis'], {
	})
	sets.ja['Lux'] = set_combine(sets.ja['Ignis'], {
	})
	sets.ja['Tenebrae'] = set_combine(sets.ja['Ignis'], {
	})
	sets.ja['Lunge'] = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Agwu's Cap",priority=17,
    body="Agwu's Robe",priority=19,
    hands="Nyame Gauntlets",priority=15,
    legs="Agwu's Slops",priority=18,
    feet="Agwu's Pigaches",priority=16,
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear="Erilaz Earring +1",
    left_ring="Locus Ring",
    right_ring="Mujin Band",
    back="Argocham. Mantle",
	}
	sets.ja.Dark = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Pixie Hairpin +1",
    body="Nyame Mail",priority=17,
    hands="Nyame Gauntlets",priority=19,
    legs="Nyame Flanchard",priority=18,
    feet="Nyame Sollerets",priority=16,
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear="Hecate's Earring",
    left_ring="Mujin Band",
    right_ring="Archon Ring",
    back="Argocham. Mantle",
	}
	sets.ja.Light = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Null Masque",priority=17, 
    body="Nyame Mail",priority=19, 
    hands="Nyame Gauntlets",priority=15, 
    legs="Nyame Flanchard",priority=18, 
    feet="Nyame Sollerets",priority=16, 
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear="Hecate's Earring",
    left_ring="Mujin Band",
    right_ring="Weatherspoon Ring +1",
    back="Argocham. Mantle",
	}	
	sets.idle = {}
	
	sets.precast = {}
	sets.precast.fastcast = { 			--, DD Mode:   QM+3%,  FC 71% (Cap 80%) Inspiration 1 = 12%, Merit+10 = +20% SIRD, 3050 HP
										--, Tank Mode:		   FC 63% (Cap 80%) Inspiration 1 = 12%, Merit+10 = +20% SIRD, 3600 HP
    ammo="Sapience Orb",				--, 2
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},priority=15, --, 14
    body="Erilaz Surcoat +2",priority=18, --, 10
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --, 8
    legs="Aya. Cosciales +2",priority=17, --, 6
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},priority=14, --, 8
    neck="Voltsurge Torque", 			--, 4
    waist="Audumbla Sash",
    left_ear="Loquacious Earring", 		--, 2
    right_ear="Enchanter's Earring +1", --, 2
    left_ring={name="Moonlight Ring", Priority=19},
    right_ring="Weatherspoon Ring +1", 	--, 5, QM+3%
        back={ name="Ogma's Cape", augments={'HP+60','"Fast Cast"+10','Spell interruption rate down-10%',}},priority=16, --,10
	} 
	sets.precast.enhancing = {			--, DD Mode:   QM+3%,  FC 77% (Cap 80%) Inspiration 1 = 12%, Merit+10 = +30% SIRD, 3050 HP
										--, Tank Mode:		   FC 65% (Cap 80%) Inspiration 1 = 12%, Merit+10 = +20% SIRD, 3600 HP
    ammo="Impatiens",					--, QM+2%
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},priority=13, --, 14
    body="Erilaz Surcoat +2",priority=16, --, 10
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --, 8
    legs="Futhark Trousers +3",priority=17, --, 15 (Only works for Enhancing Magic)
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}}, --, 8
    neck="Futhark Torque +2",priority=15,
    waist="Siegel Sash", 				--, 8 (Only works for Enhancing Magic)
    left_ear="Loquacious Earring", 		--, 2
    right_ear="Enchanter's Earring +1", --, 2
    left_ring={name="Moonlight Ring", priority=19},
    right_ring={ name="Gelatinous Ring +1", priority=18},
    back={ name="Ogma's Cape", augments={'HP+60','"Fast Cast"+10','Spell interruption rate down-10%',}},priority=14, --10
	}

    sets.midcast = {} 
	sets.midcast.sird = set_combine(sets.ja.Enmity, {  --, +106% SIRD, -41% PDT, -43% MDT, 3450 HP,
    ammo="Staunch Tathlum +1", 			--, 11
    body="Adamantite Armor",priority=15, 
	head="Erilaz Galea +2",priority=14, --, 15
    hands="Regal Gauntlets",priority=16,  			--, 15
    legs="Carmine Cuisses +1",priority=11, 	--, 20
	feet="Erilaz Greaves +2",priority=13,
    neck="Moonlight Necklace", 			--, 15
    waist="Audumbla Sash",  			--, 10
    left_ear={name="Alabaster Earring", priority=17},
    right_ear={name="Tuisto Earring", priority=19},
    left_ring={name="Moonlight Ring", priority=18},
    right_ring="Murky Ring",
    back={ name="Ogma's Cape", augments={'HP+60','"Fast Cast"+10','Spell interruption rate down-10%',}},priority=12, --, 10
	})
	sets.midcast.BLUEnmitySIRD = { 		--, +60% Enmity, Merit+10 = +104% SIRD, -46% PDT, -34% MDT, 3435 HP
	ammo="Staunch Tathlum +1", 			--, 11 SIRD
	head="Erilaz Galea +2",priority=17, --, 15 SIRD
    body="Adamantite Armor",priority=18,
    hands="Regal Gauntlets",priority=16,	--, 15 SIRD
     legs="Carmine Cuisses +1",priority=13, --, 20 SIRD
    feet="Erilaz Greaves +2",priority=16,	--, 8 Enmity, -10% DT
    neck="Moonlight Necklace", 			--, 15 Enmity, 15 SIRD
    waist="Audumbla Sash",  			--, 10 SIRD, -4 PDT
    left_ear={name="Alabaster Earring", priority=15},	--, -3% DT -2% MDT
    right_ear="Magnetic Earring", 		--, 8 SIRD
    left_ring="Supershear Ring",priority=12, 	--, 5 Enmity
    right_ring="Murky Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}},priority=14, --, 10 Enmity, 10PDT
	}
	sets.midcast.enmity = { 			--, DD Mode; 	+72% Enmity, Merit+10 = +76% SIRD, -47% PDT, -35% MDT, 3100 HP
	ammo="Staunch Tathlum +1", 			--, 11 SIRD
	head="Erilaz Galea +2",priority=16, --, 15 SIRD
    body="Emet Harness",priority=18, 	--, 9 Enmity, -5 PDT
    hands="Rawhide Gloves", 			--, 15 SIRD
    legs="Erilaz Leg Guards +2",priority=19, --, 12 Enmity, -12% DT
    feet="Erilaz Greaves +2",priority=17,	 --, 8 Enmity, -10% DT
    neck="Moonlight Necklace", 			--, 15 Enmity, 15 SIRD
    waist="Audumbla Sash",  			--, 10 SIRD, -4 PDT
    left_ear="Cyptic Earring", 			--, 4 Enmity
    right_ear="Trux Earring", 			--, 5 Enmity
    left_ring="Supershear Ring",priority=14, --, 5 Enmity
    right_ring="Eihwaz Ring", 			--, 5 Enmity
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}},priority=15, --, 10 Enmity, 10PDT
	}
	
	sets.midcast.MaxEnmity = { 			--, DD Mode; 	+90% Enmity, Merit+10 = +25% SIRD, -37% PDT, -22% MDT, 3100 HP
										--, Tank Mode;	+83% Enmity, Merit+10 = +25% SIRD, -43% PDT, -27% MDT, 3500 HP 
	ammo="Sapience Orb", 				--, 2 Enmity
    head="Halitus Helm", 				--, 8 Enmity
    body="Emet Harness",priority=17, 	--, 9 Enmity, -5 PDT
    hands="Futhark Mitons +2", 				--, 5 Enmity
    legs="Erilaz Leg Guards +2",priority=19,--, 12 Enmity, -12% DT
    feet="Erilaz Greaves +2",priority=16, 	--, 8 Enmity, -10% DT
    neck="Moonlight Necklace", 			--, 15 Enmity, +15 SIRD
    waist="Kasiri Belt", 				--, 3 Enmity
    left_ear="Cryptic Earring",			--, 4 Enmity
    right_ear="Trux Earring",			--, 5
    left_ring="Supershear Ring",priority=14, --, 5 Enmity
    right_ring="Eihwaz Ring", 			--, 5 Enmity
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}},priority=15, --, 10 Enmity, 10PDT
	}
	sets.midcast.Foil = set_combine (sets.midcast.MaxEnmity, {
	head="Erilaz Galea +2",priority=16, --, 15 SIRD, +20% Duration
    hands="Regal Gauntlets", 			--, 15 SIRD
    legs={ name="Futhark Trousers +3", augments={'Enhances "Inspire" effect',}},priority=17, --, +30% Duration
	})
	
	sets.midcast.regen = {				--, Merit+10 = +72% SIRD +18 Regen, +30% Potency, +39 seconds, +30% Duration, +3HP JT = Regen IV 62/tic, 168 Seconds = 3472 HP. Peord +20HP = 4592 HP.
	ammo="Staunch Tathlum +1",
    head="Runeist Bandeau +2",priority=15,
    body={ name="Taeon Tabard", augments={'Mag. Evasion+19','Spell interruption rate down -9%','"Regen" potency+3',}},
    hands={ name="Taeon Gloves", augments={'Mag. Evasion+15','Spell interruption rate down -10%','"Regen" potency+3',}},
    --legs={ name="Taeon Tights", augments={'Mag. Evasion+17','Spell interruption rate down -9%','"Regen" potency+3',}},
    legs={ name="Futhark Trousers +3", augments={'Enhances "Inspire" effect',}},priority=16,	
    feet={ name="Taeon Boots", augments={'Mag. Evasion+18','Spell interruption rate down -9%','"Regen" potency+3',}},
    neck="Sacro Gorget",
    waist="Sroda Belt",
    left_ear="Tuisto Earring",priority=19,
    right_ear="Erilaz Earring +1",
	left_ring="Moonlight Ring",priority=17,		--, +110HP
	right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},priority=18,	--, +135HP
    back={ name="Ogma's Cape", augments={'HP+60','"Fast Cast"+10','Spell interruption rate down-10%',}},priority=14,
	}	
	
	sets.midcast.regenPeord = set_combine (sets.midcast.regen, {
    main={ name="Peord Claymore", augments={'Path: C',}},
	hands="Regal Gauntlets",
    right_ear="Erilaz Earring +1",
	})

	sets.midcast.RegenReceived = {				--, Merit+10 = +72% SIRD +18 Regen, +30% Potency, +39 seconds, +30% Duration, +3HP JT = Regen IV 62/tic, 168 Seconds = 3472 HP. Peord +20HP = 4592 HP.
	ammo="Staunch Tathlum +1",
    head="Null Masque",priority=11,
    body="Adamantite Armor",priority=17,
    hands="Nyame Gauntlets",priority=10,
    legs="Eri. Leg Guards +2",priority=13,
    feet="Erilaz Greaves +2",priority=12,
    neck="Unmoving Collar +1",priority=18,
    waist="Platinum Moogle Belt",priority=20,
    left_ear="Tuisto Earring",priority=16,
    right_ear="Erilaz Earring +1",
	left_ring="Moonlight Ring",priority=14,		--, +110HP
	right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},priority=15,	--, +135HP
    back="Moonbeam Cape",priority=19,
	}	
	
    sets.midcast.Cure = {			--, DD Mode;	+35% Cure Potency, Merit+10 = +104% SIRD, +25% Healing MP cost, -39% PDT, -31% MDT, 3150 HP
									--, Tank Mode;	+35% Cure Potency, Merit+10 = +104% SIRD, +25% Healing MP Cost, -34% PDT, -26% MDT, 3400 HP
    ammo="Staunch Tathlum +1",		--, SIRD set
    head="Erilaz Galea +2",priority=17, 
    body="Adamantite Armor",priority=18,
    hands="Rawhide Gloves",
    legs="Carmine Cuisses +1",priority=13,
    feet="Erilaz Greaves +2",priority=15,
    left_ear="Mendicant's Earring",
    right_ear="Magnetic Earring",
	left_ring="Moonlight Ring",priority=16,	--, +110HP
	right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},priority=19,	--, +135HP
    neck="Moonlight Necklace",
    waist="Sroda Belt", 			--, +35
    back={ name="Ogma's Cape", augments={'HP+60','"Fast Cast"+10','Spell interruption rate down-10%',}},priority=14,
		
    --ammo="Staunch Tathlum +1", 	--, DT Set -50% PDT, -52% MDT, +45% Cure Potency, +25% Healing MP cost, Merit+10 = +51% SIRD
    --head="Erilaz Galea +2",
    --body="Erilaz Surcoat +2",
    --hands="Erilaz Gauntlets +2",	--, -10% DT
    --legs="Erilaz Leg Guards +2", 	--, -12% DT
    --feet="Erilaz Greaves +2", 	--, -10% DT
    --neck="Sacro Gorget", 			--, +10
    --waist="Sroda Belt", 			--, +35
    --left_ear="Alabaster Earring",	--, -3% DT -2% MDT
    --right_ear="Tuisto Earring",
    --left_ring="Moonlight Ring", 	--, -5% DT
    --left_ring="Murky Ring", 	--, -10% DT
    --back={ name="Ogma's Cape", augments={'HP+60','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}
	
	sets.midcast.phalanx = { 		--, ML45 = Skill 546 = Phalanx Tier 8, -35 Damage, +18 = -53 Damage, Merit+10 = +31% SIRD, 2850 HP
	--Skill: 300 329 358 386 415 443 472 500
	--Dmg: 	-28 -29 -30 -31 -32 -33 -34 -35
	ammo="Staunch Tathlum +1",
    head={ name="Fu. Bandeau +3", augments={'Enhances "Battuta" effect',}},priority=15,
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    neck="Hoxne Torque",
	waist="Olympus Sash",
    left_ear="Andoaa Earring",
    right_ear="Mimir Earring",
	left_ring="Moonlight Ring",priority=17,		--, +110HP
	right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},priority=18,	--, +135HP
    back={ name="Ogma's Cape", augments={'HP+60','"Fast Cast"+10','Spell interruption rate down-10%',}},priority=16, --, 10
	}
	sets.midcast.PhalanxOutOfCombat = { 		--, ML45 = Skill 500 = Phalanx Tier 8, -35 Damage, +22 = -58 Damage, Merit+10 = +31% SIRD, 3250 HP
	main="Deacon Sword",
	ammo="Staunch Tathlum +1",
    head={ name="Fu. Bandeau +3", augments={'Enhances "Battuta" effect',}},priority=15,
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    neck="Unmoving Collar +1", 
	waist="Platinum Moogle Belt",
    left_ear="Andoaa Earring",
    right_ear="Mimir Earring",
	left_ring="Moonlight Ring",priority=17,		--, +110HP
	right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},priority=18,	--, +135HP
    back={ name="Ogma's Cape", augments={'HP+60','"Fast Cast"+10','Spell interruption rate down-10%',}},priority=16, --, 10
	}
	sets.midcast.phalanxSIRD = {	--, ML45 = Skill 485 = Phalanx Tier 7 , -34 Damage, +18 = -52 Damage, Merit+10 = 104% SIRD, -22% PDT, 3050 HP
	ammo="Staunch Tathlum +1",		--, 11
    head={ name="Fu. Bandeau +3", augments={'Enhances "Battuta" effect',}},priority=15,
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}}, 	--, 10
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},	--, 10
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},	--, 10
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},	--, 10
    neck="Moonlight Necklace", 		--, 15
    waist="Audumbla Sash",  		--, 10
    left_ear="Magnetic Earring",
    right_ear={name="Tuisto Earring", priority=19},
    left_ring={name="Moonlight Ring", priority=16},
    right_ring={ name="Gelatinous Ring +1", priority=17},
    back={ name="Ogma's Cape", augments={'HP+60','"Fast Cast"+10','Spell interruption rate down-10%',}},priority=15, --, 10
	}
	sets.midcast.enhancingduration = {	--, Enhancing Skill +84, +50% Duration, Skill 553
	ammo="Staunch Tathlum +1",
    head="Erilaz Galea +2",priority=15, 			--, +20%
    body="Manasa Chasuble", 			--, 12
    hands="Regal Gauntlets",priority=14,  			--, 15
    legs={ name="Futhark Trousers +3", augments={'Enhances "Inspire" effect',}},priority=18, --, 30%
    feet="Erilaz Greaves +2",priority=16,
    neck="Incanter's Torque", 				--, 10
	waist="Olympus Sash", 				--, 5
    left_ear="Andoaa Earring", 			--, 5
    right_ear="Mimir Earring", 			--, 10
	left_ring="Moonlight Ring",priority=17,		--, +110HP
	right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},priority=19,	--, +135HP
    back="Merciful Cape", 				--, 5
	}
	sets.midcast.enhancingskill = {		--, DD Mode: 	Enhancing Skill +121, ML40 = Skill 603 = Temper +30 Double Attack, Embolden +42, 2750 HP
	ammo="Staunch Tathlum +1",			--, Tank Mode: 	Enhancing Skill +81,  ML40 = Skill 553 = Temper +27 Double Attack, Embolden +34, 3342 HP
    head="Erilaz Galea +2",
    body="Manasa Chasuble",
    hands="Regal Gauntlets",
    legs={ name="Futhark Trousers +3", augments={'Enhances "Inspire" effect',}},
    feet="Erilaz Greaves +2",
    neck="Hoxne Torque",
    waist="Plat. Mog. Belt",
    left_ear="Alabaster Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Merciful Cape",
	}
	sets.midcast.refresh = { 			--, +20 Seconds, +30% Duration, +3 Refresh Potency, 32DT, Absorbs 7% Damage to MP
	ammo="Staunch Tathlum +1",
    head="Erilaz Galea +2",priority=15,
    body="Adamantite Armor",priority=17,
    hands="Regal Gauntlets",priority=14,
    legs={ name="Futhark Trousers +3", augments={'Enhances "Inspire" effect',}},priority=18,
    feet="Erilaz Greaves +2",priority=13,
    neck="Futhark Torque +2",priority=12,
    waist="Gishdubar Sash",
    left_ear="Sherida Earring",
    right_ear="Magnetic Earring",
	left_ring="Moonlight Ring",priority=17,		--, +110HP
	right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},priority=16,	--, +135HP
    back="Moonbeam Cape",priority=19, 
	}
	
    sets.midcast.MACC = { 						--, +437 MACC
    ammo="Yamarang",							--, 15
    head="Null Masque",priority=16, 	 		--, 51
    body="Adamantite Armor",priority=18, 	 	--, 54
    hands="Erilaz Gauntlets +2",priority=14, 	--, 52
    legs="Erilaz Leg Guards +2",priority=17, 	--, 53
    feet="Erilaz Greaves +2",priority=15, 	 	--, 50
    neck="Null Loop", 		 					--, 50
    waist="Null Belt",
    left_ear="Crepuscular Earring", 			--, 10
    right_ear="Erilaz Earring +1", 				--, 11
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}}, --, 15
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"}, 				--, 11
    back="Null Shawl",
	}
	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Holywater = { 	--, +42% Holy Water (Doom removal chance), 33% Base +42% = 75% Chance
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring +1",
    right_ring="Purity Ring",
	}
	sets.buff.Sleep = set_combine(sets.run.Regen, {
	head="Frenzy Sallet",
	})
	
	ElementalGear = {}
	ElementalGear.Obi = "Hachirin-no-Obi"
	ElementalGear.RingDark = "Archon Ring"
	ElementalGear.RingLight = "Weatherspoon Ring +1"
	ElementalGear.Head = "Pixie Hairpin +1"
	sets.midcast.CureWithLightWeather = {waist=ElementalGear.Obi}
	sets.midcast.NukeWithMatchingWeather = {waist=ElementalGear.Obi}
	sets.midcast.DarkNukes = {waist=ElementalGear.Obi,head=ElementalGear.Head,ring2=ElementalGear.RingDark}
	sets.midcast.LightNukes = {waist=ElementalGear.Obi,ring2=ElementalGear.RingLight}
	
RUN_info_1 = texts.new('${text}', {
    pos = {
        x = 772,
        y = 732,
    },
	bg = {
		alpha   = 120,   -- 0-255 (0 = transparent, 255 = opaque)
	},	
    text = {
        font = 'Consolas',
        size = 10,
        red = 255,
        green = 255,
        blue = 255,
    },
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
RUN_info_2 = texts.new('${text}', {
    pos = {
        x = 680,
        y = 749,
    },
	bg = {
		alpha   = 120,   -- 0-255 (0 = transparent, 255 = opaque)
	},	
    text = {
        font = 'Consolas',
        size = 10,
        red = 255,
        green = 255,
        blue = 255,
    },
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
RUN_info_1:show()
RUN_info_2:show()
update_RUN_panel()

remedy_box = texts.new('', {
    pos = {x = 598, y = 930},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
panacea_box = texts.new('', {
    pos = {x = 598, y = 880},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
holywater_box = texts.new('', {
    pos = {x = 598, y = 830},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
vile_box = texts.new('', {
    pos = {x = 590, y = 965},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
vile1_box = texts.new('', {
    pos = {x = 572, y = 980},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
InstantWarp_box = texts.new('', {
    pos = {x = 680, y = 1068},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
Food_box = texts.new('', {
    pos = {x = 1080, y = 1088},
    text = {
        font = 'Consolas',
        size = 10,
        stroke = {width = 2},
    },
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
SneakInvisible_box = texts.new('${text}', {
    pos = {
        x = 530,
        y = 1050,
    },
    text = {
        font = 'Consolas',
        size = 10,
        red = 255,
        green = 255,
        blue = 255,
    },
    flags = {
        right = false,
        bottom = false,
        bold = true,
        draggable = false,
    }
})
remedy_box:show()
panacea_box:show()
holywater_box:show()
vile_box:show()
vile1_box:show()
InstantWarp_box:show()
Food_box:show()
SneakInvisible_box:show()

update_item_boxes()
count_item()
end

function precast(spell) --, "==" indicates "Is", "~=" indicates "Is not", See examples in RDM.lua
    if  spell.type == 'JobAbility' then
		equip(sets.ja.Enmity)
			elseif sets.ja[spell.name] then
		equip(sets.ja[spell.name]) 
	end	
    if  spell.action_type == 'Magic' then --, All magic types uses assigned set
		equip(sets.precast.fastcast)
	end
	if spell.skill == 'Enhancing Magic' then --, If specifically Enhancing magic, then uses this set instead	
		equip(sets.precast.enhancing)
	end
    if sets.ws[spell.name] then
		if Tank_Mode == false then
			equip(sets.ws[spell.name])
				elseif Tank_Mode == true then
					equip(set_combine(sets.ws[spell.name], sets.TankWS))
			end
		end
	if spell.name:match('Lunge') or spell.name:match('Swipe')then
		equip(sets.ja['Lunge'])
			if buffactive['Lux'] and spell.name:match('Lunge') or spell.name:match('Swipe')then
				equip(sets.midcast.LightNukes)
			elseif buffactive['Tenebrae'] and spell.name:match('Lunge') or spell.name:match('Swipe')then
				equip(sets.midcast.DarkNukes)
			end
		end
	if spell.action_type == 'Ranged Attack' then
		equip (sets.ranged.precast)
	end
end


function midcast(spell) --, Midcast works in hierachy. The lower on the list the higher priority when using lazy If/End statements, otherwise when using If/Else/End, "Else" takes priority. See RDM lua for examples
	if spell.skill == "Blue Magic" then	
			equip(sets.midcast.BLUEnmitySIRD)
		end	
	if spell.skill == 'Enhancing Magic' then
			equip(sets.midcast.enhancingduration)
		end
	if spell.name:match('Refresh') then --,Spell.name == "xx" has to match name exactly, Spell.name:match ('xx') is like a variable that matches any prefix
			equip(sets.midcast.refresh)
		end
	if spell.name:match('Poison') then  
			equip(sets.midcast.enmity)
		end	
	if T{'Flash','Banishga','Stun','Foil'}:contains(spell.name) then
			equip(sets.midcast.MaxEnmity)
		end
	if T{'Crusade'}:contains(spell.name) then
			equip(sets.midcast.Foil)
		end
	if spell.name == 'Temper'  then 
		if Tank_Mode == false then
			equip(sets.midcast.enhancingskill)
				elseif Tank_Mode == true then
					equip(set_combine(sets.midcast.enhancingskill, sets.TankHP))
			end
		end	
	if spell.name:match('Regen') then
		if player.status == "Idle" and player.tp < 500 then
			equip(sets.midcast.regenPeord)
		elseif player.status == "engaged" then
			equip(sets.midcast.regen)
	end
end
	if spell.name:match('Phalanx') then
		if player.status == "Idle" and player.tp < 500 then
			equip (sets.midcast.PhalanxOutOfCombat) else
		if player.status == "Engaged" then		
			equip(sets.midcast.phalanxSIRD)
		end
	end
end
    if T{'Magic Fruit','Wild Carrot','Healing Breeze','Cure','Cure II','Cure III','Cure IV','Cura','Curaga III'}:contains(spell.name) then
		equip(sets.midcast.Cure)
	end
	if T{'Stoneskin','Aquaveil','Banishga'}:contains(spell.name) then
			equip(sets.midcast.sird)
		end

	if spell.action_type == 'Ranged Attack' then
		equip (sets.ranged.precast)
	end
	
	if spell.skill == "Elemental Magic" then
		equip(sets.ja['Lunge'])
	end
	if T{'Sleep','Bind','Absorb-TP','Absorb-DEX'}:contains(spell.name) then
		equip(sets.midcast.MACC)
	end
end 



function aftercast(spell) --, idle() makes the aftercast use the "Idle ()" states.
	idle()
	equip(sets.weapons[Weapons_Set_Names[Weapons_Index]])
    send_command('wait 5; gs c check_combat_set')
	update_item_boxes()
end

function buff_change(buff,gain) --, See list of buff names under Gearswap libraries, or just check name in-game when they are active
    -- if buff == 'Reive Mark' then
        -- if gain then
            -- equip(sets.buff.reive)
            -- disable("neck")
        -- else
            -- enable("neck")			
        -- end
	-- end
    --Embolden cape lock--
    if buff == 'Embolden' then --, Checks for the name of the Buff/Debuff to look out for
        if gain then --, Checks whether or not it is Active
            equip(sets.ja['Embolden'])
            disable('head','legs','back') --, Locks specific armor slots so they cannot change.
            add_to_chat(123,'[Embolden] ON -- Back Locked')
        else
            enable('head','legs','back') --, re-enables armor slots, when the buff/debuff is gone
            add_to_chat(158,'[Embolden] OFF -- Back Unlocked')
		end
    end
	if buff =='Battuta' then
	if gain then
		if Tank_Mode == false then
				equip(sets.DD_Mode.Inquartata)
				
		else if Tank_Mode == true then
				equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
			end
		end
	end
end
	if buff == "sleep" then
		if gain then
            equip(set_combine(sets.MEVA, sets.buff.Sleep))
             	disable('head')
        	else
            	enable('head')
            status_change(player.status)
		end
	end
    if buff == "doom" then --, Auto equips doom set, cause I'm lazy from killing Shinryu
        if gain then
            equip(sets.buff.Holywater)
             disable('ring1','ring2','neck')
        else
            enable('ring1','ring2','neck')
            status_change(player.status)
        end
    end

    if runes[buff]
    or buff == 'Crusade'
    or buff == 'Phalanx'
    or buff == 'Multi Strikes' 
    or buff == 'Refresh'
    or buff == 'Battuta'
    or buff == 'Regen' then
        update_RUN_panel()
    end
end

function idle() --, Engaged/Idle sets do not have to be here, can also be under self_command or anywhere really.
	if player.status =="Engaged" then --, When drawing weapon
		if Tank_Mode == true then
			equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]]) --, Equips the last gearset you changed to, is not static
		elseif DD_Mode == true then
			equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]])
				if buffactive["Aftermath: Lv.3"] then
					equip(sets.Aftermath)
		end
	end
end
	if buffactive['Battuta'] then
		if Tank_Mode == false then
		equip(sets.DD_Mode.Inquartata)
	else if Tank_Mode == true then
		equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
	end
	end
end
	if buffactive['Battuta'] then
		if Tank_Mode == false then
		equip(sets.DD_Mode.Inquartata)
	else if Tank_Mode == true then
		equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
	end
	end
end
	if player.status =='Idle' then --, When holstering weapon
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
end


function status_change(new,old) --, Checks player status when changing, is necessary to auto-equip from Idle mode to Engaged
	idle()
	update_RUN_panel()
	update_item_boxes()
end

Tank_Mode = true --, If true, default set is tanking TP array.
DD_Mode = true --, TP set order, looks for Tanking TP set before 2H TP

function self_command(command) --, Allows of use of various commands
	if command == 'toggle TP set' then --, When using the command as specified at the top of this lua, then executes these functions
		if Tank_Mode == true then --, Checks whether or not the Tank_Mode Mode is active,
			Tank_Mode_ind = Tank_Mode_ind + 1 --, Cycles through the Index, starts at 1 when switching or starting game
			if Tank_Mode_ind > #sets.Tank_Mode.index then Tank_Mode_ind = 1 end 
			windower.add_to_chat('Tank mode --> ' .. sets.Tank_Mode.index[Tank_Mode_ind] ..'') --, Sends a message ingame, not visible to others.
			--if player.status == 'Engaged' then
				equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
			--end
		elseif Tank_Mode == false then
			if DD_Mode == true then
				DD_Mode_ind = DD_Mode_ind + 1
				if DD_Mode_ind > #sets.DD_Mode.index then DD_Mode_ind = 1 end
				windower.add_to_chat('DD mode --> ' .. sets.DD_Mode.index[DD_Mode_ind] ..'')
				--if player.status == 'Engaged' then
						equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]])
				end
			end		
		end
	if command == 'toggle Tank_Mode set' then
		Tank_Mode_ind = Tank_Mode_ind + 1
		if Tank_Mode_ind > #sets.Tank_Mode.index then Tank_Mode_ind = 1 end
		windower.add_to_chat('Tank mode --> ' .. sets.Tank_Mode.index[Tank_Mode_ind] ..'')
		if player.status == 'Engaged' then
			equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
		end
	elseif command == 'toggle Tank_Mode' then
		if Tank_Mode == true then
			Tank_Mode = false
			windower.add_to_chat('<----- Tanking Mode: [Off] ----->')
        else
			Tank_Mode = true
			windower.add_to_chat('<----- Tanking Mode: [On] ----->')
		end
		status_change(player.status)
	elseif command == 'toggle DD_Mode' then
		if DD_Mode == true then
			DD_Mode = false
			windower.add_to_chat('<----- DD Mode: [Off] ----->')
        else
			DD_Mode = true
			windower.add_to_chat('<----- DD Mode: [On] ----->')
		end
	end
	if command == 'toggle run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Movement is now: '..Run_Set_Names[Run_Index]..' mode')
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH4 equipped')
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
	if command == 'toggle Weapons set' then
        Weapons_Index = Weapons_Index +1
        if Weapons_Index > #Weapons_Set_Names then Weapons_Index = 1 end
        windower.add_to_chat('Weapon is now: '..Weapons_Set_Names[Weapons_Index])
		equip(sets.weapons[Weapons_Set_Names[Weapons_Index]])
	end
	if command == 'toggle Sub_Weapons set' then
        Sub_Weapons_Index = Sub_Weapons_Index +1
        if Sub_Weapons_Index > #Sub_Weapons_Set_Names then Sub_Weapons_Index = 1 end
        windower.add_to_chat('Sub Weapon is now: '..Sub_Weapons_Set_Names[Sub_Weapons_Index])
		equip(sets.sub_weapons[Sub_Weapons_Set_Names[Sub_Weapons_Index]])
	end
	if command == 'toggle Buff set' then
    windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
		equip(sets.buff[Buff_Set_Names[Buff_Index]])
	end
	if command == 'toggle Holy Water' then
        windower.add_to_chat("Using Holy Water")
		send_command ("input /item 'Holy Water' <me>")
	end
	if command == 'toggle Remedy' then
        windower.add_to_chat("Using Remedy - Removes Blind, Paralyze, Poison, Silence, and potentially Disease.")
		send_command ("input /item 'Remedy' <me>")
    end
	if command == 'toggle Emergency MEVA' then
        windower.add_to_chat('Emergency MEVA/DT On')
		equip(sets.MEVA)
	end
	if command == 'toggle Meva/Stun resist' then
        windower.add_to_chat('MEVA/Stun resist On')
		equip(sets["MEVA Stun Resist"])
	end
	if command == 'toggle STP Set' then
        windower.add_to_chat('STP Set')
		equip(sets.Aftermath)
	end
	if command == 'react_return' then
        windower.add_to_chat('Phalanx received')
		idle()
	end
    if command == 'check_combat_set' then
        check_combat_set()
        return
	end
end

function check_combat_set()
    if player.status == 'Engaged' then
        if Tank_Mode == true then
            equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
        elseif DD_Mode == true then
            equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]])
        end
    end
	if player.status =='Idle' then --, When holstering weapon
		if Tank_Mode == true then
			equip(sets.run[Run_Set_Names[Run_Index]])
	elseif DD_Mode == true then
			equip(sets.run.DD_Idle)
		end
	end
end

function color_runes(spell)

    if spell:find('Ignis') then
        return '\\cs(255,0,0)'..spell..'\\cr'
    elseif spell:find('Gelus') then
        return '\\cs(0,128,255)'..spell..'\\cr'
    elseif spell:find('Flabra') then
        return '\\cs(0,255,0)'..spell..'\\cr'
    elseif spell:find('Tellus') then
        return '\\cs(210,180,40)'..spell..'\\cr'
    elseif spell:find('Sulpor') then
        return '\\cs(180,0,255)'..spell..'\\cr'
    elseif spell:find('Unda') then
        return '\\cs(0,255,255)'..spell..'\\cr'
	elseif spell:find('Lux') then
		return '\\cs(255,248,220)'..spell..'\\cr'
	elseif spell:find('Tenebrae') then
		return '\\cs(75,0,130)'..spell..'\\cr'
    end

    return spell

end

function get_current_runes()

    for spell in pairs(runes) do
        if buffactive[spell] then
            return spell
        end
    end

    return 'None'

end
function update_RUN_panel()

	local runes = get_active_runes()
	local crusade = buffactive['Crusade']
	local battuta  = buffactive['Battuta']
	local phalanx   = buffactive['Phalanx']
	local temper = buffactive['Multi Strikes']
	local refresh = buffactive['Refresh']
	local regen = buffactive['Regen']

	RUN_info_1:text(string.format(
		'Runes: %s\nCrusade: %s\nPhalanx: %s\nBattuta: %s',
		runes,
		crusade and '\\cs(0,255,0)ON\\cr' or '\\cs(255,0,0)OFF\\cr',
		phalanx and '\\cs(0,255,0)ON\\cr' or '\\cs(255,0,0)OFF\\cr',
		battuta and '\\cs(0,255,0)ON\\cr' or '\\cs(255,0,0)OFF\\cr'
	))
    RUN_info_2:text(string.format(
        'Temper: %s\nRefresh: %s\nRegen: %s',
        temper and '\\cs(0,255,0)ON\\cr' or '\\cs(255,0,0)OFF\\cr',
        refresh and '\\cs(0,255,0)ON\\cr' or '\\cs(255,0,0)OFF\\cr',
        regen and '\\cs(0,255,0)ON\\cr' or '\\cs(255,0,0)OFF\\cr'
    ))
end
function count_item(name)
    local item = res.items:with('en', name)
    if not item then return 0 end

    local inv = windower.ffxi.get_items('inventory')
    local count = 0

    for i = 1, inv.max do
        local slot = inv[i]
        if slot and slot.id == item.id then
            count = count + slot.count
        end
    end

    return count
end
function update_item_boxes()

    remedy_box:text(('Rem: %d'):format(count_item('Remedy')))
    panacea_box:text(('Pan: %d'):format(count_item('Panacea')))
    holywater_box:text(('HW: %d'):format(count_item('Holy Water')))
    vile_box:text(('VElix: %d'):format(count_item('Vile Elixir')))
    vile1_box:text(('VElix +1: %d'):format(count_item('Vile Elixir +1')))
    InstantWarp_box:text(('Warp: %d'):format(count_item('Instant Warp')))
    Food_box:text(('Grape Daifuku: %d'):format(count_item('Grape Daifuku')))
	SneakInvisible_box:text(
		('Silent Oil : %d\nPrism Powder: %d'):format(
			count_item('Silent Oil'),
			count_item('Prism Powder')
		))	
end

function file_unload() --, Unbinds defined keybinds when changing jobs, can also use "send_command('clearbinds')" to wipe any and all
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind ^f7')

send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind ^f9')

send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind ^f10')

send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind ^f12')

send_command('unbind Numpad1')
send_command('unbind !Numpad1')
send_command('unbind ^Numpad1')

send_command('unbind Numpad3')
send_command('unbind !Numpad3')
send_command('unbind ^Numpad3')

send_command('unbind Numpad0')
send_command('unbind !Numpad0')
send_command('unbind ^Numpad0')
send_command('unbind Numpad0')

remedy_box:destroy()
panacea_box:destroy()
holywater_box:destroy()
vile_box:destroy()
vile1_box:destroy()
InstantWarp_box:destroy()
Food_box:destroy()
SneakInvisible_box:destroy()
end
