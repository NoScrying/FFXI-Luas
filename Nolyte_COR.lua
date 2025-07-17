function get_sets()
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind f7 gs c toggle Gun set') -- F9 = Cycle through
	send_command('bind f10 gs c toggle CP set') -- F12 = Cycle through
	send_command('bind !f7 gs c toggle Weapons set') -- F12 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F10 = Cycle through
	Melee_Index = 1
	Gun_Index = 1
	CP_Index = 1
	Weapons_Index = 1
	TH_Index = 1

	sets["WarpRing"] = {
	left_ring= "Warp Ring"
	}
	sets["DemRing"] = {
	left_ring= "Dim. Ring (Dem)"
	}
	
	sets.ranged = {}
	sets.ranged.normal = {
    ammo="Eminent Bullet",
    range={ name="Compensator", augments={'DMG:+15','Rng.Atk.+15','"Mag.Atk.Bns."+15',}},
    ammo="Eminent Bullet",
    head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Mummu Kecks +2",
    feet="Meg. Jam. +2",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Ilabrat Ring",
    right_ring="Defending Ring",
    back="Null Shawl",
}
	sets.ranged.precast = {
    ammo="Eminent Bullet",
    range={ name="Compensator", augments={'DMG:+15','Rng.Atk.+15','"Mag.Atk.Bns."+15',}},
    ammo="Eminent Bullet",
    head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Mummu Kecks +2",
    feet="Meg. Jam. +2",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Ilabrat Ring",
    right_ring="Defending Ring",
    back="Null Shawl",
}

	Melee_Set_Names = {'Crits','Hybrid',}--, 'Crit',, 'DT
	sets.melee = {}                 -- Leave this empty
	sets.melee.Crits = {
	range="Compensator",
	ammo="Eminent Bullet",
    head="Blistering Sallet +1",
    body="Mummu Jacket +2",
    hands="Mummu Wrists +2",
    legs="Mummu Kecks +2",
    feet="Mummu Gamash. +2",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Ilabrat Ring",
    right_ring="Defending Ring",
    back="Null Shawl",
}
	sets.melee.DT = {
    ammo="Eminent Bullet",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Null Loop",
    waist="Shetal Stone",
    left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    left_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    right_ring="Defending Ring",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	sets.melee.Hybrid = {
	range="Compensator",
    ammo="Eminent Bullet",
    head="Null Masque",
    body="Mummu Jacket +2",
    hands="Mummu Wrists +2",
    legs="Meg. Chausses +2",
    feet="Mummu Gamash. +2",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Ilabrat Ring",
    right_ring="Defending Ring",
    back="Null Shawl",
	}
	sets.melee.Crit = {	
    ammo="Eminent Bullet",
    head="Blistering Sallet +1",
    body="Sayadio's Kaftan",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Null Loop",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Odr Earring",
    right_ear="Suppanomimi",
    left_ring="Lehko's Ring",
    right_ring="Epona's Ring",
    back="Null Shawl",
	}
	sets.melee.Kite = {
	ammo="Eminent Bullet",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Nyame Sollerets",
    neck="Warder's Charm +1",
    waist="Carrier's Sash",
    left_ear="Crep. Earring",
    right_ear="Suppanomimi",
    left_ring="Purity Ring",
    right_ring="Defending Ring",
    back="Null Shawl",
	}

	TH_Set_Names = {'TH'}
	sets.TH = {}
	sets.TH.TH = {
    head="White Rarab Cap +1",
    waist="Chaac Belt",
    feet={ name="Herculean Boots", augments={'"Dual Wield"+1','Attack+5','"Treasure Hunter"+1',}},
	}
	
	Weapons_Set_Names = {'Evis', 'Naegling','Domain Invasion'} --'Ranged',,'Melee'
	sets.Weapons = {}
	sets.Weapons.Ranged = {
	main="Fettering Blade",
	sub="Nusku Shield",
	}
	sets.Weapons.Evis = {
	main="Tauret",	
	sub="Gleti's Knife",
	}	
	sets.Weapons.Naegling = {
	main="Naegling",	
	sub="Gleti's Knife",
	}	
	sets.Weapons["Domain Invasion"] = {
	main="Tauret",	
	sub="Voluspa Knife",
	}		

	
	CP_Set_Names = {'Run',"Regen"}
	sets.CP = {}
	sets.CP.Run = {
    range={ name="Compensator", augments={'DMG:+15','Rng.Atk.+15','"Mag.Atk.Bns."+15',}},
    ammo="Eminent Bullet",
    head="Null Masque",
    body="Mummu Jacket +2",
    hands="Mummu Wrists +2",
    legs="Mummu Kecks +2",
    feet="Mummu Gamash. +2",
    neck="Null Loop",
    waist="Flume Belt",
    left_ear="Cessance Earring",
    right_ear="Suppanomimi",
    left_ring="Shneddick Ring",
    right_ring="Defending Ring",
    back="Null Shawl",
	}
	sets.CP.Regen = {
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Nyame Sollerets",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Flume Belt",
    left_ear="Infused Earring",
    right_ear="Suppanomimi",
    left_ring="Chirich Ring +1",
    right_ring="Defending Ring",
    back="Null Shawl",
	}	
	Gun_Set_Names = {'Savage', 'Leaden'}
	sets.Gun = {}
	sets.Gun.Savage = {
    range={ name="Anarchy +2", augments={'Delay:+60','TP Bonus +1000',}},
	}
	
	sets.Gun.Leaden = {
	range={ name="Doomsday", augments={'"Mag.Atk.Bns."+20','Weapon skill damage +7%','STR+15 AGI+15',}},
	}
	
	sets.ws = {}                    -- Leave this empty
	sets.ws['Savage Blade'] = {
	ammo="Animikii Bullet",
    -- head="Meghanada Visor +2",
    -- body="Meg. Cuirie +2",
    -- hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    -- legs="Meg. Chausses +2",
    -- feet="Meg. Jam. +2",
    -- neck="Rep. Plat. Medal",
    -- waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    -- left_ear="Ishvara Earring",
    -- right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    -- left_ring="Epaminondas's Ring",
    -- right_ring="Sroda Ring",
    -- back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},

    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Nyame Mail",
    hands="Meg. Gloves +2",
    legs="Nyame Flanchard",
    feet="Lanun Bottes +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Sroda Ring",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}

	sets.ws['Evisceration'] = {
	range="Compensator",
	ammo="Eminent Bullet",
    head="Blistering Sallet +1",
    body="Mummu Jacket +2",
    hands="Mummu Wrists +2",
    legs="Mummu Kecks +2",
    feet="Mummu Gamash. +2",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Ilabrat Ring",
    right_ring="Defending Ring",
    back="Null Shawl",
	}
	
	sets.ws['Aeolian Edge'] = {
	ammo="Animikii Bullet",
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Rawhide Vest",
    hands={ name="Carmine Fin. Ga.", augments={'Rng.Atk.+15','"Mag.Atk.Bns."+10','"Store TP"+5',}},
	legs="Shneddick Tights +1",
    feet="Lanun Bottes +2",
    neck="Null Loop",
    waist="Orpheus's Sash",
	left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Dingir Ring",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}

	sets.ws['Requiescat'] = {
	ammo="Animikii Bullet",
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Nyame Mail",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Nyame Flanchard",
    feet="Lanun Bottes +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rufescent Ring",
    back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}

	sets.ws['Last Stand'] = {
	ammo="Eminent Bullet",
    head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet="Lanun Bottes +2",
    neck="Iskur Gorget",
    waist="Kwahu Kachina Belt",
	left_ear="Beyla Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ilabrat Ring",
    right_ring="Dingir Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
}

	sets.ws['Wildfire'] = {
	ammo="Bronze Bullet",
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
     body="Nyame Mail",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet="Lanun Bottes +2",
    neck="Null Loop",
    waist="Orpheus's Sash",
	left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Arvina Ringlet +1",
    right_ring="Dingir Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
}	
	sets.ws['Hot Shot'] = {
    ammo="Eminent Bullet",
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Nyame Mail",
    hands="Meg. Gloves +2",
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Crep. Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ilabrat Ring",
    right_ring="Dingir Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
}

	sets.ws['Leaden Salute'] = {
	ammo="Bronze Bullet",
    head="Pixie Hairpin +1",
    body="Nyame Mail",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet="Lanun Bottes +2",
    neck="Null Loop",
    waist="Orpheus's Sash",
	left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Archon Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
}

	sets.ws['Detonator'] = {
	ammo="Eminent Bullet",
    head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet="Lanun Bottes +2",
    neck="Iskur Gorget",
    waist="Kwahu Kachina Belt",
    left_ear="Beyla Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ilabrat Ring",
    right_ring="Dingir Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
}

	sets.ja = {}                    -- Leave this empty
	sets.ja["Dancer's Roll"] = { 
	--neck="Regal Necklace",
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    --legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	left_ring ="Luzaf\'s Ring",
	right_ring="Barataria Ring",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}
	sets.ja["Fighter's Roll"] = { 
	--neck="Regal Necklace",
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    --legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	left_ring ="Luzaf\'s Ring",
	right_ring="Barataria Ring",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}
	sets.ja["Samurai Roll"] = {
	--neck="Regal Necklace",
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    --legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	left_ring ="Luzaf\'s Ring",
	right_ring="Barataria Ring",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}
	sets.ja["Monk's Roll"] = {
	--neck="Regal Necklace",
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    --legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	left_ring ="Luzaf\'s Ring",
	right_ring="Barataria Ring",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}
	sets.ja["Chaos Roll"] = { 
	--neck="Regal Necklace",
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    --legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	left_ring ="Luzaf\'s Ring",
	right_ring="Barataria Ring",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}
	sets.ja["Hunter's Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    --legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	--neck="Regal Necklace",
	left_ring ="Luzaf\'s Ring",
	right_ring="Barataria Ring",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}
	sets.ja["Tactician's Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    body="Chasseur's Frac",
    --legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	--neck="Regal Necklace",
	left_ring ="Luzaf\'s Ring",
	right_ring="Barataria Ring",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}
	sets.ja["Bolter's Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    --legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	--neck="Regal Necklace",
	left_ring ="Luzaf\'s Ring",
	right_ring="Barataria Ring",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}
	sets.ja["Drachen Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    --legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	--neck="Regal Necklace",
	left_ring ="Luzaf\'s Ring",
	right_ring="Barataria Ring",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}
	sets.ja["Beast Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    --legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	--neck="Regal Necklace",
	left_ring ="Luzaf\'s Ring",
	right_ring="Barataria Ring",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}
	sets.ja["Puppet Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    --legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	--neck="Regal Necklace",
	left_ring ="Luzaf\'s Ring",
	right_ring="Barataria Ring",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}
	sets.ja["Wizard's Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur\'s Gants",
    --legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	--neck="Regal Necklace",
	left_ring ="Luzaf\'s Ring",
	right_ring="Barataria Ring",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}
	sets.ja["Allies' Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur\'s Gants",
    --legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	--neck="Regal Necklace",
	left_ring ="Luzaf\'s Ring",
	right_ring="Barataria Ring",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}

	sets.ja["Rogue's Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur\'s Gants",
    --legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	--neck="Regal Necklace",
	left_ring ="Luzaf\'s Ring",
	right_ring="Barataria Ring",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}
	sets.ja["Corsair's Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur\'s Gants",
    --legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	--neck="Regal Necklace",
	left_ring ="Luzaf\'s Ring",
	right_ring="Barataria Ring",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}
	sets.ja["Evoker's Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur\'s Gants",
    --legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	--neck="Regal Necklace",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}
	sets.ja["Double-Up"] = { 
	left_ring ="Luzaf\'s Ring",
	right_ring="Barataria Ring",
	--neck="Regal Necklace",
}
	sets.ja['Random Deal'] = {
    body={ name="Lanun Frac +1", augments={'Enhances "Loaded Deck" effect',}},
	}
	sets.ja['Wild Card'] = {
    feet="Lanun Bottes +2",	
	}
	sets.ja['Earth Shot'] = {

	ammo="Animikii Bullet",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Hecate\'s Earring",
    right_ear="Friomisi Earring",
    left_ring="Arvina Ringlet +1",
    right_ring="Dingir Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-5','"Mag.Atk.Bns."+5','"Phantom Roll" ability delay -2',}},
}
	sets.ja['Wind Shot'] = {

	ammo="Animikii Bullet",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Hecate\'s Earring",
    right_ear="Friomisi Earring",
    left_ring="Arvina Ringlet +1",
    right_ring="Dingir Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-5','"Mag.Atk.Bns."+5','"Phantom Roll" ability delay -2',}},
}
	sets.ja['Fire Shot'] = {

	ammo="Animikii Bullet",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Hecate\'s Earring",
    right_ear="Friomisi Earring",
    left_ring="Arvina Ringlet +1",
    right_ring="Dingir Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-5','"Mag.Atk.Bns."+5','"Phantom Roll" ability delay -2',}},
}
	sets.ja['Water Shot'] = {

	ammo="Animikii Bullet",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Hecate\'s Earring",
    right_ear="Friomisi Earring",
    left_ring="Arvina Ringlet +1",
    right_ring="Dingir Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-5','"Mag.Atk.Bns."+5','"Phantom Roll" ability delay -2',}},
}
	sets.ja['Thunder Shot'] = {

	ammo="Animikii Bullet",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Hecate\'s Earring",
    right_ear="Friomisi Earring",
    left_ring="Arvina Ringlet +1",
    right_ring="Dingir Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-5','"Mag.Atk.Bns."+5','"Phantom Roll" ability delay -2',}},
}
	sets.ja['Ice Shot'] = {

	ammo="Animikii Bullet",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Hecate\'s Earring",
    right_ear="Friomisi Earring",
    left_ring="Arvina Ringlet +1",
    right_ring="Dingir Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-5','"Mag.Atk.Bns."+5','"Phantom Roll" ability delay -2',}},
}
	sets.ja['Light Shot'] = {
    ammo="Animikii Bullet",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Crepuscular Earring",
    right_ear="Enchntr. Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Crepuscular Ring",
    back="Null Shawl",
}
	sets.ja['Dark Shot'] = {
    ammo="Animikii Bullet",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Crepuscular Earring",
    right_ear="Enchntr. Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Crepuscular Ring",
    back="Null Shawl",
}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Hachirin = {
	waist="Hachirin-no-Obi",
	}
	sets.buff.adoulin = {
	body="Councilor\'s Garb",
	}
	sets.buff.domain = {
	head="Heidrek Mask",
	body="Heidrek Harness",
	}

    sets.idle = {}                  -- Leave this empty
	sets.idle.normal = {
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Nyame Sollerets",
    neck="Regal Necklace",
    waist="Orpheus's Sash",
    left_ear="Crepuscular Earring",
    right_ear="Suppanomimi",
    left_ring="Crepuscular Ring",
    right_ring="Defending Ring",
    back="Null Shawl",
} 

    sets.precast = {}               -- leave this empty  
	sets.precast.fastcast = {
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --8
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ring="Lebeche Ring",
	right_ring="Weatherspoon Ring +1",
	neck="Voltsurge Torque",
    right_ear="Loquacious Earring",
	}
	sets.precast.DT = {
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Shetal Stone",
    left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    left_ring="Epona\'s Ring",
    right_ring="Defending Ring",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	
    sets.midcast = {}               -- leave this empty 
	sets.midcast.Utsusemi = {
        head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
        feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ring="Lebeche Ring",
	right_ring="Kishar Ring",
	neck="Voltsurge Torque",
    right_ear="Loquacious Earring",
	}	
    sets.aftercast = {}             -- leave this empty
 
 	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring +1",
    right_ring="Purity Ring",
	}
	
	sets.buff.adoulin = {
	body="Councilor\'s Garb"
	}
	sets.buff.Sleep = {
	head="Frenzy Sallet",
	}
	sets.buff.Phalanx = {
    head={ name="Taeon Chapeau", augments={'Spell interruption rate down -8%','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
	waist="Flume Belt",
	neck="Loricate Torque +1",
	left_ring="Gelatinous Ring +1",
	ring_ring="Defending Ring",
	left_ear="Odnowa Earring +1",
    back={ name="Camulus's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
end
 
function precast(spell)
    if  spell.action_type == 'Magic' then
        equip(sets.precast.DT)
		    if sets.ja[spell.name] then
				equip(sets.ja[spell.name])
		end
	end  
    if  spell.action_type == 'Magic' then
        equip(sets.precast.fastcast)
	end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])        
			if spell.name:match("Leaden Salute") or spell.name:match("Wildfire") then 
					if world.weather_element == spell.element and world.day_element == spell.element then
						equip(sets.buff.Hachirin)
					end
				end
			end
	if spell.action_type == 'Ranged Attack' then
		equip (sets.ranged.precast)
	end
end


 
function midcast(spell)
    if spell.name:match('Utsusemi')then
        equip(sets.precast.DT)
	end
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])
	end
	if spell.action_type == 'Ranged Attack' then
		equip (sets.ranged.normal)
	end
end
 
function aftercast(spell)
	idle()
end
 
 
function idle()
	if player.status =='Engaged' then
		equip(sets.melee[Melee_Set_Names[Melee_Index]])
			if buffactive['Reive Mark'] then
				equip(sets.buff.reive)
			end
		end
	if player.status =='Idle' then
		equip(sets.CP.Run)
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
	if command == 'toggle Gun set' then
        Gun_Index = Gun_Index +1
    if Gun_Index > #Gun_Set_Names then Gun_Index = 1 end
        windower.add_to_chat('Gun is now: '..Gun_Set_Names[Gun_Index])
        equip(sets.Gun[Gun_Set_Names[Gun_Index]])
    end
	if command == 'toggle CP set' then
        CP_Index = CP_Index +1
    if CP_Index > #CP_Set_Names then CP_Index = 1 end
        windower.add_to_chat('Movement mode is now: '..CP_Set_Names[CP_Index])
        equip(sets.CP[CP_Set_Names[CP_Index]])
    end
	if command == 'toggle Weapons set' then
        Weapons_Index = Weapons_Index +1
    if Weapons_Index > #Weapons_Set_Names then Weapons_Index = 1 end
        windower.add_to_chat('Weapon is now: '..Weapons_Set_Names[Weapons_Index])
        equip(sets.Weapons[Weapons_Set_Names[Weapons_Index]])
    end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH4 equipped')
        equip(sets.TH[TH_Set_Names[TH_Index]])
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
