function get_sets()
	send_command('bind f9 gs c toggle TP set') --This means if you hit f9 it toggles the sets
	send_command('bind !f9 gs c toggle TankingTP') --! turns tanking tp off
	send_command('bind f10 gs c toggle run set') 
	send_command('bind f12 gs c toggle TH set') 
	send_command('bind f7 gs c toggle Weapons set') 
	send_command('bind !f7 gs c toggle Sub_Weapons set') 
	send_command('bind numpad1 gs c toggle Buff set') -- F12 = Cycle through
	Melee_Index = 1
	DT_Index = 1
	Run_Index = 1
	TH_Index = 1
	Weapons_Index = 1
	Sub_Weapons_Index = 1	
	Buff_Index = 1	

	Weapons_Set_Names = {'Zantetsuken X','Aettir'}
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

	sets.TwoHandedTP.Normal = { -- 26TA, 30DA Temper+20-25 - 50-55DA, Embolden +10-12, 60-67DA, -22PDT, -4MDT
    ammo="Yamarang",
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
	legs="Meghanada Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Anu Torque",
    waist="Ioskeha Belt +1",
    --waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear="Cessance Earring",
    left_ring="Epona's Ring",
    right_ring="Moonbeam Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	sets.TwoHandedTP.Hybrid = { -- 11TA, 30DA Temper+20-25 - 50-55DA, Embolden +10-12, 60-67DA, -26PDT, -16MDT, +11 Inquartata, missing ambu cape
    ammo="Yamarang",
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Turms Leggings +1",
    neck="Elite Royal Collar",
    waist="Ioskeha Belt +1",
    left_ear="Sherida Earring",
    right_ear="Cessance Earring",
    left_ring="Epona's Ring",
    right_ring="Moonbeam Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.TwoHandedTP.Inquartata = {
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Turms Leggings +1",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.TankingTP = {}
	sets.TankingTP.index = { 'DT','Parry'}
	TankingTP_ind = 1
	
	sets.TankingTP.DT = { --, -50PDT, -42MDT
    ammo="Staunch Tathlum",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Erilaz Gauntlets +2",
    legs="Erilaz Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Warder's Charm",
    waist="Ioskeha Belt +1",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Moonbeam Ring",
    left_ring="Moonbeam Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	sets.TankingTP.Parry = { --, -36PDT, -24MDT, +11 Inquartata, missing ambu cape
    ammo="Staunch Tathlum",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Turms Leggings +1",
    neck="Unmoving Collar +1",
    waist="Ioskeha Belt +1",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Moonbeam Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.TankingTP.Inquartata = {
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Turms Leggings +1",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	
	Run_Set_Names = {'Refresh'}
	sets.run = {}
	sets.run.Refresh =  {
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
    left_ring="Epona's Ring",
    right_ring="Defending Ring",
    back="Moonbeam Cape",
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
	sets.ws['Resolution']	= {
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
    left_ring="Epona's Ring",
    right_ring="Sroda Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Spinning Slash']	= {
    ammo="Knobkierrie",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
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
    left_ring="Epona's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Ground Strike']	= {
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
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}	
	sets.ws['Dimidiation']	= {
    ammo="Knobkierrie",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ilabrat Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}

	sets.ws['Savage Blade']	= {
    ammo="Knobkierrie",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
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
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona's Ring",
    right_ring="Refuscent Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	
	sets.ws['Sanguine Blade']	= {
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
    left_ring="Epona's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	sets.ws['Steel Cyclone']	= {
    ammo="Knobkierrie",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	sets.ws['Fell Cleave']	= {
    ammo="Knobkierrie",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona's Ring",
    right_ring="Refuscent Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	sets.ws['Armor Break']	= {
    ammo="Knobkierrie",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona's Ring",
    right_ring="Refuscent Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Decimation']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
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
	sets.ja.Enmity = {
    head="Runeist Bandeau +2", --0
    body="Emet Harness", --9
	hands="Erilaz Gauntlets +2", --0
    legs="Erilaz Leg Guards +2", --12
    feet="Erilaz Greaves +2", --8
    neck="Unmoving Collar +1", --10
    waist="Flume Belt", --0
    left_ear="Friomisi Earring", --2
    right_ear="Eris' Earring", --2
    left_ring="Supershear Ring", --5
    right_ring="Provocare Ring", --5
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Enmity+10',}}, --10
	}
		
	sets.ja['Vallation'] = set_combine(sets.ja.Enmity, {
	body="Runeist Coat +1",
	legs="Futhark Trousers +1",
	})
	sets.ja['Embolden'] = set_combine(sets.ja.Enmity, {
	body="Runeist Coat +1",
	legs="Futhark Trousers +1",
    back={ name="Evasionist's Cape", augments={'Enmity+4','"Embolden"+15','"Dbl.Atk."+1',}},
	})
	sets.ja['Valiance'] = set_combine(sets.ja.Enmity, {
	body="Runeist Coat +1",
	legs="Futhark Trousers +1",
	})
	sets.ja['Vivacious Pulse'] = {
    head="Erilaz Galea +2",
    body="Runeist Coat +1",
	hands="Erilaz Gauntlets +2",
    feet="Erilaz Greaves +2",
    neck="Unmoving Collar +1",
	legs="Runeist Trousers +1",
    waist="Platinum Moogle Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	}
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
	sets.ja['One for All'] = {
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
	sets.idle.normal = {
    ammo="Homiliary",
    head="Rawhide Mask",
    body="Runeist Coat +1",
    hands="Erilaz Gauntlets +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Erilaz Greaves +2",
    neck="Sibyl Scarf",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear="Cessance Earring",
    left_ring="Epona's Ring",
    right_ring="Defending Ring",
    back="Moonbeam Cape",
	}
	
	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = {
    ammo="Impatiens",
    head="Runeist Bandeau +2",
    body="Erilaz Surcoat +2",
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs="Aya. Cosciales +2",
    feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}},
    neck="Voltsurge Torque",
    waist="Siegel Sash",
    left_ear="Loquacious Earring",
    right_ear="Magnetic Earring",
    left_ring="Kishar Ring",
    right_ring="Lebeche Ring",
    back={ name="Ogma's Cape", augments={'"Fast Cast"+10',}},
	} 
	sets.precast.enhancing = {
    ammo="Impatiens",
    head="Runeist Bandeau +2",
    body="Erilaz Surcoat +2",
    hands={ name="Taeon Gloves", augments={'"Fast Cast"+5','Phalanx +3',}},
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}},
    feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}},
    neck="Enhancing Torque",
    waist="Siegel Sash",
    left_ear="Loquacious Earring",
    right_ear="Magnetic Earring",
    left_ring="Kishar Ring",
    right_ring="Lebeche Ring",
    back={ name="Ogma's Cape", augments={'"Fast Cast"+10',}},
	}

    sets.midcast = {}               -- leave this empty  
	sets.midcast.enmity = {
    head="Runeist Bandeau +2", --0
    body="Emet Harness", --9
	hands="Erilaz Gauntlets +2", --0
    legs="Erilaz Leg Guards +2", --12
    feet="Erilaz Greaves +2", --8
    neck="Unmoving Collar +1", --10
    waist="Flume Belt", --0
    left_ear="Friomisi Earring", --2
    right_ear="Eris' Earring", --2
    left_ring="Supershear Ring", --5
    right_ring="Provocare Ring", --5
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Enmity+10',}}, --10
	}
	sets.midcast.regen = {	
	ammo="Staunch Tathlum",
    head="Runeist Bandeau +2",
    body={ name="Taeon Tabard", augments={'"Regen" potency+3',}},
    hands={ name="Taeon Gloves", augments={'"Cure" potency +5%','"Regen" potency+3',}},
    --legs={ name="Taeon Tights", augments={'"Regen" potency+3',}},
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}},	
    feet={ name="Taeon Boots", augments={'"Regen" potency+3',}},
    neck="Sacro Gorget",
    waist="Sroda Belt",
    left_ear="Magnetic Earring",
    right_ear={ name="Erilaz Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	}	
	sets.midcast.phalanx = {	
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
	sets.midcast.enhancingduration = {	
	ammo="Staunch Tathlum",
    head="Erilaz Galea +2",
    body="Runeist Coat +1",
    hands="Runeist Mitons",
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}},
    feet="Aya. Gambieras +2",
    neck="Melic Torque",
	waist="Olympus Sash",
    left_ear="Augmenting Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	}
	sets.midcast.enhancingskill = {	
	ammo="Staunch Tathlum",
    head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
    body="Runeist Coat +1",
    hands="Runeist Mitons",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Aya. Gambieras +2",
    neck="Melic Torque",
	waist="Olympus Sash",
    left_ear="Augmenting Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	}
	sets.midcast.refresh = {	
	ammo="Staunch Tathlum",
    head="Erilaz Galea +2",
    body="Runeist Coat +1",
    hands="Runeist Mitons",
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}},
    feet="Aya. Gambieras +2",
    neck="Elite Royal Collar",
    waist="Gishdubar Sash",
    left_ear="Sherida Earring",
    right_ear="Magnetic Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	}
	sets.midcast.sird = {	
    ammo="Impatiens",
	head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Rawhide Gloves",
    legs="Carmine Cuisses +1",
    feet="Erilaz Greaves +2",
    neck="Willpower Torque",
    waist="Resolute Belt",
    left_ear="Halasz Earring",
    right_ear="Magnetic Earring",
    left_ring="Stikini Ring +1",
    right_ring="Evanescence Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Enmity+10',}},
	}	
    sets.midcast.MACC = {	
    ammo="Impatiens",
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
	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring",
    right_ring="Purity Ring",
	}

	sets.buff.Inquartata = {
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Turms Leggings +1",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	ElementalGear = {}
	ElementalGear.Ring = "Archon Ring"
	ElementalGear.Head = "Pixie Hairpin +1"
	sets.midcast.Darknuke = {head=ElementalGear.Head,right_ring=ElementalGear.Ring}
	
	sets.adoulin = {}
	sets.adoulin.movement = {body="Councilor's Garb",}   --auto swaps when in adoulin 
 

end

function precast(spell)

    if  spell.type == 'JobAbility' then
        equip(sets.ja.enmity)
    end	
    if  spell.action_type == 'Magic' then
        equip(sets.precast.fastcast)
	end 
	if spell.skill == 'Enhancing Magic' then		
		equip(sets.precast.enhancing)
	end
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])
	end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])        
    end
	if buffactive['Tenebrae'] and spell.name:match('Lunge') or spell.name:match('Swipe')then
        equip(sets.ja.Dark)
    end
	if buffactive['Lux'] and spell.name:match('Lunge') or spell.name:match('Swipe')then
        equip(sets.ja.Light)
    end
