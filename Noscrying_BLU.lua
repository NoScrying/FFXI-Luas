function get_sets()
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind f10 gs c toggle refresh set') -- F9 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F12 = Cycle through
	send_command('bind f7 gs c toggle Main set') -- F12 = Cycle through
	send_command('bind !f7 gs c toggle Sub set')
	send_command('bind !numpad1 gs c toggle Buff set') -- F12 = Cycle through
	Melee_Index = 1
	Refresh_Index= 1
	TH_Index = 1
	Main_Index = 1
	Sub_Index = 1
	Buff_Index = 1
	

	Melee_Set_Names = {'TP','DT','Hybrid:HasteII only'}--,
	sets.melee = {} 					-- Leave this empty.
	sets.melee.TP = {
    ammo="Coiste Bodhar",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Herculean Trousers", augments={'Accuracy+28','"Triple Atk."+4','AGI+5',}},
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Mirage Stole +1",
	waist="Sailfi Belt +1",
    left_ear="Cessance Earring",
    right_ear="Hashishin Earring +1",
    left_ring="Lehko's Ring",
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
	neck="Mirage Stole +1",
	waist="Kentarch Belt +1",
    left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    left_ring="Lehko's Ring",
	right_ring="Chirich Ring +1",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.melee["Hybrid:HasteII only"] = {
    ammo="Staunch Tathlum +1",
    head="Malignance Chapeau",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Malignance Gloves",
    --legs="Malignance Tights",	
    legs="Carmine Cuisses +1",
    feet="Malignance Boots",
	neck="Mirage Stole +1",
	waist="Shetal Stone",
    left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    left_ring="Lehko's Ring",
	right_ring="Chirich Ring +1",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	Refresh_Set_Names = {'Refresh',"Regain/DT","MEVA",}
	sets.refresh = {}
	sets.refresh.Refresh = {
    ammo="Staunch Tathlum +1",
    head="Gleti's Mask",
    body="Hashishin Mintan +2",
    hands="Gleti's Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Gleti's Boots",
    neck="Sibyl Scarf",
    waist="Flume Belt",
    left_ear="Eabani Earring",
    right_ear="Regal Earring",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 4"},
	right_ring={name = "Stikini Ring +1", bag = "Wardrobe 7"},
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.refresh["Regain/DT"] = {
    ammo="Staunch Tathlum +1",
    head="Gleti's Mask",
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Gleti's Boots",
    neck="Sibyl Scarf",
    waist="Flume Belt",
    left_ear="Eabani Earring",
    right_ear="Regal Earring",
    left_ring="Defending Ring",
	right_ring={name = "Stikini Ring +1", bag = "Wardrobe 7"},
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.refresh.MEVA = {
    ammo="Staunch Tathlum +1",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Malignance Boots",
    neck="Warder's Charm +1",
    waist="Carrier's Sash",
    left_ear="Eabani Earring",
    right_ear="Regal Earring",
    left_ring="Purity Ring",
	right_ring={name = "Stikini Ring +1", bag = "Wardrobe 7"},
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
	
	Sub_Set_Names = {'TP_Bonus', 'Sakpata','Zantetsuken',"Bunzi"}
	sets.Sub = {}
	sets.Sub.Sakpata = {
	sub="Sakpata's Sword",
	}
	sets.Sub.TP_Bonus = {
	sub="Machaera +2",
	}
	sets.Sub.Zantetsuken = {
	sub="Zantetsuken",
	}
	sets.Sub.Bunzi = {
	sub="Bunzi's Rod",
	}	
	
	Main_Set_Names = {'Maxentius', 'Naegling'}
	sets.Main = {}
	sets.Main.Naegling = {
	Main="Naegling",
	}
	sets.Main.Maxentius = {
	Main="Maxentius",
	}
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws['Savage Blade']	= {
    ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +2",
    --body="Gleti's Cuirass",
	body="Assim. Jubbah +2",
    hands="Jhakri Cuffs +2",
    legs="Luhlaza Shalwar +3",
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
    legs="Luhlaza Shalwar +3",
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
    hands="Jhakri Cuffs +2",
    legs="Luhlaza Shalwar +3",
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
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body="Gleti's Cuirass",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Gleti's Breeches",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist="Fotia Belt",
    left_ear="Odr Earring",
    right_ear={ name="Hashi. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','"Dbl.Atk."+3',}},
    left_ring="Lehko's Ring",
    right_ring="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Requiescat']	= {
    ammo="Coiste Bodhar",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Luhlaza Shalwar +3",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Hashishin Earring +1",
    left_ring="Sroda Ring",
    right_ring="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Sanguine Blade']	= {
    ammo="Ghastly Tathlum +1",
    head="Pixie Hairpin +1",
    body="Hashishin Mintan +2",
	hands="Hashishin Bazubands +2",
    legs="Luhlaza Shalwar +3",
    feet="Hashishin Basmak +2",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Archon Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back="Aurist's Cape +1",
	}
	sets.ws['Seraph Blade']	= {
	ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +2",
    body="Hashishin Mintan +2",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs="Luhlaza Shalwar +3",
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Weatherspoon Ring +1",
    right_ring="Epaminondas's Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
	}
	sets.ws['Red Lotus Blade']	= {
	ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +2",
    body="Hashishin Mintan +2",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs="Luhlaza Shalwar +3",
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
	}
	sets.ws['Realmrazer']	= {
    ammo="Coiste Bodhar",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Herculean Trousers", augments={'Accuracy+28','"Triple Atk."+4','AGI+5',}},
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Hashishin Earring +1",
    left_ring="Sroda Ring",
    right_ring="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Flash Nova']	= {
	ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +2",
    body="Hashishin Mintan +2",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs="Luhlaza Shalwar +3",
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
    body="Gleti's Cuirass",
    hands="Jhakri Cuffs +2",
    legs="Luhlaza Shalwar +3",
    feet="Gleti's Boots",
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
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
    legs="Luhlaza Shalwar +3",
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
	sets.precast.bluFC = { 	--, +8% QM, +75% FC
	ammo="Impatiens", 		--, +2% QM
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}}, --, 14%
    body="Pinga Tunic",		--, 13%
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --8%
    legs="Pinga Pants", 	--, 11%
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}}, --, 8%
    waist="Witful Belt", 	--, 3%
    neck="Voltsurge Torque",--, 4%
    right_ear="Loquacious Earring", --, 2%
	left_ear="Enchanter's Earring +1", --, 2%
    left_ring="Kishar Ring",--, 4%
    right_ring="Weatherspoon Ring +1", --, 6%, 4% QM
    back="Ogapepo Cape", 	--, 2% QM
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
	-- ammo="Perfect Lucky Egg", --, TH4
	-- head="White Rarab Cap +1",
    -- feet={ name="Herculean Boots", augments={'"Dual Wield"+1','Attack+5','"Treasure Hunter"+1',}},
	-- waist="Chaac Belt",
	

    head="Hashishin Kavuk +2",
    waist="Orpheus's Sash",
    feet="Hashishin Basmak +2",
	
	-- ammo="Staunch Tathlum +1", --, SIRD
    -- left_ear="Magnetic Earring",
    -- left_ring="Evanescence Ring",
	
	ammo="Ghastly Tathlum +1",
    left_ear="Friomisi Earring",
	left_ring="Arvina Ringlet +1",
	

	right_ear="Regal Earring",
	right_ring="Metamor. Ring +1",
    body="Hashishin Mintan +2",
	hands="Hashishin Bazubands +2",
    --legs="Luhlaza Shalwar +3",
	legs="Hashishin Tayt +2",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
	}
	sets.midcast.pixie = {
	ammo="Mavi Tathlum",
	head="Pixie Hairpin +1",
    body="Hashishin Mintan +2",
	hands="Hashishin Bazubands +2",
    --legs="Luhlaza Shalwar +3",
	legs="Hashishin Tayt +2",
    feet="Hashishin Basmak +2",
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
	body="Assim. Jubbah +2",
	hands="Hashishin Bazubands +2",
    legs="Hashishin Tayt +2",
    feet="Hashishin Basmak +2",
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
	body="Assim. Jubbah +2",
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
    feet="Hashishin Basmak +2",
    neck="Erra Pendant",
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Regal Earring",
    right_ear="Hashishin Earring +1",
    left_ring="Stikini Ring +1",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}
	
	sets.midcast.cure = {
    ammo="Staunch Tathlum +1",
    head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body="Pinga Tunic",
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    legs="Pinga Pants",
    feet="Nyame Sollerets",
    neck="Phalaina Locket",
    waist="Gishdubar Sash",
    left_ear="Halasz Earring",
    right_ear="Magnetic Earring",
    left_ring="Kunaji Ring",
    right_ring="Defending Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.HP = {
    ammo="Staunch Tathlum +1",
	head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body="Pinga Tunic",
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%',}},
    legs="Pinga Pants",
    feet="Nyame Sollerets",
    neck="Unmoving Collar +1",
    waist="Plat. Mog. Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Gelatinous Ring +1",
    right_ring="Eihwaz Ring",
    back="Moonbeam Cape",
	}
	sets.midcast.WhiteWind = {
	ammo="Staunch Tathlum +1",
	head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body="Pinga Tunic",
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%',}},
    legs="Pinga Pants",
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
	waist="Platinum Moogle Belt",
    neck="Unmoving Collar +1",
    left_ear="Tuisto Earring",
    right_ear="Odnowa Earring +1",
	left_ring="Kunaji Ring",
    right_ring="Gelatinous Ring +1",
    back="Moonbeam Cape",
	}
	sets.midcast.refresh = {
	ammo="Staunch Tathlum +1",
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
    head={ name="Taeon Chapeau", augments={'Spell interruption rate down -8%','Phalanx +3',}},
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
    if spell.name:match('Magic Fruit') or spell.name:match('Protect') or spell.name:match('Shell') or spell.name:match('Cure') or spell.name:match('Healing Breeze') then
        equip(sets.midcast.cure) --,(sets.midcast.HP)
	end
	if spell.name:match("White Wind") then
		equip(sets.midcast.WhiteWind)
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
	elseif spell.name:match('Subduction') or spell.name:match('Spectral Floe') or spell.name:match('Stone II') or spell.name:match('Retinal Glare')or spell.name:match('Entomb')or spell.name:match('Blinding Fulgor') or spell.name:match('Dia') or spell.name:match('Molting Plumage') or spell.name:match('Anvil Lightning') then
        equip(sets.midcast.elemental)
	elseif spell.name:match('Jettatura') or spell.name:match('Absolute Terror') or spell.name:match('Osmosis') or spell.name:match('Blank Gaze') or spell.name:match('Geist Wall') or spell.name:match('Tourbillion')or spell.name:match('Sudden Lunge')or spell.name:match('Dream Flower') or spell.name:match('Sheep Song')or spell.name:match('Cruel Joke')or spell.name:match('Dispel')or spell.name:match('Whirl of Rage')or spell.name:match('Chaotic Eye')or spell.name:match('Feather Tickle') or spell.name =='Reaving Wind' or spell.name:match('Magic Hammer') then
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
        if spell.name:match('Subduction') or spell.name:match('Spectral Floe') or spell.name:match('Stone II') or spell.name:match('Retinal Glare')or spell.name:match('Entomb')or spell.name:match('Blinding Fulgor') or spell.name:match('Dia') or spell.name:match('Molting Plumage') or spell.name:match('Anvil Lightning') then
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
	if command == 'toggle Main set' then
        Main_Index = Main_Index +1
    if Main_Index > #Main_Set_Names then Main_Index = 1 end
        windower.add_to_chat('Main Weapon is now: '..Main_Set_Names[Main_Index])
        equip(sets.Main[Main_Set_Names[Main_Index]])
    end
	if command == 'toggle Sub set' then
        Sub_Index = Sub_Index +1
    if Sub_Index > #Sub_Set_Names then Sub_Index = 1 end
        windower.add_to_chat('Sub Weapon is now: '..Sub_Set_Names[Sub_Index])
        equip(sets.Sub[Sub_Set_Names[Sub_Index]])
    end
	if command == 'toggle Buff set' then
        Buff_Index = Buff_Index +1
    if Buff_Index > #Buff_Set_Names then Buff_Index = 1 end
        windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
        equip(sets.buff[Buff_Set_Names[Buff_Index]])
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
