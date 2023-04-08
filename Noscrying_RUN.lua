function get_sets()
	send_command('bind f9 gs c toggle TP set') --, Loads when changing job, this means if you hit f9 it toggles the sets
	send_command('bind !f9 gs c toggle TankingTP') --! turns tanking tp off
	send_command('bind f10 gs c toggle run set') 
	send_command('bind f12 gs c toggle TH set') 
	send_command('bind f7 gs c toggle Weapons set') 
	send_command('bind !f7 gs c toggle Sub_Weapons set') 
	send_command('bind !numpad1 gs c toggle Buff set')
	send_command('bind !numpad0 gs c toggle Emergency MEVA')
	Run_Index = 1 --, Index for gearsets, needed for when there is more than 1 in a set and you wish you toggle beween them
	TH_Index = 1
	Weapons_Index = 1
	Sub_Weapons_Index = 1	
	Buff_Index = 1	

	Weapons_Set_Names = {'Zantetsuken X','Aettir'} --, Define set names, allows the lua to know what you are referring to.
	sets.weapons = {}
	sets.weapons["Zantetsuken X"] = {
    main="Zantetsuken X",
	sub="Utu Grip",
}
	sets.weapons.Aettir = {
    main="Aettir",
	sub="Utu Grip",
}
	
	Sub_Weapons_Set_Names = {'Lycurgos'}
	sets.sub_weapons = {}
	sets.sub_weapons.Lycurgos = {
    main="Lycurgos",
	sub="Utu Grip",
	}	
	
	sets.TwoHandedTP = {}
	sets.TwoHandedTP.index = { 'Normal', 'Hybrid'}
	TwoHandedTP_ind = 1

	sets.TwoHandedTP.Normal = { -- 3QA, 22TA, 37DA, Temper+28 = 65DA, Embolden +14 = 79DA, -24PDT, -6MDT
    ammo="Yamarang",
    head="Adhemar Bonnet +1",
    --body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body="Ayanmo Corazza +2",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
	legs="Meghanada Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Anu Torque",
    waist="Ioskeha Belt +1",
    --waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Cessance Earring",
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epona's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	sets.TwoHandedTP.Hybrid = { -- 3QA, 4TA, 34DA, Temper+28 = 62DA, Embolden +14 = 76DA, -49PDT, -41MDT, +11 Inquartata, missing Parry on Enmity cape
    ammo="Crepuscular Pebble",
    head="Adhemar Bonnet +1",
    body="Ayanmo Corazza +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Turms Leggings +1",
    neck="Elite Royal Collar",
    waist="Ioskeha Belt +1",
    left_ear="Odnowa Earring +1",
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.TwoHandedTP.Inquartata = {
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Turms Leggings +1",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Parrying rate+5%',}},
	}
	
	sets.TankingTP = {}
	sets.TankingTP.index = { 'DT','Parry'}
	TankingTP_ind = 1
	
	sets.TankingTP.DT = { --, -49PDT (PDT should be as close to 50 as possible, Protect adds to defense which is separate from PDT), -49MDT (MDT only need to be -21% in any set, Shell V is -29% MDT), Inquartata +6, Parry +5%, 3750HP, +28 DA
    ammo="Crepuscular Pebble",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Erilaz Gauntlets +2",
    legs="Erilaz Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Unmoving Collar +1",
    -- waist="Engraved Belt",
	waist="Platinum Moogle Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Moonbeam Ring",
    right_ring="Moonbeam Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Parrying rate+5%',}},
	}

	sets.TankingTP.Parry = { --, -48PDT, -35MDT, +11 Inquartata, Parry +5%, +37 DA
    ammo="Crepuscular Pebble",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Turms Leggings +1",
    neck="Elite Royal Collar",
	waist="Platinum Moogle Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Moonbeam Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Parrying rate+5%',}},
	}
	sets.TankingTP.Inquartata = {
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Turms Leggings +1",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Parrying rate+5%',}},
	}	

	MEVA_Set_Name = {'MEVA'}
	sets.MEVA = { 				--, +40-50 Elemental Resist, +10 Status Resist, +5% Magic Absorb chance, +5% Negate Magic Damage chance, +646 MEVA, -51% PDT, -40% MDT
    ammo="Staunch Tathlum", 	--, +10 Status Resist, -2% DT
    head="Erilaz Galea +2", 	--, +109 MEVA
    body="Erilaz Surcoat +2", 	--, +120 MEVA
    hands="Turms Mittens +1", 	--, +101 MEVA
    legs="Eri. Leg Guards +2", 	--, +147 MEVA, -12% DT
    feet="Erilaz Greaves +2", 	--, +147 MEVA, -10% DT
    neck="Warder's Charm +1", 	--, +20 Element Resist, +5% Magic Absorb chance
    waist="Engraved Belt", 		--, +20-30 Element Resist
    left_ear="Odnowa Earring +1",	--, -5% MDT, -3% PDT
    right_ear="Tuisto Earring", 
    --left_ring="Archon Ring", 	--, +5% Negate Magic Damage chance
    left_ring="Moonbeam Ring",
    right_ring="Defending Ring", --, -10% DT
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}}, --, -10% PDT
}
	
	Run_Set_Names = {'Refresh','Regen','DT'}
	sets.run = {}
	sets.run.Refresh =  { -- Refresh 7/Tic
    ammo="Homiliary",
    head="Rawhide Mask",
    body="Runeist Coat +1",
    hands="Erilaz Gauntlets +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Erilaz Greaves +2",
    neck="Sibyl Scarf",
    waist="Platinum Moogle Belt",
    left_ear="Sherida Earring",
    right_ear="Cessance Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	}
	sets.run.Regen =  { -- Refresh 4/Tic, Regen 18/Tic
    ammo="Homiliary",
    head="Rawhide Mask",
    body="Runeist Coat +1",
    hands="Turms Mittens +1",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Turms Leggings +1",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear="Infused Earring",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring",
    back="Moonbeam Cape",
	}
	sets.run.DT =  { --, -40PDT, -28MDT
    ammo="Staunch Tathlum",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Erilaz Gauntlets +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Erilaz Greaves +2",
    neck="Warder's Charm",
    waist="Flume Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Moonbeam Ring",
    left_ring="Moonbeam Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	TH_Set_Names = {'TH'}
	sets.TH = {}
	sets.TH.TH = {
    head="White Rarab Cap +1",
	ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
    feet={ name="Herculean Boots", augments={'"Dual Wield"+1','Attack+5','"Treasure Hunter"+1',}},
	}
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws['Resolution']	= { --FTP Replicating WS, Prefer Multi Attack to WSD
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','"Crit.hit rate"+3',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Meg. Chausses +2",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Fotia Gorget",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    --waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epona's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Spinning Slash']	= {
    ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','"Crit.hit rate"+3',}},
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs={ name="Lustr. Subligar +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}	
	sets.ws['Herculean Slash']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	sets.ws['Shockwave']	= { --, Use MACC to ensure additional effect proc, Sleepga
    ammo="Knobkierrie",
	head="Erilaz Galea +2", 
    body="Erilaz Surcoat +2",
    hands="Erilaz Gauntlets +2",
    legs="Erilaz Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Crepuscular Earring",
    right_ear={ name="Erilaz Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	}
	sets.ws['Ground Strike']	= {
    ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','"Crit.hit rate"+3',}},
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs={ name="Lustr. Subligar +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}	
	sets.ws['Dimidiation']	= {
    ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','"Crit.hit rate"+3',}},
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs={ name="Lustr. Subligar +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Ilabrat Ring",
    --right_ring="Epaminondas's Ring",	
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}

	sets.ws['Savage Blade']	= {
    ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','"Crit.hit rate"+3',}},
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs={ name="Lustr. Subligar +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	sets.ws['Chant du Cygne']	= {
    ammo="Oshasha's Treatise",
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet="Meg. Jam. +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epona's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	
	sets.ws['Sanguine Blade']	= { --, Mix MACC and MAB for high Drain rate
	ammo="Knobkierrie",
    head="Pixie Hairpin +1",
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Crep. Earring",
    right_ear="Friomisi Earring",
    left_ring="Archon Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	
	sets.ws['Upheaval']	= {
	ammo="Knobkierrie",
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	sets.ws['Steel Cyclone']	= {
    ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','"Crit.hit rate"+3',}},
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs={ name="Lustr. Subligar +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Sroda Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	sets.ws['Fell Cleave']	= {
    ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','"Crit.hit rate"+3',}},
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs={ name="Lustr. Subligar +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	sets.ws['Armor Break']	= { --, Use MACC to ensure additional effect proc, Defense Down
    ammo="Knobkierrie",
	head="Erilaz Galea +2", 
    body="Erilaz Surcoat +2",
    hands="Erilaz Gauntlets +2",
    legs="Erilaz Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Crepuscular Earring",
    right_ear={ name="Erilaz Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	}
	sets.ws['Decimation']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epona's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	sets.ws['Smash Axe']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona's Ring",
    right_ring="Refuscent Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Ruinator']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona's Ring",
    right_ring="Refuscent Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	

	sets.ja = {} 					-- Leave this empty
	sets.ja.Enmity = { 		--, +69% Enmity (Enmity gear is a percentage increase or decrease, not an addition
    head="Halitus Helm", 		--, 8
    body="Emet Harness", 		--, 9
	hands="Nilas Gloves", 		--, 5
    legs="Erilaz Leg Guards +2", 	--, 12
    feet="Erilaz Greaves +2",		--, 8
    neck="Unmoving Collar +1", 		--, 10
    waist="Warwolf Belt", 		--, 3
    left_ear="Friomisi Earring", 	--, 2
    right_ear="Eris' Earring", 		--, 2
    left_ring="Supershear Ring", 	--, 5
    right_ring="Provocare Ring", 	--, 5
	back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}}, --, 10
	}
		
	sets.ja['Vallation'] = set_combine(sets.ja.Enmity, { --, When we define a set as as "sets.ja['xx'], then we can in our precast set, refer to all named in this way, while still specifying a single set.
	body="Runeist Coat +1",
	legs="Futhark Trousers +1",
	})
	sets.ja['Embolden'] = set_combine(sets.ja.Enmity, { --, Adoulin cape lowers Embolden Duration penalty, from 50% -> 35%
	legs="Futhark Trousers +1",
    back={ name="Evasionist's Cape", augments={'Enmity+4','"Embolden"+15','"Dbl.Atk."+1',}},
	})
	sets.ja['Valiance'] = set_combine(sets.ja.Enmity, {
	body="Runeist Coat +1",
	legs="Futhark Trousers +1",
	})
	sets.ja['Vivacious Pulse'] = set_combine(sets.ja.Enmity,{ --, Higher Divine Magic skill provides more HP, More of the same Runes provides more HP
    head="Erilaz Galea +2",
	legs="Runeist Trousers +1",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	})
	sets.ja['Pflug'] = set_combine(sets.ja.Enmity, {
	})
	sets.ja['Gambit'] = set_combine(sets.ja.Enmity, {
	hands="Runeist Mitons",
	})
	sets.ja['Battuta'] = set_combine(sets.ja.Enmity, {
    head={ name="Fu. Bandeau +1", augments={'Enhances "Battuta" effect',}},
	})

	sets.ja['Rayke'] = set_combine(sets.ja.Enmity, {
	})
	sets.ja['Weapon Bash'] = set_combine(sets.ja.Enmity, {
	})
	sets.ja['Swordplay'] = set_combine(sets.ja.Enmity, {
	})
	sets.ja['Souleater'] = set_combine(sets.ja.Enmity, {
	})
	sets.ja['One for All'] = { --, Higher HP provides higher Magic Stoneskin
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Turms Leggings +1",
    neck="Unmoving Collar +1",
    waist="Platinum Moogle Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Moonbeam Ring",
    right_ring="Moonbeam Ring",
    back="Moonbeam Cape",	
	}
	sets.ja['Ignis'] = {
    ammo="Staunch Tathlum",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Tuisto Earring",
    right_ear="Eabani Earring",
    left_ring="Archon Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Gelus'] = {
    ammo="Staunch Tathlum",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Tuisto Earring",
    right_ear="Eabani Earring",
    left_ring="Archon Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Tellus'] = {
    ammo="Staunch Tathlum",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Tuisto Earring",
    right_ear="Eabani Earring",
    left_ring="Archon Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Sulpor'] = {
    ammo="Staunch Tathlum",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Tuisto Earring",
    right_ear="Eabani Earring",
    left_ring="Archon Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Unda'] = {
    ammo="Staunch Tathlum",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Tuisto Earring",
    right_ear="Eabani Earring",
    left_ring="Archon Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Flabra'] = {
    ammo="Staunch Tathlum",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Tuisto Earring",
    right_ear="Eabani Earring",
    left_ring="Archon Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Lux'] = {
    ammo="Staunch Tathlum",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Tuisto Earring",
    right_ear="Eabani Earring",
    left_ring="Archon Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Tenebrae'] = {
    ammo="Staunch Tathlum",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Tuisto Earring",
    right_ear="Eabani Earring",
    left_ring="Archon Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Lunge'] = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear="Hecate's Earring",
    left_ring="Fenrir Ring",
    right_ring="Mujin Band",
    back="Argocham. Mantle",
	}
	sets.ja['Swipe'] = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear="Hecate's Earring",
    left_ring="Fenrir Ring",
    right_ring="Mujin Band",
    back="Argocham. Mantle",
	}
	sets.ja.Dark = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Pixie Hairpin +1",
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear="Hecate's Earring",
    left_ring="Fenrir Ring",
    right_ring="Archon Ring",
    back="Argocham. Mantle",
	}
	sets.ja.Light = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear="Hecate's Earring",
    left_ring="Fenrir Ring",
    right_ring="Weatherspoon Ring",
    back="Argocham. Mantle",
	}	
	sets.idle = {} 					-- Leave this empty
	
	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = { 	--, 58% (Cap 80%) Inspiration 2 = 24% Fast Cast on Valiance or Vallation, Merit+5 = +65 SIRD
    ammo="Impatiens",
    head="Runeist Bandeau +2", 		--, 12
    body="Erilaz Surcoat +2", 		--, 10
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --8
    legs="Carmine Cuisses +1",
    feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}}, --7
    neck="Moonbeam Necklace", 		--, 10 Enmity, +10 SIRD
    waist="Audumbla Sash",  		--, 10 SIRD, -4 PDT
    left_ear="Loquacious Earring", 	--, 2
    right_ear="Magnetic Earring",
    left_ring="Kishar Ring", 		--, 4
    right_ring="Weatherspoon Ring", 	--, 5
    back={ name="Ogma's Cape", augments={'"Fast Cast"+10','Spell interruption rate down-10%',}}, --,10
}
	
	sets.precast.enhancing = { 	--, 71% (Cap 80%) Inspiration 2 = 24% Fast Cast on Valiance or Vallation, Merit+5 = +58 SIRD
    ammo="Impatiens",
    head="Runeist Bandeau +2",		--, 12
    body="Erilaz Surcoat +2", 		--, 10
    hands="Rawhide Gloves",
    legs="Futhark Trousers +1", 	--, 13
    feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}}, --7
    neck="Moonbeam Necklace", 		--, 10 Enmity, +10 SIRD
    waist="Siegel Sash", 		--, 8 (Only works for Enhancing Magic)
    left_ear="Loquacious Earring", 	--, 2
    right_ear="Magnetic Earring",
    left_ring="Kishar Ring", 		--, 4
    right_ring="Weatherspoon Ring", 	--, 5
    back={ name="Ogma's Cape", augments={'"Fast Cast"+10','Spell interruption rate down-10%',}}, --10
	}

    sets.midcast = {}               -- leave this empty  
	sets.midcast.sird = set_combine(sets.ja.Enmity, {--, Merit+5 == 103% (Cap 102%)
    ammo="Impatiens", 			--, 10
	head="Erilaz Galea +2", 	--, 15
    hands="Rawhide Gloves", 		--, 15
    legs="Carmine Cuisses +1", 		--, 20
    neck="Moonbeam Necklace", 		--, 10
    waist="Audumbla Sash",  		--, 10
    right_ear="Magnetic Earring", 	--, 8 
	left_ring="Evanescence Ring",	--, 5
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'"Fast Cast"+10','Spell interruption rate down-10%',}}, --, 10
	})
	
	sets.midcast.enmity = { 	--, +49% Enmity (Enmity gear is a percentage increase or decrease, not an addition), Merit+5 = +78 SIRD, -41% PDT, -22% MDT
	ammo="Impatiens", 		--, 10 SIRD
	head="Erilaz Galea +2", 	--, 15 SIRD
    body="Emet Harness", 		--, 9 Enmity, -5 PDT
    hands="Rawhide Gloves", 		--, 15 SIRD
    legs="Erilaz Leg Guards +2", 	--, 12 Enmity, -12% DT
    feet="Erilaz Greaves +2",		--, 8 Enmity, -10% DT
    neck="Moonbeam Necklace", 		--, 10 Enmity, 10 SIRD
    waist="Audumbla Sash",  		--, 10 SIRD, -4 PDT
    left_ear="Halasz Earring", 		--, 5 SIRD
    right_ear="Magnetic Earring", 	--, 8 SIRD
    left_ring="Supershear Ring", 	--, 5 Enmity
    right_ring="Provocare Ring", 	--, 5 Enmity
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}}, --, 10 Enmity, 10PDT
	}
	sets.midcast.MaxEnmity = { 	--, +69% Enmity, Merit+5 = +25 SIRD, -37% PDT, -22 MDT
	ammo="Impatiens", 		--, 10 SIRD
    head="Halitus Helm", 		--, 8 Enmity
    body="Emet Harness", 		--, 9 Enmity, -5 PDT
    hands="Nilas Gloves", 		--, 5 Enmity
    legs="Erilaz Leg Guards +2", 	--, 12 Enmity, -12% DT
    feet="Erilaz Greaves +2", 		--, 8 Enmity, -10% DT
    neck="Moonbeam Necklace", 		--, 10 Enmity, +10 SIRD
    waist="Warwolf Belt", 		--, 3 Enmity
    left_ear="Friomisi Earring", 	--, 2 Enmity
    right_ear="Eris' Earring", 		--, 2 Enmity
    left_ring="Supershear Ring", 	--, 5 Enmity
    right_ring="Provocare Ring", 	--, 5 Enmity
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}}, --, 10 Enmity, 10PDT
	}
	sets.midcast.Foil = { 		--, +37% Enmity, Merit+5 = +78 SIRD, -29% PDT, -10% MDT, +40% Duration
	ammo="Impatiens", 		--, 10 SIRD
	head="Erilaz Galea +2", 	--, 15 SIRD, +20% Duration
    body="Emet Harness", 		--, 9 Enmity, -5 PDT
    hands="Rawhide Gloves", 		--, 15 SIRD
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}}, --, +20% Duration
    feet="Erilaz Greaves +2", 		--, 8 Enmity, -10% DT
    neck="Moonbeam Necklace", 		--, 10 Enmity, +10 SIRD
    waist="Audumbla Sash",  		--, 10 SIRD, -4 PDT
    left_ear="Halasz Earring", 		--, 5 SIRD
    right_ear="Magnetic Earring", 	--, 8 SIRD
    left_ring="Supershear Ring", 	--, 5 Enmity
    right_ring="Provocare Ring", 	--, 5 Enmity
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}}, --, 10 Enmity, 10PDT
	}	
	sets.midcast.regen = {	--, Merit+5 = +60 SIRD +19 Regen, +30% Potency, +39 seconds, +20% Duration +25% Healing/Enhancing MP Cost  = Regen IV 58/tic, 168 Seconds = 3248 HP, Embolden 73/Tic, 110 Seconds = 2628, don't do it.
	ammo="Staunch Tathlum",
    head="Runeist Bandeau +2",
    body={ name="Taeon Tabard", augments={'Mag. Evasion+19','Spell interruption rate down -9%','"Regen" potency+3',}},
    hands={ name="Taeon Gloves", augments={'Mag. Evasion+15','Spell interruption rate down -10%','"Regen" potency+3',}},
    --legs={ name="Taeon Tights", augments={'Mag. Evasion+17','Spell interruption rate down -9%','"Regen" potency+3',}},
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}},	
    feet={ name="Taeon Boots", augments={'Mag. Evasion+18','Spell interruption rate down -9%','"Regen" potency+3',}},
    neck="Sacro Gorget",
    waist="Sroda Belt",
    left_ear="Magnetic Earring",
    right_ear={ name="Erilaz Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}}, --, 10 Enmity, 10PDT
	}	
	sets.midcast.Cure = {			--, +45% Cure Potency, +5% Cure Self, Merit+5 = +96 SIRD, +25% Healing MP cost, ML45 /BLU gets Magic Fruit, which is Cure IV Potency but without extra MP cost as it is Blue Magic.
	-- head="Erilaz Galea +2", 		--, SIRD set
    -- hands="Rawhide Gloves",
    -- legs="Carmine Cuisses +1",
	-- feet="Karasutengu Kogake",
    -- left_ear="Halasz Earring",
    -- right_ear="Magnetic Earring",
    -- left_ring="Kunaji Ring", 		--, +5
    -- right_ring="Evanescence Ring",
    -- neck="Sacro Gorget", 			--, +10
    -- waist="Sroda Belt", 			--, +35
    -- back={ name="Ogma's Cape", augments={'"Fast Cast"+10','Spell interruption rate down-10%',}},
		
    ammo="Staunch Tathlum", 		--, DT Set -49% PDT, -41% MDT, +45% Cure Potency, +25% Healing MP cost, Merit+5 = +30 SIRD
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Erilaz Gauntlets +2",	--, -10% DT
    legs="Erilaz Leg Guards +2", 	--, -12% DT
    feet="Erilaz Greaves +2", 		--, -10% DT
    neck="Sacro Gorget", 		--, +10
    waist="Sroda Belt", 		--, +35
    left_ear="Odnowa Earring +1",	--, -3% DT -2% MDT
    right_ear="Tuisto Earring",
    left_ring="Moonbeam Ring", 		--, -4% DT
    left_ring="Defending Ring", 	--, -10% DT
    back={ name="Ogma's Cape", augments={'"Fast Cast"+10','Spell interruption rate down-10%',}},
	}
	
	sets.midcast.phalanx = { --, ML25 = Skill 502 = Phalanx Tier 8, -35 Damage, +17 = -52 Damage
	ammo="Staunch Tathlum",
    head={ name="Fu. Bandeau +1", augments={'Enhances "Battuta" effect',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'"Fast Cast"+5','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'"Fast Cast"+5','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'"Fast Cast"+5','Phalanx +3',}},
    neck="Melic Torque",
	waist="Olympus Sash",
    left_ear="Augmenting Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	}
	sets.midcast.enhancingduration = {	--, Enhancing Skill +78, +40% Duration, Skill 553
	ammo="Staunch Tathlum",
    head="Erilaz Galea +2", 			--, +20%
    body="Manasa Chasuble", 			--, 12
    hands="Runeist Mitons", 			--, 15
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}}, --, 20%
    feet="Erilaz Greaves +2",
    neck="Melic Torque", 			--, 10
	waist="Olympus Sash", 			--, 5
    left_ear="Andoaa Earring", 			--, 5
    right_ear="Mimir Earring", 			--, 10
    left_ring="Stikini Ring +1",		--, 8
    right_ring="Stikini Ring +1", 		--, 8
    back="Merciful Cape", 			--, 5
	}
	sets.midcast.enhancingskill = {		--, Enhancing Skill +106, ML35 = Skill 581 = Temper +28 Double Attack
	ammo="Staunch Tathlum",
    head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}}, --10
    body="Manasa Chasuble", 			--, 12
    hands="Runeist Mitons", 			--, 15
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}}, --18
    feet="Erilaz Greaves +2",
    neck="Melic Torque", 			--, 10
	waist="Olympus Sash", 			--, 5
    left_ear="Andoaa Earring", 			--, 5
    right_ear="Mimir Earring", 			--, 10
    left_ring="Stikini Ring +1", 		--, 8
    right_ring="Stikini Ring +1", 		--, 8
    back="Merciful Cape", 			--, 5
	}
	sets.midcast.refresh = { --, +20 Seconds, +20% Duration, +3 Refresh Potency, 32DT, Absorbs 7% Damage to MP
	ammo="Staunch Tathlum",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Erilaz Gauntlets +2",
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}},
    feet="Erilaz Greaves +2",
    neck="Elite Royal Collar",
    waist="Gishdubar Sash",
    left_ear="Sherida Earring",
    right_ear="Magnetic Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	}

    sets.midcast.MACC = { --, +326 MACC
    ammo="Impatiens",
	head="Erilaz Galea +2", --51
    body="Erilaz Surcoat +2", --54
    hands="Erilaz Gauntlets +2", --52
    legs="Erilaz Leg Guards +2", --53
    feet="Erilaz Greaves +2", --50
    neck="Erra Pendant", --17
    waist="Eschan Stone", --7
    left_ear="Crepuscular Earring", --10
    right_ear={ name="Erilaz Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}}, --6
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}}, --15
    right_ring="Stikini Ring +1", --11
    back="Moonbeam Cape",
	}
	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Holywater = { --, +42% Holy Water (Doom removal chance), 33% Base +42% = 75% Chance
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring",
    right_ring="Purity Ring",
	}
	
	ElementalGear = {}
	ElementalGear.Obi = "Hachirin-no-Obi"
	ElementalGear.Cape = "Twilight Cape"
	ElementalGear.RingDark = "Archon Ring"
	ElementalGear.RingLight = "Weatherspoon Ring"
	ElementalGear.Head = "Pixie Hairpin +1"
	sets.midcast.CureWithLightWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}
	sets.midcast.NukeWithMatchingWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}
	sets.midcast.DarkNukes = {back=ElementalGear.Cape,waist=ElementalGear.Obi,head=ElementalGear.Head,ring2=ElementalGear.RingDark}
	sets.midcast.LightNukes = {back=ElementalGear.Cape,waist=ElementalGear.Obi,ring2=ElementalGear.RingLight}
	
	sets.adoulin = {}
	sets.adoulin.movement = {body="Councilor's Garb",}   --auto swaps when in adoulin 
 