end


function midcast(spell)
	if spell.name:match('Refresh') then
		equip(sets.midcast.refresh)
	end
	if spell.skill == 'Enhancing Magic' then
		equip(sets.midcast.enhancingduration)
	end
	if spell.name == 'Temper' or spell.name:match('Bar') then
		equip(sets.midcast.enhancingskill)
	end
	if spell.name:match('Regen') then
		equip(sets.midcast.regen)
	end	
	if spell.name:match('Phalanx') then
		equip(sets.midcast.phalanx)
	end
	if spell.name =='Flash' or spell.name =='Foil'or spell.name =='Crusade' or spell.name =='Stun' or spell.name:match('Poison') or spell.name:match('Absorb') then  
		equip(sets.midcast.enmity)
			if player.status == "Engaged" then
			equip(sets.midcast.sird)
		end
	end
	if buffactive['Tenebrae'] and spell.name:match('Lunge') or spell.name:match('Swipe')then
        equip(sets.ja.Dark)
    end
	if buffactive['Lux'] and spell.name:match('Lunge') or spell.name:match('Swipe')then
        equip(sets.ja.Light)
    end
end

function aftercast(spell)
	idle()
end

function buff_change(buff,gain)
    if buff == 'Reive Mark' then
        if gain then
            equip(sets.buff.reive)
            disable("neck")
        else
            enable("neck")
            equip(sets.idle.normal)
        end
	end
    --Embolden cape lock--
    if buff == 'Embolden' then
        if gain then 
            equip(sets.ja['Embolden'])
            disable('head','legs','back')
            add_to_chat(158,'[Embolden] ON -- Back Locked')
        else
            enable('head','legs','back')
            add_to_chat(123,'[Embolden] OFF -- Back Unlocked')
            status_change(player.status)
        end
    end
    if buff == 'Battuta' then
		if buffactive['Battuta'] then
			equip(sets.TankingTP.Inquartata)
	else
		idle()
	end
end
end

function idle()
	if player.status =="Engaged" then
		if TankingTP == true then
			equip(sets.TankingTP[sets.TankingTP.index[TankingTP_ind]])
		elseif TwoHandedTP == true then
			equip(sets.TwoHandedTP[sets.TwoHandedTP.index[TwoHandedTP_ind]])
	end
end
	if player.status=='Engaged' then 
		if buffactive['Battuta'] then
			equip(sets.TankingTP.Inquartata)
		end
	end
	if player.status =='Idle' then
		equip(sets.idle.normal)
	end
end


function status_change(new,old)
	idle()
end

TankingTP = true -- If true, default set is tanking TP array.
TwoHandedTP = true -- TP set order, looks for Tanking TP set before 2H TP

function self_command(command)
	if command == 'toggle TP set' then
		if TankingTP == true then
			TankingTP_ind = TankingTP_ind + 1
			if TankingTP_ind > #sets.TankingTP.index then TankingTP_ind = 1 end
			windower.add_to_chat('TankingTP Set changed to ' .. sets.TankingTP.index[TankingTP_ind] ..'')
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
end

--windower.add_to_chat('DT mode is now: '..DT_mode)


function file_unload()
send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind numpad1')
end
