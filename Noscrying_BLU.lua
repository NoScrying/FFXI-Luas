function get_sets()
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind f10 gs c toggle refresh set') -- F9 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F12 = Cycle through
	send_command('bind f7 gs c toggle Sword set') -- F12 = Cycle through
	send_command('bind !f7 gs c toggle Buff set')
	Melee_Index = 1
	Refresh_Index= 1
	TH_Index = 1
	Sword_Index = 1
	Buff_Index = 1

	Melee_Set_Names = {'normal','Hybrid'}--,'DT'
	sets.melee = {} 					-- Leave this empty.
	sets.melee.normal = {
    ammo="Coiste Bodhar",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Herculean Trousers", augments={'Accuracy+28','"Triple Atk."+4','AGI+5',}},
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Mirage Stole +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Crep. Earring",
    right_ear="Suppanomimi",
    left_ring="Chirich Ring +1",
    right_ring="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.melee.DT = {
    ammo="Coiste Bodhar",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Warder's Charm +1",
    waist="Carrier's Sash",
    left_ear="Crep. Earring",
    right_ear="Cessance Earring",
    left_ring="Archon Ring",
    right_ring="Defending Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.melee.Hybrid = {
    ammo="Crepuscular Pebble",
    head="Malignance Chapeau",
    body="Hashishin Mintan +2",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Nyame Sollerets",
    neck="Mirage Stole +1",
    waist="Shetal Stone",
    left_ear="Crep. Earring",
    right_ear="Suppanomimi",
    left_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    right_ring="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	Refresh_Set_Names = {'battle'}
	sets.refresh = {}
	sets.refresh.battle = {
    ammo="Staunch Tathlum +1",
    head="Gleti's Mask",
    body="Hashishin Mintan +2",
    hands="Gleti's Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Gleti's Boots",
    neck="Sibyl Scarf",
    waist="Flume Belt",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear="Suppanomimi",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	TH_Set_Names = {'TH3'}
	sets.TH = {}
	sets.TH.TH3 = {
	ammo="Perfect Lucky Egg",
    head="White Rarab Cap +1",
    body="Hashishin Mintan +2",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},	
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Herculean Boots", augments={'"Dual Wield"+1','Attack+5','"Treasure Hunter"+1',}},
    neck="Mirage Stole +1",
    waist="Chaac Belt",
    left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    left_ring="Ilabrat Ring",
    right_ring="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	Sword_Set_Names = {'TP_Bonus', 'Sakpata','Zantetsuken'}
	sets.Sword = {}
	sets.Sword.Sakpata = {
	sub="Sakpata's Sword",
	}
	sets.Sword.TP_Bonus = {
	sub="Machaera +2",
	}
	sets.Sword.Zantetsuken = {
	sub="Zantetsuken",
	}
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws['Savage Blade']	= {
    ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +2",
    body="Gleti's Cuirass",
    hands="Jhakri Cuffs +2",
    legs="Gleti's Breeches",
    feet="Gleti's Boots",
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
	}


	sets.ws['Expiacion']	= {
    ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +2",
    body="Gleti's Cuirass",
    hands="Jhakri Cuffs +2",
    legs="Gleti's Breeches",
    feet="Gleti's Boots",
    neck="Mirage Stole +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Ilabrat Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
	}
	
	sets.ws['Circle Blade']	= {
	ammo="Oshasha's Treatise",
        head="Hashishin Kavuk +2",
    body="Jhakri Robe +2",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Mirage Stole +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Ilabrat Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
	}
	
	sets.ws['Chant du Cygne']	= {
    ammo="Coiste Bodhar",
    head="Adhemar Bonnet +1",
    body="Gleti's Cuirass",
	hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet="Gleti's Boots",
    neck="Mirage Stole +1",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Ilabrat Ring",
    right_ring="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Requiescat']	= {
    ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +2",
    body="Hashishin Mintan +2",
    hands="Hashi. Bazu. +2",
    legs="Hashishin Tayt +2",
    feet="Aya. Gambieras +2",
    neck="Mirage Stole +1",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Rufescent Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
	}
	
	sets.ws['Sanguine Blade']	= {
    ammo="Ghastly Tathlum +1",
    head="Pixie Hairpin +1",
    body="Hashishin Mintan +2",
    hands="Hashi. Bazu. +2",
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Archon Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
	}
	sets.ws['Flash Nova']	= {
	ammo="Oshasha's Treatise",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body="Hashishin Mintan +2",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Weatherspoon Ring +1",
    right_ring="Epaminondas's Ring",
    back="Seshaw Cape",
	}
	sets.ws['Black Halo']	= {
	ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +2",
    body="Hashishin Mintan +2",
    hands="Jhakri Cuffs +2",
    legs="Hashishin Tayt +2",
    feet="Jhakri Pigaches +2",
    neck="Mirage Stole +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
	}
	sets.ws['Judgment']	= {
    ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +2",
    body="Gleti's Cuirass",
    hands="Jhakri Cuffs +2",
    legs="Gleti's Breeches",
    feet="Gleti's Boots",
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
	}
	
	sets.ja = {} 					-- Leave this empty.
	sets.ja['Diffusion'] = {
	feet="Luhlaza Charuqs",
	}
	sets.ja['Efflux'] = {
    legs="Hashishin Tayt +2",
	}	
	sets.ja['Chain Affinity'] = {
    head="Hashishin Kavuk +2",
	}
	sets.ja['Steal'] = {
    head="White Rarab Cap +1",
	ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
	}
	sets.ja['Mug'] = {
    head="White Rarab Cap +1",
	}

	Buff_Set_Names = {'Phalanx','Holywater'}	
	sets.Buff = {} 					-- Leave this empty.
	sets.Buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.Buff.Phalanx = {	
    head={ name="Taeon Chapeau", augments={'"Fast Cast"+5','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
	}

	sets.Buff.Diffusion = {
	feet="Luhlaza Charuqs",	
	}
	sets.Buff.Efflux = {
	feet="Luhlaza Charuqs",	
	}
	sets.Buff.ChainAffinity = {
	legs="Hashishin Kavuk +1",
	}
	
	Idle_Set_Names = {'Normal'}
	sets.idle = {} 					-- Leave this empty.
	
	sets.precast = {}               -- leave this empty
	sets.precast.bluFC = {
	ammo="Impatiens",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Pinga Tunic",	
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --8
    legs="Pinga Pants",
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    waist="Witful Belt",
    neck="Voltsurge Torque",
    right_ear="Loquacious Earring",
	left_ear="Enchanter's Earring +1",
    left_ring="Kishar Ring",
    right_ring="Weatherspoon Ring +1",
    back="Ogapepo Cape",
	}
	sets.precast.magicFC = {
	ammo="Impatiens",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Pinga Tunic",	
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --8
    legs="Pinga Pants",
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    waist="Witful Belt",
    neck="Voltsurge Torque",
    right_ear="Loquacious Earring",
	left_ear="Enchanter's Earring +1",
    left_ring="Kishar Ring",
    right_ring="Weatherspoon Ring +1",
    back="Ogapepo Cape",
	}
	
    sets.midcast = {}               -- leave this empty  
	sets.midcast.elemental = {
	-- ammo="Perfect Lucky Egg",
	-- head="White Rarab Cap +1",
    -- feet={ name="Herculean Boots", augments={'"Dual Wield"+1','Attack+5','"Treasure Hunter"+1',}},
	-- waist="Chaac Belt",
	
	ammo="Mavi Tathlum",
    head="Hashishin Kavuk +2",
    waist="Orpheus's Sash",
    feet="Jhakri Pigaches +2",
	
    body="Hashishin Mintan +2",
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs="Hashishin Tayt +2",
    neck="Sibyl Scarf",
    left_ear="Friomisi Earring",
    right_ear="Regal Earring",
    left_ring="Jhakri Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
	}
	sets.midcast.pixie = {
	ammo="Mavi Tathlum",
	head="Pixie Hairpin +1",
    body="Hashishin Mintan +2",
	hands="Hashishin Bazubands +2",
    legs="Hashishin Tayt +2",
    feet="Jhakri Pigaches +2",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear="Regal Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Archon Ring",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
	}	
	sets.midcast.physical = {
    ammo="Mavi Tathlum",
    head="Hashishin Kavuk +2",
    body="Hashishin Mintan +2",
	hands="Hashishin Bazubands +2",
    legs="Hashishin Tayt +2",
    feet="Jhakri Pigaches +2",
    neck="Mirage Stole +1",
    waist="Eschan Stone",
    left_ear="Njordr Earring",
    right_ear="Hashishin Earring +1",
    left_ring="Stikini Ring +1",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Cornflower Cape", augments={'MP+21','DEX+1','Blue Magic skill +10',}},
	}
	sets.midcast.Occultation = {
    ammo="Mavi Tathlum",
    head="Luhlaza Keffiyeh",
    body="Hashishin Mintan +2",
	hands="Hashishin Bazubands +2",
    legs="Hashishin Tayt +2",
    feet="Luhlaza Charuqs",
    neck="Mirage Stole +1",
    waist="Eschan Stone",
    left_ear="Njordr Earring",
    right_ear="Hashishin Earring +1",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Cornflower Cape", augments={'MP+21','DEX+1','Blue Magic skill +10',}},
	}
	
	sets.midcast.magicacc = {
    ammo="Mavi Tathlum",
    head="Hashishin Kavuk +2",
    body="Hashishin Mintan +2",
	hands="Hashishin Bazubands +2",
    legs="Hashishin Tayt +2",
    feet="Malignance Boots",
    neck="Erra Pendant",
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Regal Earring",
    right_ear="Hashishin Earring +1",
    left_ring="Stikini Ring +1",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}
	
	sets.midcast.cure = {
	ammo="Staunch Tathlum",
	head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
	waist="Gishdubar Sash",
    neck="Phalaina Locket",
    left_ear="Halasz Earring",
    right_ear="Magnetic Earring",
	left_ring="Kunaji Ring",
    right_ring="Menelaus's Ring",
    back="Tempered Cape +1",
	}

	sets.midcast.refresh = {
	ammo="Staunch Tathlum",
    head="Amalric Coif",
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
     legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
	waist="Gishdubar Sash",
    neck="Mirage Stole +1",
    left_ear="Halasz Earring",
    right_ear="Magnetic Earring",
    back={ name="Cornflower Cape", augments={'MP+21','DEX+1','Blue Magic skill +10',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
	}

	sets.midcast.enhancingduration = {
	ammo="Staunch Tathlum",
	head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
     legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
	waist="Gishdubar Sash",
    neck="Mirage Stole +1",
    left_ear="Andoaa Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Merciful Cape",
	}
	sets.midcast.phalanx = {
	ammo="Staunch Tathlum",
    head={ name="Taeon Chapeau", augments={'"Fast Cast"+5','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    neck="Melic Torque",
	waist="Olympus Sash",
    left_ear="Andoaa Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Merciful Cape",
	}

	sets.midcast.regen = { --72 SIRD, +15 Regen
	ammo="Staunch Tathlum", 
    head={ name="Taeon Chapeau", augments={'Mag. Evasion+16','Spell interruption rate down -9%','"Regen" potency+3',}},
    body={ name="Taeon Tabard", augments={'Mag. Evasion+19','Spell interruption rate down -9%','"Regen" potency+3',}},
    hands={ name="Taeon Gloves", augments={'Mag. Evasion+15','Spell interruption rate down -10%','"Regen" potency+3',}},
    legs={ name="Taeon Tights", augments={'Mag. Evasion+17','Spell interruption rate down -9%','"Regen" potency+3',}},
    feet={ name="Taeon Boots", augments={'Mag. Evasion+18','Spell interruption rate down -9%','"Regen" potency+3',}},
	waist="Resolute Belt",
    neck="Mirage Stole +1",
    left_ear="Magnetic Earring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
	}


	ElementalGear = {}
	ElementalGear.Obi = "Hachirin-no-Obi"
	ElementalGear.Cape = "Twilight Cape"
	ElementalGear.Ring = "Archon Ring"
	ElementalGear.Head = "Pixie Hairpin +1"
	sets.midcast.CureWithLightWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}
	sets.midcast.NukeWithMatchingWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}	
	
    sets.aftercast = {}             -- leave this empty
	
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
end

function precast(spell)
    if  spell.skill == 'Blue Magic' then
        equip(sets.precast.bluFC)
	elseif spell.action_type == 'Magic' then
		equip(sets.precast.magicFC)
	end
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])
	end
	if sets.ws[spell.name] then
        equip(sets.ws[spell.name])        
    end         
end

function midcast(spell)
    if  spell.action_type == 'Magic' then
		equip(sets.melee.DT)
	end
	if spell.name:match('Occultation') then
		equip(sets.midcast.Occultation)
	end
    if spell.name:match('Magic Fruit') or spell.name:match('White Wind') or spell.name:match('Protect') or spell.name:match('Shell') or spell.name:match('Cure') then
        equip(sets.midcast.cure)
	end
	if spell.name:match('Battery Charge') or spell.name:match('Refresh') or spell.name:match('Aquaveil')then
		equip(sets.midcast.refresh)
	end
	if spell.name:match('Regeneration') or spell.name:match('Regen') then
		equip(sets.midcast.regen)
	end
	if spell.name:match('Sinker Drill') or spell.name:match('Heavy Strike') or spell.name:match('Thrashing Assault') or spell.name:match('Empty Thrash')then
        equip(sets.midcast.physical)
	end

	if spell.name:match('storm') or spell.name:match('Ice Spikes') or spell.name:match('En')  or spell.name:match('Bar')or spell.name:match('Protect')or spell.name:match('Shell')then
		equip(sets.midcast.enhancingduration)	
	elseif spell.name:match('Subduction') or spell.name:match('Spectral Floe') or spell.name:match('Stone II')  or spell.name:match('Magic Hammer') or spell.name:match('Retinal Glare')or spell.name:match('Entomb')or spell.name:match('Blinding Fulgor') or spell.name:match('Dia') then
        equip(sets.midcast.elemental)
	elseif spell.name:match('Jettatura') or spell.name:match('Absolute Terror') or spell.name:match('Osmosis') or spell.name:match('Blank Gaze') or spell.name:match('Geist Wall') or spell.name:match('Tourbillion')or spell.name:match('Sudden Lunge')or spell.name:match('Dream Flower') or spell.name:match('Sheep Song')or spell.name:match('Cruel Joke')or spell.name:match('Dispel')or spell.name:match('Whirl of Rage')or spell.name:match('Chaotic Eye')or spell.name:match('Feather Tickle') or spell.name =='Reaving Wind'then
		equip(sets.midcast.magicacc)
	end
	if spell.name:match('Tenebral Crush') or spell.name:match('Eyes On Me')then
		equip(sets.midcast.pixie)
		    if world.weather_element == spell.element or world.day_element == spell.element then
				equip(sets.midcast.NukeWithMatchingWeather)
					end
	end
	if spell.name:match('Phalanx') then
		equip(sets.midcast.phalanx)
	end
    if spell.action_type == 'Magic' then
        if spell.name:match('Subduction') or spell.name:match('Spectral Floe') or spell.name:match('Magic Hammer') or spell.name:match('Retinal Glare')or spell.name:match('Entomb')or spell.name:match('Blinding Fulgor') then
			equip(sets.midcast.elemental)
            equip(sets.midcast['Elemental Magic'])
            if world.weather_element == spell.element or world.day_element == spell.element then
                equip(sets.midcast.NukeWithMatchingWeather)
				end
			        elseif spell.skill == 'Healing Magic' and spell.english:startswith('Cur') and spell.english ~= 'Cursna' then
						equip(sets.midcast.cure)
						if world.weather_element == spell.element or world.day_element == spell.element then
						equip(sets.midcast.CureWithLightWeather)
				end
			end
		end
	if spell.skill == 'Elemental Magic' then
        equip(sets.midcast.elemental)
			if world.weather_element == spell.element or world.day_element == spell.element then
				equip(sets.midcast.NukeWithMatchingWeather)
					end
	end
	if spell.name:match('Diaga') then
		equip (sets.TH.TH3)
	end
end


function aftercast(spell)
	 idle()
end

function buff_change(buff,gain)
    if buff == 'Reive Mark' then
        if gain then
            equip(sets.Buff.reive)
            disable("neck")
        else
            enable("neck")
        end
    end
    if buff == 'Diffusion' then
        if gain then
            equip(sets.ja['Diffusion'])
            disable("feet")
        else
            enable("feet")
            status_change(player.status)
        end
    end
    if buff == 'Efflux' then
        if gain then
            equip(sets.ja['Efflux'])
            disable("legs")
        else
            enable("legs")
            status_change(player.status)
        end
    end
    if buff == 'Chain Affinity' then
        if gain then
            equip(sets.ja['Chain Affinity'])
            disable("head")
        else
            enable("head")
            status_change(player.status)
        end
    end
end

function idle()
    if player.status=='Engaged' then
        equip(sets.melee[Melee_Set_Names[Melee_Index]]) 
	else
		equip(sets.refresh[Refresh_Set_Names[Refresh_Index]])
	end
end
function status_change(new,old)
	idle()
end

function self_command(command)
	if command == 'toggle melee set' then
        Melee_Index = Melee_Index +1
    if Melee_Index > #Melee_Set_Names then Melee_Index = 1 end
        windower.add_to_chat('TP mode is now: '..Melee_Set_Names[Melee_Index])
        equip(sets.melee[Melee_Set_Names[Melee_Index]])
    end
	if command == 'toggle refresh set' then
        Refresh_Index = Refresh_Index +1
    if Refresh_Index > #Refresh_Set_Names then Refresh_Index = 1 end
        windower.add_to_chat('Idle mode is now: '..Refresh_Set_Names[Refresh_Index])
        equip(sets.refresh[Refresh_Set_Names[Refresh_Index]])
    end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH4 equipped')
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
	if command == 'toggle Sword set' then
        Sword_Index = Sword_Index +1
    if Sword_Index > #Sword_Set_Names then Sword_Index = 1 end
        windower.add_to_chat('Naegling Sub Weapon is now: '..Sword_Set_Names[Sword_Index])
        equip(sets.Sword[Sword_Set_Names[Sword_Index]])
    end
	if command == 'toggle Buff set' then
        Buff_Index = Buff_Index +1
    if Buff_Index > #Buff_Set_Names then Buff_Index = 1 end
        windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
        equip(sets.Buff[Buff_Set_Names[Buff_Index]])
    end
end

function file_unload() --, Unbinds defined keybinds when changing jobs, can also use "send_command('clearbinds')" to wipe any and all
send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind ^f9')
send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind !numpad1')
send_command('unbind ^numpad1')
send_command('unbind !numpad0')
send_command('unbind !numpad7')
end