end

function precast(spell) --, "==" indicates "Is", "~=" indicates "Is not", See examples in RDM.lua

    if  spell.type == 'JobAbility' then
        equip(sets.ja.enmity)
    end	
    if  spell.action_type == 'Magic' then --, All magic types uses assigned set
        equip(sets.precast.fastcast)
	end 
	if spell.skill == 'Enhancing Magic' then --, If specifically Enhancing magic, then uses this set instead	
		equip(sets.precast.enhancing)
	end
    if sets.ja[spell.name] then --, When set is setup as specified, then uses the preassigned set
        equip(sets.ja[spell.name])
	end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])        
    end
	if spell.name:match('Lunge') or spell.name:match('Swipe')then
		equip(sets.ja[spell.name])
            if world.weather_element == spell.element or world.day_element == spell.element then
                equip(sets.midcast.NukeWithMatchingWeather)
			end
		if buffactive['Lux'] and spell.name:match('Lunge') or spell.name:match('Swipe')then
			equip(sets.midcast.LightNukes)
		end
		if buffactive['Tenebrae'] and spell.name:match('Lunge') or spell.name:match('Swipe')then
			equip(sets.midcast.DarkNukes)
		end
	end
end


function midcast(spell) --, Midcast works in hierachy. The lower on the list the higher priority when using lazy If/End statements, otherwise when using If/Else/End, "Else" takes priority. See RDM lua for examples
	if spell.skill == 'Enhancing Magic' then
		equip(sets.midcast.enhancingduration)
	end
	if spell.name:match('Refresh') then
		equip(sets.midcast.refresh)
	end
	if spell.name:match('Poison') or spell.name:match('Absorb') then  
		equip(sets.midcast.enmity)
	end
	if spell.name =='Flash' or spell.name =='Stun' then
		equip(sets.midcast.MaxEnmity)
	end
	if spell.name =='Foil' then
		equip(sets.midcast.Foil)
	end	
	if spell.name == 'Temper' or spell.name:match('Bar') then --,Spell.name == "xx" has to match name exactly, Spell.name:match ('xx') is like a variable that matches any prefix
		equip(sets.midcast.enhancingskill)
	end
	if spell.name:match('Regen') then
		equip(sets.midcast.regen)
	end	
	if spell.name:match('Phalanx') then
		equip(sets.midcast.phalanx)
			if player.status == "Engaged" then --, If engaged, uses SIRD set
				equip(sets.midcast.sird)
			end
		end

    if spell.name:match('Magic Fruit') or spell.name:match('Cure') or spell.name:match('Healing Breeze')or spell.name:match('Wild Carrot')then
        equip(sets.midcast.Cure)
		end
	end

function aftercast(spell) --, idle() makes the aftercast use the "Idle ()" states.
	idle()
end

function buff_change(buff,gain) --, See list of buff names under Gearswap libraries, or just check name in-game when they are active
    if buff == 'Reive Mark' then
        if gain then
            equip(sets.buff.reive)
            disable("neck")
        else
            enable("neck")
            status_change(player.status)
        end
	end
    --Embolden cape lock--
    if buff == 'Embolden' then --, Checks for the name of the Buff/Debuff to look out for
        if gain then --, Checks whether or not it is Active
            equip(sets.ja['Embolden'])
            disable('head','legs','back') --, Locks specific armor slots so they cannot change.
            add_to_chat(158,'[Embolden] ON -- Back Locked')
        else
            enable('head','legs','back') --, re-enables armor slots, when the buff/debuff is gone
            add_to_chat(123,'[Embolden] OFF -- Back Unlocked')
            status_change(player.status)
        end
    end
	if buffactive['Battuta'] then
		if TankingTP == false then
		equip(sets.TwoHandedTP.Inquartata)
	else if TankingTP == true then
		equip(sets.TankingTP[sets.TankingTP.index[TankingTP_ind]])
	end
	end
end
end

function idle() --, Engaged/Idle sets do not have to be here, can also be under self_command or anywhere really.
	if player.status =="Engaged" then --, When drawing weapon
		if TankingTP == true then
			equip(sets.TankingTP[sets.TankingTP.index[TankingTP_ind]]) --, Equips the last gearset you changed to, is not static
		elseif TwoHandedTP == true then
			equip(sets.TwoHandedTP[sets.TwoHandedTP.index[TwoHandedTP_ind]])
	end
end
	if buffactive['Battuta'] then
		if TankingTP == false then
		equip(sets.TwoHandedTP.Inquartata)
	else if TankingTP == true then
		equip(sets.TankingTP[sets.TankingTP.index[TankingTP_ind]])
	end
	end
end
end
	if player.status =='Idle' then --, When holstering weapon
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
end


function status_change(new,old) --, Checks player status when changing, is necessary to auto-equip from Idle mode to Engaged
	idle()
end

TankingTP = true --, If true, default set is tanking TP array.
TwoHandedTP = true --, TP set order, looks for Tanking TP set before 2H TP

function self_command(command) --, Allows of use of various commands
	if command == 'toggle TP set' then --, When using the command as specified at the top of this lua, then executes these functions
		if TankingTP == true then --, Checks whether or not the TankingTP Mode is active,
			TankingTP_ind = TankingTP_ind + 1 --, Cycles through the Index, starts at 1 when switching or starting game
			if TankingTP_ind > #sets.TankingTP.index then TankingTP_ind = 1 end 
			windower.add_to_chat('TankingTP Set changed to ' .. sets.TankingTP.index[TankingTP_ind] ..'') --, Sends a message ingame, not visible to others.
			if player.status == 'Engaged' then
				equip(sets.TankingTP[sets.TankingTP.index[TankingTP_ind]])
			end
		elseif TankingTP == false then
			if TwoHandedTP == true then
				TwoHandedTP_ind = TwoHandedTP_ind + 1
				if TwoHandedTP_ind > #sets.TwoHandedTP.index then TwoHandedTP_ind = 1 end
				windower.add_to_chat('2H TP Set changed to ' .. sets.TwoHandedTP.index[TwoHandedTP_ind] ..'')
				if player.status == 'Engaged' then
						equip(sets.TwoHandedTP[sets.TwoHandedTP.index[TwoHandedTP_ind]])
					end
				end
			end		
		end
	if command == 'toggle TankingTP set' then
		TankingTP_ind = TankingTP_ind + 1
		if TankingTP_ind > #sets.TankingTP.index then TankingTP_ind = 1 end
		windower.add_to_chat('TankingTP Set changed to ' .. sets.TankingTP.index[TankingTP_ind] ..'')
		if player.status == 'Engaged' then
			equip(sets.TankingTP[sets.TankingTP.index[TankingTP_ind]])
		end
	elseif command == 'toggle TankingTP' then
		if TankingTP == true then
			TankingTP = false
			windower.add_to_chat('<----- Tanking TP: [Off] ----->')
        else
			TankingTP = true
			windower.add_to_chat('<----- Tanking TP: [On] ----->')
		end
		status_change(player.status)
	elseif command == 'toggle TwoHandedTP' then
		if TwoHandedTP == true then
			TwoHandedTP = false
			windower.add_to_chat('<----- 2H TP: [Off] ----->')
        else
			TwoHandedTP = true
			windower.add_to_chat('<----- 2H TP: [On] ----->')
		end
		status_change(player.status)
	end
	if command == 'toggle run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Movement is now: '..Run_Set_Names[Run_Index])
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH mode is now: '..TH_Set_Names[TH_Index])
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
        Buff_Index = Buff_Index +1
    if Buff_Index > #Buff_Set_Names then Buff_Index = 1 end
        windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
        equip(sets.buff[Buff_Set_Names[Buff_Index]])
    end
	if command == 'toggle Emergency MEVA' then
        windower.add_to_chat('Equipping Emergency MEVA/DT')
		equip(sets.MEVA)
	end
	if buffactive['Battuta'] then
		if TwoHandedTP == true then
			equip(sets.TwoHandedTP.Inquartata)
		end
	end
end

--windower.add_to_chat('DT mode is now: '..DT_mode)


function file_unload() --, Unbinds defined keybinds when changing jobs, can also use "send_command('clearbinds')" to wipe any and all
send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind !numpad1')
send_command('unbind !numpad0')
end
