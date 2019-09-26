-- Modulo dati per le mosse
-- TODO: dati delle gare
-- TODO: generation
-- TODO: multigen (some moves changed stats between generations)

local t = {}

t.botta = {name = 'Botta', type = 'normale', category = 'fisico', power = 40, accuracy = 100, pp = 35}
t.colpokarate = {name = 'Colpokarate', type = 'lotta', category = 'fisico', power = 50, accuracy = 100, pp = 25}
t.doppiasberla = {name = 'Doppiasberla', type = 'normale', category = 'fisico', power = 15, accuracy = 85, pp = 10}
t.cometapugno = {name = 'Cometapugno', type = 'normale', category = 'fisico', power = 18, accuracy = 85, pp = 15}
t.megapugno = {name = 'Megapugno', type = 'normale', category = 'fisico', power = 80, accuracy = 85, pp = 20}
t.giornopaga = {name = 'Giornopaga', type = 'normale', category = 'fisico', power = 40, accuracy = 100, pp = 20}
t.fuocopugno = {name = 'Fuocopugno', type = 'fuoco', category = 'fisico', power = 75, accuracy = 100, pp = 15}
t.gelopugno = {name = 'Gelopugno', type = 'ghiaccio', category = 'fisico', power = 75, accuracy = 100, pp = 15}
t.tuonopugno = {name = 'Tuonopugno', type = 'elettro', category = 'fisico', power = 75, accuracy = 100, pp = 15}
t.graffio = {name = 'Graffio', type = 'normale', category = 'fisico', power = 40, accuracy = 100, pp = 35}
t.presa = {name = 'Presa', type = 'normale', category = 'fisico', power = 55, accuracy = 100, pp = 30}
t.ghigliottina = {name = 'Ghigliottina', type = 'normale', category = 'fisico', power = '&mdash;', accuracy = '&mdash;', pp = 5}
t.ventagliente = {name = 'Ventagliente', type = 'normale', category = 'speciale', power = 80, accuracy = 100, pp = 10}
t.danzaspada = {name = 'Danzaspada', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.taglio = {name = 'Taglio', type = 'normale', category = 'fisico', power = 50, accuracy = 95, pp = 30}
t.raffica = {name = 'Raffica', type = 'volante', category = 'speciale', power = 40, accuracy = 100, pp = 35}
t["attacco d'ala"] = {name = "Attacco d'Ala", type = 'volante', category = 'fisico', power = 60, accuracy = 100, pp = 35}
t.turbine = {name = 'Turbine', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.volo = {name = 'Volo', type = 'volante', category = 'fisico', power = 90, accuracy = 95, pp = 15}
t.legatutto = {name = 'Legatutto', type = 'normale', category = 'fisico', power = 15, accuracy = 85, pp = 20}
t.schianto = {name = 'Schianto', type = 'normale', category = 'fisico', power = 80, accuracy = 75, pp = 20}
t.frustata = {name = 'Frustata', type = 'erba', category = 'fisico', power = 45, accuracy = 100, pp = 25}
t.pestone = {name = 'Pestone', type = 'normale', category = 'fisico', power = 65, accuracy = 100, pp = 20}
t.doppiocalcio = {name = 'Doppiocalcio', type = 'lotta', category = 'fisico', power = 30, accuracy = 100, pp = 30}
t.megacalcio = {name = 'Megacalcio', type = 'normale', category = 'fisico', power = 120, accuracy = 75, pp = 5}
t.calciosalto = {name = 'Calciosalto', type = 'lotta', category = 'fisico', power = 100, accuracy = 95, pp = 10}
t.calciorullo = {name = 'Calciorullo', type = 'lotta', category = 'fisico', power = 60, accuracy = 85, pp = 15}
t.turbosabbia = {name = 'Turbosabbia', type = 'terra', category = 'stato', power = '&mdash;', accuracy = 100, pp = 15}
t.bottintesta = {name = 'Bottintesta', type = 'normale', category = 'fisico', power = 70, accuracy = 100, pp = 15}
t.incornata = {name = 'Incornata', type = 'normale', category = 'fisico', power = 65, accuracy = 100, pp = 25}
t.furia = {name = 'Furia', type = 'normale', category = 'fisico', power = 15, accuracy = 85, pp = 20}
t.perforcorno = {name = 'Perforcorno', type = 'normale', category = 'fisico', power = '&mdash;', accuracy = '&mdash;', pp = 5}
t.azione = {name = 'Azione', type = 'normale', category = 'fisico', power = 40, accuracy = 100, pp = 35}
t.corposcontro = {name = 'Corposcontro', type = 'normale', category = 'fisico', power = 85, accuracy = 100, pp = 15}
t.avvolgibotta = {name = 'Avvolgibotta', type = 'normale', category = 'fisico', power = 15, accuracy = 90, pp = 20}
t.riduttore = {name = 'Riduttore', type = 'normale', category = 'fisico', power = 90, accuracy = 85, pp = 20}
t.colpo = {name = 'Colpo', type = 'normale', category = 'fisico', power = 120, accuracy = 100, pp = 10}
t.sdoppiatore = {name = 'Sdoppiatore', type = 'normale', category = 'fisico', power = 120, accuracy = 100, pp = 15}
t.colpocoda = {name = 'Colpocoda', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 30}
t.velenospina = {name = 'Velenospina', type = 'veleno', category = 'fisico', power = 15, accuracy = 100, pp = 35}
t['doppio ago'] = {name = 'Doppio Ago', type = 'coleottero', category = 'fisico', power = 25, accuracy = 100, pp = 20}
t.missilspillo = {name = 'Missilspillo', type = 'coleottero', category = 'fisico', power = 25, accuracy = 95, pp = 20}
t.fulmisguardo = {name = 'Fulmisguardo', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 30}
t.morso = {name = 'Morso', type = 'buio', category = 'fisico', power = 60, accuracy = 100, pp = 25}
t.ruggito = {name = 'Ruggito', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 40}
t.boato = {name = 'Boato', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.canto = {name = 'Canto', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 55, pp = 15}
t.supersuono = {name = 'Supersuono', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 55, pp = 20}
t.sonicboom = {name = 'Sonicboom', type = 'normale', category = 'speciale', power = '&mdash;', accuracy = 90, pp = 20}
t.inibitore = {name = 'Inibitore', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 20}
t.acido = {name = 'Acido', type = 'veleno', category = 'speciale', power = 40, accuracy = 100, pp = 30}
t.braciere = {name = 'Braciere', type = 'fuoco', category = 'speciale', power = 40, accuracy = 100, pp = 25}
t.lanciafiamme = {name = 'Lanciafiamme', type = 'fuoco', category = 'speciale', power = 90, accuracy = 100, pp = 15}
t.nebbia = {name = 'Nebbia', type = 'ghiaccio', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 30}
t.pistolacqua = {name = 'Pistolacqua', type = 'acqua', category = 'speciale', power = 40, accuracy = 100, pp = 25}
t.idropompa = {name = 'Idropompa', type = 'acqua', category = 'speciale', power = 110, accuracy = 80, pp = 5}
t.surf = {name = 'Surf', type = 'acqua', category = 'speciale', power = 90, accuracy = 100, pp = 15}
t.geloraggio = {name = 'Geloraggio', type = 'ghiaccio', category = 'speciale', power = 90, accuracy = 100, pp = 10}
t.bora = {name = 'Bora', type = 'ghiaccio', category = 'speciale', power = 110, accuracy = 70, pp = 5}
t.psicoraggio = {name = 'Psicoraggio', type = 'psico', category = 'speciale', power = 65, accuracy = 100, pp = 20}
t.bollaraggio = {name = 'Bollaraggio', type = 'acqua', category = 'speciale', power = 65, accuracy = 100, pp = 20}
t.raggiaurora = {name = 'Raggiaurora', type = 'ghiaccio', category = 'speciale', power = 65, accuracy = 100, pp = 20}
t['iper raggio'] = {name = 'Iper Raggio', type = 'normale', category = 'speciale', power = 150, accuracy = 90, pp = 5}
t.beccata = {name = 'Beccata', type = 'volante', category = 'fisico', power = 35, accuracy = 100, pp = 35}
t.perforbecco = {name = 'Perforbecco', type = 'volante', category = 'fisico', power = 80, accuracy = 100, pp = 20}
t.sottomissione = {name = 'Sottomissione', type = 'lotta', category = 'fisico', power = 80, accuracy = 80, pp = 20}
t['colpo basso'] = {name = 'Colpo Basso', type = 'lotta', category = 'fisico', power = '&mdash;', accuracy = 100, pp = 20, stab = true}
t.contatore = {name = 'Contrattacco', type = 'lotta', category = 'fisico', power = '&mdash;', accuracy = 100, pp = 20}
t.contrattacco = t.contatore
t['movimento sismico'] = {name = 'Movimento Sismico', type = 'lotta', category = 'fisico', power = '&mdash;', accuracy = 100, pp = 20}
t.forza = {name = 'Forza', type = 'normale', category = 'fisico', power = 80, accuracy = 100, pp = 15}
t.assorbimento = {name = 'Assorbimento', type = 'erba', category = 'speciale', power = 20, accuracy = 100, pp = 25}
t.megassorbimento = {name = 'Megassorbimento', type = 'erba', category = 'speciale', power = 40, accuracy = 100, pp = 15}
t.parassiseme = {name = 'Parassiseme', type = 'erba', category = 'stato', power = '&mdash;', accuracy = 90, pp = 10}
t.crescita = {name = 'Crescita', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.foglielama = {name = 'Foglielama', type = 'erba', category = 'fisico', power = 55, accuracy = 95, pp = 25}
t.solarraggio = {name = 'Solarraggio', type = 'erba', category = 'speciale', power = 120, accuracy = 100, pp = 10}
t.velenpolvere = {name = 'Velenpolvere', type = 'veleno', category = 'stato', power = '&mdash;', accuracy = 75, pp = 35}
t.paralizzante = {name = 'Paralizzante', type = 'erba', category = 'stato', power = '&mdash;', accuracy = 75, pp = 30}
t.sonnifero = {name = 'Sonnifero', type = 'erba', category = 'stato', power = '&mdash;', accuracy = 75, pp = 15}
t.petalodanza = {name = 'Petalodanza', type = 'erba', category = 'speciale', power = 120, accuracy = 100, pp = 10}
t.millebave = {name = 'Millebave', type = 'coleottero', category = 'stato', power = '&mdash;', accuracy = 95, pp = 40}
t['ira di drago'] = {name = 'Ira di Drago', type = 'drago', category = 'speciale', power = '&mdash;', accuracy = 100, pp = 10}
t.turbofuoco = {name = 'Turbofuoco', type = 'fuoco', category = 'speciale', power = 35, accuracy = 85, pp = 15}
t.tuonoshock = {name = 'Tuonoshock', type = 'elettro', category = 'speciale', power = 40, accuracy = 100, pp = 30}
t.fulmine = {name = 'Fulmine', type = 'elettro', category = 'speciale', power = 90, accuracy = 100, pp = 15}
t.tuononda = {name = 'Tuononda', type = 'elettro', category = 'stato', power = '&mdash;', accuracy = 90, pp = 20}
t.tuono = {name = 'Tuono', type = 'elettro', category = 'speciale', power = 110, accuracy = 70, pp = 10}
t.sassata = {name = 'Sassata', type = 'roccia', category = 'fisico', power = 50, accuracy = 90, pp = 15}
t.terremoto = {name = 'Terremoto', type = 'terra', category = 'fisico', power = 100, accuracy = 100, pp = 10}
t.abisso = {name = 'Abisso', type = 'terra', category = 'fisico', power = '&mdash;', accuracy = '&mdash;', pp = 5}
t.fossa = {name = 'Fossa', type = 'terra', category = 'fisico', power = 80, accuracy = 100, pp = 10}
t.tossina = {name = 'Tossina', type = 'veleno', category = 'stato', power = '&mdash;', accuracy = 90, pp = 10}
t.confusione = {name = 'Confusione', type = 'psico', category = 'speciale', power = 50, accuracy = 100, pp = 25}
t.psichico = {name = 'Psichico', type = 'psico', category = 'speciale', power = 90, accuracy = 100, pp = 10}
t.ipnosi = {name = 'Ipnosi', type = 'psico', category = 'stato', power = '&mdash;', accuracy = 60, pp = 20}
t.meditazione = {name = 'Meditazione', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 40}
t['agilità'] = {name = 'Agilità', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 30}
t['attacco rapido'] = {name = 'Attacco Rapido', type = 'normale', category = 'fisico', power = 40, accuracy = 100, pp = 30}
t.ira = {name = 'Ira', type = 'normale', category = 'fisico', power = 20, accuracy = 100, pp = 20}
t.teletrasporto = {name = 'Teletrasporto', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t['ombra notturna'] = {name = 'Ombra Notturna', type = 'spettro', category = 'speciale', power = '&mdash;', accuracy = 100, pp = 15}
t.mimica = {name = 'Mimica', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.stridio = {name = 'Stridio', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 85, pp = 40}
t.doppioteam = {name = 'Doppioteam', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 15}
t.ripresa = {name = 'Ripresa', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.rafforzatore = {name = 'Rafforzatore', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 30}
t.minimizzato = {name = 'Minimizzato', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t['muro di fumo'] = {name = 'Muro di Fumo', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 20}
t.stordiraggio = {name = 'Stordiraggio', type = 'spettro', category = 'stato', power = '&mdash;', accuracy = 100, pp = 10}
t.ritirata = {name = 'Ritirata', type = 'acqua', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 40}
t.ricciolscudo = {name = 'Ricciolscudo', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 40}
t.barriera = {name = 'Barriera', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.schermoluce = {name = 'Schermoluce', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 30}
t.nube = {name = 'Nube', type = 'ghiaccio', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 30}
t.riflesso = {name = 'Riflesso', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.focalenergia = {name = 'Focalenergia', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 30}
t.pazienza = {name = 'Pazienza', type = 'normale', category = 'fisico', power = '&mdash;', accuracy = 100, pp = 10}
t.metronomo = {name = 'Metronomo', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.speculmossa = {name = 'Speculmossa', type = 'volante', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.autodistruzione = {name = 'Autodistruzione', type = 'normale', category = 'fisico', power = 200, accuracy = 100, pp = 5}
t.uovobomba = {name = 'Uovobomba', type = 'normale', category = 'fisico', power = 100, accuracy = 75, pp = 10}
t.leccata = {name = 'Leccata', type = 'spettro', category = 'fisico', power = 30, accuracy = 100, pp = 30}
t.smog = {name = 'Smog', type = 'veleno', category = 'speciale', power = 30, accuracy = 70, pp = 20}
t.fango = {name = 'Fango', type = 'veleno', category = 'speciale', power = 65, accuracy = 100, pp = 20}
t.ossoclava = {name = 'Ossoclava', type = 'terra', category = 'fisico', power = 65, accuracy = 85, pp = 20}
t.fuocobomba = {name = 'Fuocobomba', type = 'fuoco', category = 'speciale', power = 110, accuracy = 85, pp = 5}
t.cascata = {name = 'Cascata', type = 'acqua', category = 'fisico', power = 80, accuracy = 100, pp = 15}
t.tenaglia = {name = 'Tenaglia', type = 'acqua', category = 'fisico', power = 35, accuracy = 85, pp = 10}
t.comete = {name = 'Comete', type = 'normale', category = 'speciale', power = 60, accuracy = '&mdash;', pp = 20}
t.capocciata = {name = 'Capocciata', type = 'normale', category = 'fisico', power = 130, accuracy = 100, pp = 10}
t.sparalance = {name = 'Sparalance', type = 'normale', category = 'fisico', power = 20, accuracy = 100, pp = 15}
t.limitazione = {name = 'Limitazione', type = 'normale', category = 'fisico', power = 10, accuracy = 100, pp = 35}
t.amnesia = {name = 'Amnesia', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t['cinèsi'] = {name = 'Cinèsi', type = 'psico', category = 'stato', power = '&mdash;', accuracy = 80, pp = 15}
t.covauova = {name = 'Covauova', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.calcinvolo = {name = 'Calcinvolo', type = 'lotta', category = 'fisico', power = 130, accuracy = 90, pp = 10}
t['sguardo feroce'] = {name = 'Sguardo Feroce', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 30}
t.bagliore = t['sguardo feroce']
t.mangiasogni = {name = 'Mangiasogni', type = 'psico', category = 'speciale', power = 100, accuracy = 100, pp = 15}
t.velenogas = {name = 'Velenogas', type = 'veleno', category = 'stato', power = '&mdash;', accuracy = 90, pp = 40}
t['attacco pioggia'] = {name = 'Attacco Pioggia', type = 'normale', category = 'fisico', power = 15, accuracy = 85, pp = 20}
t.sanguisuga = {name = 'Sanguisuga', type = 'coleottero', category = 'fisico', power = 80, accuracy = 100, pp = 10}
t.demonbacio = {name = 'Demonbacio', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 75, pp = 10}
t.aeroattacco = {name = 'Aeroattacco', type = 'volante', category = 'fisico', power = 140, accuracy = 90, pp = 5}
t.trasformazione = {name = 'Trasformazione', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.bolla = {name = 'Bolla', type = 'acqua', category = 'speciale', power = 40, accuracy = 100, pp = 30}
t.stordipugno = {name = 'Stordipugno', type = 'normale', category = 'fisico', power = 70, accuracy = 100, pp = 10}
t.spora = {name = 'Spora', type = 'erba', category = 'stato', power = '&mdash;', accuracy = 100, pp = 15}
t.flash = {name = 'Flash', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 20}
t.psiconda = {name = 'Psiconda', type = 'psico', category = 'speciale', power = '&mdash;', accuracy = 100, pp = 15}
t.splash = {name = 'Splash', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 40}
t['scudo acido'] = {name = 'Scudo Acido', type = 'veleno', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.martellata = {name = 'Martellata', type = 'acqua', category = 'fisico', power = 100, accuracy = 90, pp = 10}
t.esplosione = {name = 'Esplosione', type = 'normale', category = 'fisico', power = 250, accuracy = 100, pp = 5}
t.sfuriate = {name = 'Sfuriate', type = 'normale', category = 'fisico', power = 18, accuracy = 80, pp = 15}
t.ossomerang = {name = 'Ossomerang', type = 'terra', category = 'fisico', power = 50, accuracy = 90, pp = 10}
t.riposo = {name = 'Riposo', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.frana = {name = 'Frana', type = 'roccia', category = 'fisico', power = 75, accuracy = 90, pp = 10}
t.iperzanna = {name = 'Iperzanna', type = 'normale', category = 'fisico', power = 80, accuracy = 90, pp = 15}
t.affilatore = {name = 'Affilatore', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 30}
t.conversione = {name = 'Conversione', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 30}
t.tripletta = {name = 'Tripletta', type = 'normale', category = 'speciale', power = 80, accuracy = 100, pp = 10}
t.superzanna = {name = 'Superzanna', type = 'normale', category = 'fisico', power = '&mdash;', accuracy = 90, pp = 10}
t.lacerazione = {name = 'Lacerazione', type = 'normale', category = 'fisico', power = 70, accuracy = 100, pp = 20}
t.sostituto = {name = 'Sostituto', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.scontro = {name = 'Scontro', type = 'normale', category = 'fisico', power = 50, accuracy = '&mdash;', pp = 1}
t.schizzo = {name = 'Schizzo', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 1}
t.triplocalcio = {name = 'Triplocalcio', type = 'lotta', category = 'fisico', power = 10, accuracy = 90, pp = 10}
t.furto = {name = 'Furto', type = 'buio', category = 'fisico', power = 60, accuracy = 100, pp = 25}
t.ragnatela = {name = 'Ragnatela', type = 'coleottero', category = 'stato', power = '&mdash;', accuracy = 100, pp = 10}
t.leggimente = {name = 'Leggimente', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 5}
t.incubo = {name = 'Incubo', type = 'spettro', category = 'stato', power = '&mdash;', accuracy = 100, pp = 15}
t.ruotafuoco = {name = 'Ruotafuoco', type = 'fuoco', category = 'fisico', power = 60, accuracy = 100, pp = 25}
t.russare = {name = 'Russare', type = 'normale', category = 'speciale', power = 50, accuracy = 100, pp = 15}
t.maledizione = {name = 'Maledizione', type = 'spettro', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.flagello = {name = 'Flagello', type = 'normale', category = 'fisico', power = '&mdash;', accuracy = 100, pp = 15, stab = true}
t.conversione2 = {name = 'Conversione2', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 30}
t.aerocolpo = {name = 'Aerocolpo', type = 'volante', category = 'speciale', power = 100, accuracy = 95, pp = 5}
t.cottonspora = {name = 'Cottonspora', type = 'erba', category = 'stato', power = '&mdash;', accuracy = 100, pp = 40}
t.contropiede = {name = 'Contropiede', type = 'lotta', category = 'fisico', power = '&mdash;', accuracy = 100, pp = 15, stab = true}
t.dispetto = {name = 'Dispetto', type = 'spettro', category = 'stato', power = '&mdash;', accuracy = 100, pp = 10}
t.polneve = {name = 'Polneve', type = 'ghiaccio', category = 'speciale', power = 40, accuracy = 100, pp = 25}
t.protezione = {name = 'Protezione', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.pugnorapido = {name = 'Pugnorapido', type = 'lotta', category = 'fisico', power = 40, accuracy = 100, pp = 30}
t.visotruce = {name = 'Visotruce', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 10}
t.finta = {name = 'Finta', type = 'buio', category = 'fisico', power = 60, accuracy = '&mdash;', pp = 20}
t.dolcebacio = {name = 'Dolcebacio', type = 'folletto', category = 'stato', power = '&mdash;', accuracy = 75, pp = 10}
t.panciamburo = {name = 'Panciamburo', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.fangobomba = {name = 'Fangobomba', type = 'veleno', category = 'speciale', power = 90, accuracy = 100, pp = 10}
t.fangosberla = {name = 'Fangosberla', type = 'terra', category = 'speciale', power = 20, accuracy = 100, pp = 10}
t.octazooka = {name = 'Octazooka', type = 'acqua', category = 'speciale', power = 65, accuracy = 85, pp = 10}
t.punte = {name = 'Punte', type = 'terra', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.falcecannone = {name = 'Falcecannone', type = 'elettro', category = 'speciale', power = 120, accuracy = 50, pp = 5}
t.preveggenza = {name = 'Preveggenza', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 40}
t.destinobbligato = {name = 'Destinobbligato', type = 'spettro', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 5}
t.ultimocanto = {name = 'Ultimocanto', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 5}
t.ventogelato = {name = 'Ventogelato', type = 'ghiaccio', category = 'speciale', power = 55, accuracy = 95, pp = 15}
t.individua = {name = 'Individua', type = 'lotta', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 5}
t.ossoraffica = {name = 'Ossoraffica', type = 'terra', category = 'fisico', power = 25, accuracy = 90, pp = 10}
t.localizza = {name = 'Localizza', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 5}
t.oltraggio = {name = 'Oltraggio', type = 'drago', category = 'fisico', power = 120, accuracy = 100, pp = 10}
t.terrempesta = {name = 'Terrempesta', type = 'roccia', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.gigassorbimento = {name = 'Gigassorbimento', type = 'erba', category = 'speciale', power = 75, accuracy = 100, pp = 10}
t.resistenza = {name = 'Resistenza', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.fascino = {name = 'Fascino', type = 'folletto', category = 'stato', power = '&mdash;', accuracy = 100, pp = 20}
t.rotolamento = {name = 'Rotolamento', type = 'roccia', category = 'fisico', power = 30, accuracy = 90, pp = 20}
t.falsofinale = {name = 'Falsofinale', type = 'normale', category = 'fisico', power = 40, accuracy = 100, pp = 40}
t.bullo = {name = 'Bullo', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 85, pp = 15}
t.buonlatte = {name = 'Buonlatte', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.scintilla = {name = 'Scintilla', type = 'elettro', category = 'fisico', power = 65, accuracy = 100, pp = 20}
t.tagliofuria = {name = 'Tagliofuria', type = 'coleottero', category = 'fisico', power = 40, accuracy = 95, pp = 20}
t.alacciaio = {name = 'Alacciaio', type = 'acciaio', category = 'fisico', power = 70, accuracy = 90, pp = 25}
t.malosguardo = {name = 'Malosguardo', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 5}
t.attrazione = {name = 'Attrazione', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 15}
t.sonnolalia = {name = 'Sonnolalia', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.rintoccasana = {name = 'Rintoccasana', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 5}
t.ritorno = {name = 'Ritorno', type = 'normale', category = 'fisico', power = '&mdash;', accuracy = 100, pp = 20, stab = true}
t.regalino = {name = 'Regalino', type = 'normale', category = 'fisico', power = '&mdash;', accuracy = 90, pp = 15, stab = true}
t.frustrazione = {name = 'Frustrazione', type = 'normale', category = 'fisico', power = '&mdash;', accuracy = 100, pp = 20, stab = true}
t.salvaguardia = {name = 'Salvaguardia', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 25}
t.malcomune = {name = 'Malcomune', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 20}
t.magifuoco = {name = 'Magifuoco', type = 'fuoco', category = 'fisico', power = 100, accuracy = 95, pp = 5}
t.magnitudo = {name = 'Magnitudo', type = 'terra', category = 'fisico', power = '&mdash;', accuracy = 100, pp = 30, stab = true}
t.dinamipugno = {name = 'Dinamipugno', type = 'lotta', category = 'fisico', power = 100, accuracy = 50, pp = 5}
t.megacorno = {name = 'Megacorno', type = 'coleottero', category = 'fisico', power = 120, accuracy = 85, pp = 10}
t.dragospiro = {name = 'Dragospiro', type = 'drago', category = 'speciale', power = 60, accuracy = 100, pp = 20}
t.staffetta = {name = 'Staffetta', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 40}
t.ripeti = {name = 'Ripeti', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 5}
t.inseguimento = {name = 'Inseguimento', type = 'buio', category = 'fisico', power = 40, accuracy = 100, pp = 20}
t.rapigiro = {name = 'Rapigiro', type = 'normale', category = 'fisico', power = 20, accuracy = 100, pp = 40}
t.profumino = {name = 'Profumino', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 20}
t.codacciaio = {name = 'Codacciaio', type = 'acciaio', category = 'fisico', power = 100, accuracy = 75, pp = 15}
t.ferrartigli = {name = 'Ferrartigli', type = 'acciaio', category = 'fisico', power = 50, accuracy = 95, pp = 35}
t.vitaltiro = {name = 'Vitaltiro', type = 'lotta', category = 'fisico', power = 70, accuracy = '&mdash;', pp = 10}
t.mattindoro = {name = 'Mattindoro', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 5}
t.sintesi = {name = 'Sintesi', type = 'erba', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 5}
t.lucelunare = {name = 'Lucelunare', type = 'folletto', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 5}
t.introforza = {name = 'Introforza', type = 'normale', category = 'speciale', power = 60, accuracy = 100, pp = 15}
t.incrocolpo = {name = 'Incrocolpo', type = 'lotta', category = 'fisico', power = 100, accuracy = 80, pp = 5}
t.tornado = {name = 'Tornado', type = 'drago', category = 'speciale', power = 40, accuracy = 100, pp = 20}
t.pioggiadanza = {name = 'Pioggiadanza', type = 'acqua', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 5}
t.giornodisole = {name = 'Giornodisole', type = 'fuoco', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 5}
t.sgranocchio = {name = 'Sgranocchio', type = 'buio', category = 'fisico', power = 80, accuracy = 100, pp = 15}
t.specchiovelo = {name = 'Specchiovelo', type = 'psico', category = 'speciale', power = '&mdash;', accuracy = 100, pp = 20}
t['psicamisù'] = {name = 'Psicamisù', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.extrarapido = {name = 'Extrarapido', type = 'normale', category = 'fisico', power = 80, accuracy = 100, pp = 5}
t.forzantica = {name = 'Forzantica', type = 'roccia', category = 'speciale', power = 60, accuracy = 100, pp = 5}
t['palla ombra'] = {name = 'Palla Ombra', type = 'spettro', category = 'speciale', power = 80, accuracy = 100, pp = 15}
t.divinazione = {name = 'Divinazione', type = 'psico', category = 'speciale', power = 120, accuracy = 100, pp = 10}
t.spaccaroccia = {name = 'Spaccaroccia', type = 'lotta', category = 'fisico', power = 40, accuracy = 100, pp = 15}
t.mulinello = {name = 'Mulinello', type = 'acqua', category = 'speciale', power = 35, accuracy = 85, pp = 15}
t.picchiaduro = {name = 'Picchiaduro', type = 'buio', category = 'fisico', power = '&mdash;', accuracy = 100, pp = 10, stab = {[2] = false, [5] = true}}
t.bruciapelo = {name = 'Bruciapelo', type = 'normale', category = 'fisico', power = 40, accuracy = 100, pp = 10}
t.baraonda = {name = 'Baraonda', type = 'normale', category = 'speciale', power = 90, accuracy = 100, pp = 10}
t.accumulo = {name = 'Accumulo', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.sfoghenergia = {name = 'Sfoghenergia', type = 'normale', category = 'speciale', power = '&mdash;', accuracy = 100, pp = 10, stab = true}
t.introenergia = {name = 'Introenergia', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.ondacalda = {name = 'Ondacalda', type = 'fuoco', category = 'speciale', power = 95, accuracy = 90, pp = 10}
t.grandine = {name = 'Grandine', type = 'ghiaccio', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.attaccalite = {name = 'Attaccalite', type = 'buio', category = 'stato', power = '&mdash;', accuracy = 100, pp = 15}
t.adulazione = {name = 'Adulazione', type = 'buio', category = 'stato', power = '&mdash;', accuracy = 100, pp = 15}
t.fuocofatuo = {name = 'Fuocofatuo', type = 'fuoco', category = 'stato', power = '&mdash;', accuracy = 85, pp = 15}
t.memento = {name = 'Memento', type = 'buio', category = 'stato', power = '&mdash;', accuracy = 100, pp = 10}
t.facciata = {name = 'Facciata', type = 'normale', category = 'fisico', power = 70, accuracy = 100, pp = 20}
t.centripugno = {name = 'Centripugno', type = 'lotta', category = 'fisico', power = 150, accuracy = 100, pp = 20}
t.maniereforti = {name = 'Maniereforti', type = 'normale', category = 'fisico', power = 70, accuracy = 100, pp = 10}
t.sonoqui = {name = 'Sonoqui', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.naturforza = {name = 'Naturforza', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.sottocarica = {name = 'Sottocarica', type = 'elettro', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.provocazione = {name = 'Provocazione', type = 'buio', category = 'stato', power = '&mdash;', accuracy = 100, pp = 20}
t.altruismo = {name = 'Altruismo', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.raggiro = {name = 'Raggiro', type = 'psico', category = 'stato', power = '&mdash;', accuracy = 100, pp = 10}
t.giocodiruolo = {name = 'Giocodiruolo', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.desiderio = {name = 'Desiderio', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.assistente = {name = 'Assistente', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.radicamento = {name = 'Radicamento', type = 'erba', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.troppoforte = {name = 'Troppoforte', type = 'lotta', category = 'fisico', power = 120, accuracy = 100, pp = 5}
t.magivelo = {name = 'Magivelo', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 15}
t.riciclo = {name = 'Riciclo', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 10}
t.vendetta = {name = 'Vendetta', type = 'lotta', category = 'fisico', power = 60, accuracy = 100, pp = 10}
t.breccia = {name = 'Breccia', type = 'lotta', category = 'fisico', power = 75, accuracy = 100, pp = 15}
t.sbadiglio = {name = 'Sbadiglio', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 10}
t.privazione = {name = 'Privazione', type = 'buio', category = 'fisico', power = 65, accuracy = 100, pp = 20}
t.rimonta = {name = 'Rimonta', type = 'normale', category = 'fisico', power = '&mdash;', accuracy = 100, pp = 5}
t.eruzione = {name = 'Eruzione', type = 'fuoco', category = 'speciale', power = '&mdash;', accuracy = 100, pp = 5, stab = true}
t.baratto = {name = 'Baratto', type = 'psico', category = 'stato', power = '&mdash;', accuracy = 100, pp = 10}
t.esclusiva = {name = 'Esclusiva', type = 'psico', category = 'stato', power = '&mdash;', accuracy = 100, pp = 10}
t.rinfrescata = {name = 'Rinfrescata', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 20}
t.rancore = {name = 'Rancore', type = 'spettro', category = 'stato', power = '&mdash;', accuracy = 100, pp = 5}
t.scippo = {name = 'Scippo', type = 'buio', category = 'stato', power = '&mdash;', accuracy = 100, pp = 10}
t.forzasegreta = {name = 'Forzasegreta', type = 'normale', category = 'fisico', power = 70, accuracy = 100, pp = 20}
t.sub = {name = 'Sub', type = 'acqua', category = 'fisico', power = 80, accuracy = 100, pp = 10}
t.sberletese = {name = 'Sberletese', type = 'lotta', category = 'fisico', power = 15, accuracy = 100, pp = 20}
t.camuffamento = {name = 'Camuffamento', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.codadiluce = {name = 'Codadiluce', type = 'coleottero', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.abbagliante = {name = 'Abbagliante', type = 'psico', category = 'speciale', power = 70, accuracy = 100, pp = 5}
t.foschisfera = {name = 'Foschisfera', type = 'psico', category = 'speciale', power = 70, accuracy = 100, pp = 5}
t.danzadipiume = {name = 'Danzadipiume', type = 'volante', category = 'stato', power = '&mdash;', accuracy = 100, pp = 15}
t.strampadanza = {name = 'Strampadanza', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 20}
t.calciardente = {name = 'Calciardente', type = 'fuoco', category = 'fisico', power = 85, accuracy = 90, pp = 10}
t.fangata = {name = 'Fangata', type = 'terra', category = 'stato', power = '&mdash;', accuracy = 100, pp = 15}
t['palla gelo'] = {name = 'Palla Gelo', type = 'ghiaccio', category = 'fisico', power = 30, accuracy = 90, pp = 20}
t.pugnospine = {name = 'Pugnospine', type = 'erba', category = 'fisico', power = 60, accuracy = 100, pp = 15}
t.pigro = {name = 'Pigro', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.granvoce = {name = 'Granvoce', type = 'normale', category = 'speciale', power = 90, accuracy = 100, pp = 10}
t.velenodenti = {name = 'Velenodenti', type = 'veleno', category = 'fisico', power = 50, accuracy = 100, pp = 15}
t.tritartigli = {name = 'Tritartigli', type = 'normale', category = 'fisico', power = 75, accuracy = 95, pp = 10}
t.incendio = {name = 'Incendio', type = 'fuoco', category = 'speciale', power = 150, accuracy = 90, pp = 5}
t.idrocannone = {name = 'Idrocannone', type = 'acqua', category = 'speciale', power = 150, accuracy = 90, pp = 5}
t.meteorpugno = {name = 'Meteorpugno', type = 'acciaio', category = 'fisico', power = 90, accuracy = 90, pp = 10}
t.sgomento = {name = 'Sgomento', type = 'spettro', category = 'fisico', power = 30, accuracy = 100, pp = 15}
t['palla clima'] = {name = 'Palla Clima', type = 'normale', category = 'speciale', power = 50, accuracy = 100, pp = 10}
t.aromaterapia = {name = 'Aromaterapia', type = 'erba', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 5}
t.falselacrime = {name = 'Falselacrime', type = 'buio', category = 'stato', power = '&mdash;', accuracy = 100, pp = 20}
t.aerasoio = {name = 'Aerasoio', type = 'volante', category = 'speciale', power = 60, accuracy = 95, pp = 25}
t.vampata = {name = 'Vampata', type = 'fuoco', category = 'speciale', power = 130, accuracy = 90, pp = 5}
t.segugio = {name = 'Segugio', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 40}
t.rocciotomba = {name = 'Rocciotomba', type = 'roccia', category = 'fisico', power = 60, accuracy = 95, pp = 15}
t.ventargenteo = {name = 'Ventargenteo', type = 'coleottero', category = 'speciale', power = 60, accuracy = 100, pp = 5}
t.ferrostrido = {name = 'Ferrostrido', type = 'acciaio', category = 'stato', power = '&mdash;', accuracy = 85, pp = 40}
t.meloderba = {name = 'Meloderba', type = 'erba', category = 'stato', power = '&mdash;', accuracy = 55, pp = 15}
t.solletico = {name = 'Solletico', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 20}
t.cosmoforza = {name = 'Cosmoforza', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.zampillo = {name = 'Zampillo', type = 'acqua', category = 'speciale', power = '&mdash;', accuracy = 100, pp = 5, stab = true}
t.segnoraggio = {name = 'Segnoraggio', type = 'coleottero', category = 'speciale', power = 75, accuracy = 100, pp = 15}
t.pugnodombra = {name = 'Pugnodombra', type = 'spettro', category = 'fisico', power = 60, accuracy = '&mdash;', pp = 20}
t.extrasenso = {name = 'Extrasenso', type = 'psico', category = 'speciale', power = 80, accuracy = 100, pp = 20}
t.stramontante = {name = 'Stramontante', type = 'lotta', category = 'fisico', power = 85, accuracy = 90, pp = 15}
t.sabbiotomba = {name = 'Sabbiotomba', type = 'terra', category = 'fisico', power = 35, accuracy = 85, pp = 15}
t.purogelo = {name = 'Purogelo', type = 'ghiaccio', category = 'speciale', power = '&mdash;', accuracy = '&mdash;', pp = 5}
t.fanghiglia = {name = 'Fanghiglia', type = 'acqua', category = 'speciale', power = 90, accuracy = 85, pp = 10}
t.semitraglia = {name = 'Semitraglia', type = 'erba', category = 'fisico', power = 25, accuracy = 100, pp = 30}
t.aeroassalto = {name = 'Aeroassalto', type = 'volante', category = 'fisico', power = 60, accuracy = '&mdash;', pp = 20}
t.gelolancia = {name = 'Gelolancia', type = 'ghiaccio', category = 'fisico', power = 25, accuracy = 100, pp = 30}
t.ferroscudo = {name = 'Ferroscudo', type = 'acciaio', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 15}
t.blocco = {name = 'Blocco', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 5}
t.gridodilotta = {name = 'Gridodilotta', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 40}
t.dragartigli = {name = 'Dragartigli', type = 'drago', category = 'fisico', power = 80, accuracy = 100, pp = 15}
t.radicalbero = {name = 'Radicalbero', type = 'erba', category = 'speciale', power = 150, accuracy = 90, pp = 5}
t.granfisico = {name = 'Granfisico', type = 'lotta', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.rimbalzo = {name = 'Rimbalzo', type = 'volante', category = 'fisico', power = 85, accuracy = 85, pp = 5}
t.colpodifango = {name = 'Colpodifango', type = 'terra', category = 'speciale', power = 55, accuracy = 95, pp = 15}
t.velenocoda = {name = 'Velenocoda', type = 'veleno', category = 'fisico', power = 50, accuracy = 100, pp = 25}
t.supplica = {name = 'Supplica', type = 'normale', category = 'fisico', power = 60, accuracy = 100, pp = 25}
t.locomovolt = {name = 'Locomovolt', type = 'elettro', category = 'fisico', power = 120, accuracy = 100, pp = 15}
t.fogliamagica = {name = 'Fogliamagica', type = 'erba', category = 'speciale', power = 60, accuracy = '&mdash;', pp = 20}
t.docciascudo = {name = 'Docciascudo', type = 'acqua', category = 'stato', power = '&mdash;', accuracy = 100, pp = 15}
t.calmamente = {name = 'Calmamente', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.fendifoglia = {name = 'Fendifoglia', type = 'erba', category = 'fisico', power = 90, accuracy = 100, pp = 15}
t.dragodanza = {name = 'Dragodanza', type = 'drago', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.cadutamassi = {name = 'Cadutamassi', type = 'roccia', category = 'fisico', power = 25, accuracy = 90, pp = 10}
t.ondashock = {name = 'Ondashock', type = 'elettro', category = 'speciale', power = 60, accuracy = '&mdash;', pp = 20}
t.idropulsar = {name = 'Idropulsar', type = 'acqua', category = 'speciale', power = 60, accuracy = 100, pp = 20}
t.obbliderio = {name = 'Obbliderio', type = 'acciaio', category = 'speciale', power = 140, accuracy = 100, pp = 5}
t.psicoslancio = {name = 'Psicoslancio', type = 'psico', category = 'speciale', power = 140, accuracy = 90, pp = 5}
t.trespolo = {name = 'Trespolo', type = 'volante', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t['gravità'] = {name = 'Gravità', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 5}
t.miracolvista = {name = 'Miracolvista', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 40}
t.svegliopacca = {name = 'Svegliopacca', type = 'lotta', category = 'fisico', power = 70, accuracy = 100, pp = 10}
t.martelpugno = {name = 'Martelpugno', type = 'lotta', category = 'fisico', power = 100, accuracy = 90, pp = 10}
t.vortexpalla = {name = 'Vortexpalla', type = 'acciaio', category = 'fisico', power = '&mdash;', accuracy = 100, pp = 5, stab = true}
t.curardore = {name = 'Curardore', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.acquadisale = {name = 'Acquadisale', type = 'acqua', category = 'speciale', power = 65, accuracy = 100, pp = 10}
t.dononaturale = {name = 'Dononaturale', type = 'normale', category = 'fisico', power = '&mdash;', accuracy = 100, pp = 15, stab = true}
t.fintoattacco = {name = 'Fintoattacco', type = 'normale', category = 'fisico', power = 30, accuracy = 100, pp = 10}
t.spennata = {name = 'Spennata', type = 'volante', category = 'fisico', power = 60, accuracy = 100, pp = 20}
t.ventoincoda = {name = 'Ventoincoda', type = 'volante', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 15}
t.acupressione = {name = 'Acupressione', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 30}
t.metalscoppio = {name = 'Metalscoppio', type = 'acciaio', category = 'fisico', power = '&mdash;', accuracy = 100, pp = 10}
t.retromarcia = {name = 'Retromarcia', type = 'coleottero', category = 'fisico', power = 70, accuracy = 100, pp = 20}
t.zuffa = {name = 'Zuffa', type = 'lotta', category = 'fisico', power = 120, accuracy = 100, pp = 5}
t.rivincita = {name = 'Rivincita', type = 'buio', category = 'fisico', power = 50, accuracy = 100, pp = 10}
t.garanzia = {name = 'Garanzia', type = 'buio', category = 'fisico', power = 60, accuracy = 100, pp = 10}
t.divieto = {name = 'Divieto', type = 'buio', category = 'stato', power = '&mdash;', accuracy = 100, pp = 15}
t.lancio = {name = 'Lancio', type = 'buio', category = 'fisico', power = '&mdash;', accuracy = 100, pp = 10, stab = true}
t.psicotrasfer = {name = 'Psicotrasfer', type = 'psico', category = 'stato', power = '&mdash;', accuracy = 100, pp = 10}
t.asso = {name = 'Asso', type = 'normale', category = 'speciale', power = '&mdash;', accuracy = '&mdash;', pp = 5, stab = true}
t.anticura = {name = 'Anticura', type = 'psico', category = 'stato', power = '&mdash;', accuracy = 100, pp = 15}
t.strizzata = {name = 'Strizzata', type = 'normale', category = 'speciale', power = '&mdash;', accuracy = 100, pp = 5, stab = true}
t.ingannoforza = {name = 'Ingannoforza', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.gastroacido = {name = 'Gastroacido', type = 'veleno', category = 'stato', power = '&mdash;', accuracy = 100, pp = 10}
t.fortuncanto = {name = 'Fortuncanto', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 30}
t.precedenza = {name = 'Precedenza', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.copione = {name = 'Copione', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.barattoforza = {name = 'Barattoforza', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.barattoscudo = {name = 'Barattoscudo', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.punizione = {name = 'Punizione', type = 'buio', category = 'fisico', power = '&mdash;', accuracy = 100, pp = 5, stab = true}
t.ultimascelta = {name = 'Ultimascelta', type = 'normale', category = 'fisico', power = 140, accuracy = 100, pp = 5}
t.affannoseme = {name = 'Affannoseme', type = 'erba', category = 'stato', power = '&mdash;', accuracy = 100, pp = 10}
t.sbigoattacco = {name = 'Sbigoattacco', type = 'buio', category = 'fisico', power = 70, accuracy = 100, pp = 5}
t.fielepunte = {name = 'Fielepunte', type = 'veleno', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.cuorbaratto = {name = 'Cuorbaratto', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.acquanello = {name = 'Acquanello', type = 'acqua', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.magnetascesa = {name = 'Magnetascesa', type = 'elettro', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.fuococarica = {name = 'Fuococarica', type = 'fuoco', category = 'fisico', power = 120, accuracy = 100, pp = 15}
t.palmoforza = {name = 'Palmoforza', type = 'lotta', category = 'fisico', power = 60, accuracy = 100, pp = 10}
t.forzasfera = {name = 'Forzasfera', type = 'lotta', category = 'speciale', power = 80, accuracy = '&mdash;', pp = 20}
t.lucidatura = {name = 'Lucidatura', type = 'roccia', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.velenpuntura = {name = 'Velenpuntura', type = 'veleno', category = 'fisico', power = 80, accuracy = 100, pp = 20}
t.neropulsar = {name = 'Neropulsar', type = 'buio', category = 'speciale', power = 80, accuracy = 100, pp = 15}
t.nottesferza = {name = 'Nottesferza', type = 'buio', category = 'fisico', power = 70, accuracy = 100, pp = 15}
t.idrondata = {name = 'Idrondata', type = 'acqua', category = 'fisico', power = 90, accuracy = 90, pp = 10}
t.semebomba = {name = 'Semebomba', type = 'erba', category = 'fisico', power = 80, accuracy = 100, pp = 15}
t.eterelama = {name = 'Eterelama', type = 'volante', category = 'speciale', power = 75, accuracy = 95, pp = 15}
t['forbice x'] = {name = 'Forbice X', type = 'coleottero', category = 'fisico', power = 80, accuracy = 100, pp = 15}
t.ronzio = {name = 'Ronzio', type = 'coleottero', category = 'speciale', power = 90, accuracy = 100, pp = 10}
t.dragopulsar = {name = 'Dragopulsar', type = 'drago', category = 'speciale', power = 85, accuracy = 100, pp = 10}
t.dragofuria = {name = 'Dragofuria', type = 'drago', category = 'fisico', power = 100, accuracy = 75, pp = 10}
t.gemmoforza = {name = 'Gemmoforza', type = 'roccia', category = 'speciale', power = 80, accuracy = 100, pp = 20}
t.assorbipugno = {name = 'Assorbipugno', type = 'lotta', category = 'fisico', power = 75, accuracy = 100, pp = 10}
t.vuotonda = {name = 'Vuotonda', type = 'lotta', category = 'speciale', power = 40, accuracy = 100, pp = 30}
t.focalcolpo = {name = 'Focalcolpo', type = 'lotta', category = 'speciale', power = 120, accuracy = 70, pp = 5}
t.energipalla = {name = 'Energipalla', type = 'erba', category = 'speciale', power = 90, accuracy = 100, pp = 10}
t.baldeali = {name = 'Baldeali', type = 'volante', category = 'fisico', power = 120, accuracy = 100, pp = 15}
t.geoforza = {name = 'Geoforza', type = 'terra', category = 'speciale', power = 90, accuracy = 100, pp = 10}
t.rapidscambio = {name = 'Rapidscambio', type = 'buio', category = 'stato', power = '&mdash;', accuracy = 100, pp = 10}
t.gigaimpatto = {name = 'Gigaimpatto', type = 'normale', category = 'fisico', power = 150, accuracy = 90, pp = 5}
t.congiura = {name = 'Congiura', type = 'buio', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.pugnoscarica = {name = 'Pugnoscarica', type = 'acciaio', category = 'fisico', power = 40, accuracy = 100, pp = 30}
t.slavina = {name = 'Slavina', type = 'ghiaccio', category = 'fisico', power = 60, accuracy = 100, pp = 10}
t.geloscheggia = {name = 'Geloscheggia', type = 'ghiaccio', category = 'fisico', power = 40, accuracy = 100, pp = 30}
t.ombrartigli = {name = 'Ombrartigli', type = 'spettro', category = 'fisico', power = 70, accuracy = 100, pp = 15}
t.fulmindenti = {name = 'Fulmindenti', type = 'elettro', category = 'fisico', power = 65, accuracy = 95, pp = 15}
t.gelodenti = {name = 'Gelodenti', type = 'ghiaccio', category = 'fisico', power = 65, accuracy = 95, pp = 15}
t.rogodenti = {name = 'Rogodenti', type = 'fuoco', category = 'fisico', power = 65, accuracy = 95, pp = 15}
t.furtivombra = {name = 'Furtivombra', type = 'spettro', category = 'fisico', power = 40, accuracy = 100, pp = 30}
t.pantanobomba = {name = 'Pantanobomba', type = 'terra', category = 'speciale', power = 65, accuracy = 85, pp = 10}
t.psicotaglio = {name = 'Psicotaglio', type = 'psico', category = 'fisico', power = 70, accuracy = 100, pp = 20}
t['cozzata zen'] = {name = 'Cozzata Zen', type = 'psico', category = 'fisico', power = 80, accuracy = 90, pp = 15}
t.cristalcolpo = {name = 'Cristalcolpo', type = 'acciaio', category = 'speciale', power = 65, accuracy = 85, pp = 10}
t.cannonflash = {name = 'Cannonflash', type = 'acciaio', category = 'speciale', power = 80, accuracy = 100, pp = 10}
t.scalaroccia = {name = 'Scalaroccia', type = 'normale', category = 'fisico', power = 90, accuracy = 85, pp = 20}
t.scacciabruma = {name = 'Scacciabruma', type = 'volante', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 15}
t.distortozona = {name = 'Distortozona', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 5}
t.dragobolide = {name = 'Dragobolide', type = 'drago', category = 'speciale', power = 130, accuracy = 90, pp = 5}
t.scarica = {name = 'Scarica', type = 'elettro', category = 'speciale', power = 80, accuracy = 100, pp = 15}
t.lavasbuffo = {name = 'Lavasbuffo', type = 'fuoco', category = 'speciale', power = 80, accuracy = 100, pp = 15}
t.verdebufera = {name = 'Verdebufera', type = 'erba', category = 'speciale', power = 130, accuracy = 90, pp = 5}
t.vigorcolpo = {name = 'Vigorcolpo', type = 'erba', category = 'fisico', power = 120, accuracy = 85, pp = 10}
t.devastomasso = {name = 'Devastomasso', type = 'roccia', category = 'fisico', power = 150, accuracy = 90, pp = 5}
t.velenocroce = {name = 'Velenocroce', type = 'veleno', category = 'fisico', power = 70, accuracy = 100, pp = 20}
t.sporcolancio = {name = 'Sporcolancio', type = 'veleno', category = 'fisico', power = 120, accuracy = 80, pp = 5}
t.metaltestata = {name = 'Metaltestata', type = 'acciaio', category = 'fisico', power = 80, accuracy = 100, pp = 15}
t.bombagnete = {name = 'Bombagnete', type = 'acciaio', category = 'fisico', power = 60, accuracy = '&mdash;', pp = 20}
t.pietrataglio = {name = 'Pietrataglio', type = 'roccia', category = 'fisico', power = 100, accuracy = 80, pp = 5}
t.incanto = {name = 'Incanto', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 20}
t.levitoroccia = {name = 'Levitoroccia', type = 'roccia', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.laccioerboso = {name = 'Laccioerboso', type = 'erba', category = 'speciale', power = '&mdash;', accuracy = 100, pp = 20, stab = true}
t.schiamazzo = {name = 'Schiamazzo', type = 'volante', category = 'speciale', power = 65, accuracy = 100, pp = 20}
t.giudizio = {name = 'Giudizio', type = 'normale', category = 'speciale', power = 100, accuracy = 100, pp = 10}
t.coleomorso = {name = 'Coleomorso', type = 'coleottero', category = 'fisico', power = 60, accuracy = 100, pp = 20}
t.raggioscossa = {name = 'Raggioscossa', type = 'elettro', category = 'speciale', power = 50, accuracy = 90, pp = 10}
t.mazzuolegno = {name = 'Mazzuolegno', type = 'erba', category = 'fisico', power = 120, accuracy = 100, pp = 15}
t.acquagetto = {name = 'Acquagetto', type = 'acqua', category = 'fisico', power = 40, accuracy = 100, pp = 20}
t.comandourto = {name = 'Comandourto', type = 'coleottero', category = 'fisico', power = 90, accuracy = 100, pp = 15}
t.comandoscudo = {name = 'Comandoscudo', type = 'coleottero', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.comandocura = {name = 'Comandocura', type = 'coleottero', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.zuccata = {name = 'Zuccata', type = 'roccia', category = 'fisico', power = 150, accuracy = 80, pp = 5}
t.doppiosmash = {name = 'Doppiosmash', type = 'normale', category = 'fisico', power = 35, accuracy = 90, pp = 10}
t.fragortempo = {name = 'Fragortempo', type = 'drago', category = 'speciale', power = 150, accuracy = 90, pp = 5}
t.fendispazio = {name = 'Fendispazio', type = 'drago', category = 'speciale', power = 100, accuracy = 95, pp = 5}
t.lunardanza = {name = 'Lunardanza', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.sbriciolmano = {name = 'Sbriciolmano', type = 'normale', category = 'fisico', power = '&mdash;', accuracy = 100, pp = 5, stab = true}
t.magmaclisma = {name = 'Magmaclisma', type = 'fuoco', category = 'speciale', power = 100, accuracy = 75, pp = 5}
t.vuototetro = {name = 'Vuototetro', type = 'buio', category = 'stato', power = '&mdash;', accuracy = 50, pp = 10}
t.infuriaseme = {name = 'Infuriaseme', type = 'erba', category = 'speciale', power = 120, accuracy = 85, pp = 5}
t.funestovento = {name = 'Funestovento', type = 'spettro', category = 'speciale', power = 60, accuracy = 100, pp = 5}
t.oscurotuffo = {name = 'Oscurotuffo', type = 'spettro', category = 'fisico', power = 120, accuracy = 100, pp = 5}
t.unghiaguzze = {name = 'Unghiaguzze', type = 'buio', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 15}
t.bodyguard = {name = 'Bodyguard', type = 'roccia', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.paridifesa = {name = 'Paridifesa', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.pariattacco = {name = 'Pariattacco', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.mirabilzona = {name = 'Mirabilzona', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.psicoshock = {name = 'Psicoshock', type = 'psico', category = 'speciale', power = 80, accuracy = 100, pp = 10}
t.velenoshock = {name = 'Velenoshock', type = 'veleno', category = 'speciale', power = 65, accuracy = 100, pp = 10}
t.sganciapesi = {name = 'Sganciapesi', type = 'acciaio', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 15}
t.polverabbia = {name = 'Polverabbia', type = 'coleottero', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.telecinesi = {name = 'Telecinesi', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 15}
t.magicozona = {name = 'Magicozona', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.abbattimento = {name = 'Abbattimento', type = 'roccia', category = 'fisico', power = 50, accuracy = 100, pp = 15}
t.tempestretta = {name = 'Tempestretta', type = 'lotta', category = 'fisico', power = 60, accuracy = 100, pp = 10}
t.pirolancio = {name = 'Pirolancio', type = 'fuoco', category = 'speciale', power = 70, accuracy = 100, pp = 15}
t.fangonda = {name = 'Fangonda', type = 'veleno', category = 'speciale', power = 95, accuracy = 100, pp = 10}
t.eledanza = {name = 'Eledanza', type = 'coleottero', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.pesobomba = {name = 'Pesobomba', type = 'acciaio', category = 'fisico', power = '&mdash;', accuracy = 100, pp = 10, stab = true}
t.sincrumore = {name = 'Sincrumore', type = 'psico', category = 'speciale', power = 120, accuracy = 100, pp = 15}
t.energisfera = {name = 'Energisfera', type = 'elettro', category = 'speciale', power = '&mdash;', accuracy = 100, pp = 10, stab = true}
t.inondazione = {name = 'Inondazione', type = 'acqua', category = 'stato', power = '&mdash;', accuracy = 100, pp = 20}
t.nitrocarica = {name = 'Nitrocarica', type = 'fuoco', category = 'fisico', power = 50, accuracy = 100, pp = 20}
t.arrotola = {name = 'Arrotola', type = 'veleno', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.calciobasso = {name = 'Calciobasso', type = 'lotta', category = 'fisico', power = 65, accuracy = 100, pp = 20}
t.acidobomba = {name = 'Acidobomba', type = 'veleno', category = 'speciale', power = 40, accuracy = 100, pp = 20}
t.ripicca = {name = 'Ripicca', type = 'buio', category = 'fisico', power = 95, accuracy = 100, pp = 15}
t.ondisinvolta = {name = 'Ondisinvolta', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 15}
t.saltamicizia = {name = 'Saltamicizia', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 15}
t.cortesia = {name = 'Cortesia', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 15}
t.coro = {name = 'Coro', type = 'normale', category = 'speciale', power = 60, accuracy = 100, pp = 15}
t.echeggiavoce = {name = 'Echeggiavoce', type = 'normale', category = 'speciale', power = 40, accuracy = 100, pp = 15}
t.insidia = {name = 'Insidia', type = 'normale', category = 'fisico', power = 70, accuracy = 100, pp = 20}
t.pulifumo = {name = 'Pulifumo', type = 'veleno', category = 'speciale', power = 50, accuracy = '&mdash;', pp = 15}
t.veicolaforza = {name = 'Veicolaforza', type = 'psico', category = 'speciale', power = 20, accuracy = 100, pp = 10}
t.anticipo = {name = 'Anticipo', type = 'lotta', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 15}
t.cambiaposto = {name = 'Cambiaposto', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 15}
t.idrovampata = {name = 'Idrovampata', type = 'acqua', category = 'speciale', power = 80, accuracy = 100, pp = 15}
t.gettaguscio = {name = 'Gettaguscio', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 15}
t.ondasana = {name = 'Ondasana', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.sciagura = {name = 'Sciagura', type = 'spettro', category = 'speciale', power = 65, accuracy = 100, pp = 10}
t.cadutalibera = {name = 'Cadutalibera', type = 'volante', category = 'fisico', power = 60, accuracy = 100, pp = 10}
t.cambiomarcia = {name = 'Cambiomarcia', type = 'acciaio', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.ribaltiro = {name = 'Ribaltiro', type = 'lotta', category = 'fisico', power = 60, accuracy = 90, pp = 10}
t.bruciatutto = {name = 'Bruciatutto', type = 'fuoco', category = 'speciale', power = 60, accuracy = 100, pp = 15}
t.spintone = {name = 'Spintone', type = 'buio', category = 'stato', power = '&mdash;', accuracy = 100, pp = 15}
t.acrobazia = {name = 'Acrobazia', type = 'volante', category = 'fisico', power = 55, accuracy = 100, pp = 15}
t.riflettipo = {name = 'Riflettipo', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 15}
t.nemesi = {name = 'Nemesi', type = 'normale', category = 'fisico', power = 70, accuracy = 100, pp = 5}
t.azzardo = {name = 'Azzardo', type = 'lotta', category = 'speciale', power = '&mdash;', accuracy = 100, pp = 5}
t.cediregalo = {name = 'Cediregalo', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 15}
t.marchiatura = {name = 'Marchiatura', type = 'fuoco', category = 'speciale', power = 100, accuracy = 50, pp = 5}
t.acquapatto = {name = 'Acquapatto', type = 'acqua', category = 'speciale', power = 80, accuracy = 100, pp = 10}
t.fiammapatto = {name = 'Fiammapatto', type = 'fuoco', category = 'speciale', power = 80, accuracy = 100, pp = 10}
t.erbapatto = {name = 'Erbapatto', type = 'erba', category = 'speciale', power = 80, accuracy = 100, pp = 10}
t.invertivolt = {name = 'Invertivolt', type = 'elettro', category = 'speciale', power = 70, accuracy = 100, pp = 20}
t.entomoblocco = {name = 'Entomoblocco', type = 'coleottero', category = 'speciale', power = 50, accuracy = 100, pp = 20}
t.battiterra = {name = 'Battiterra', type = 'terra', category = 'fisico', power = 60, accuracy = 100, pp = 20}
t.alitogelido = {name = 'Alitogelido', type = 'ghiaccio', category = 'speciale', power = 60, accuracy = 90, pp = 10}
t.codadrago = {name = 'Codadrago', type = 'drago', category = 'fisico', power = 60, accuracy = 90, pp = 10}
t.cuordileone = {name = 'Cuordileone', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 30}
t.elettrotela = {name = 'Elettrotela', type = 'elettro', category = 'speciale', power = 55, accuracy = 95, pp = 15}
t.sprizzalampo = {name = 'Sprizzalampo', type = 'elettro', category = 'fisico', power = 90, accuracy = 100, pp = 15}
t.giravvita = {name = 'Giravvita', type = 'terra', category = 'fisico', power = 80, accuracy = 95, pp = 10}
t.doppiocolpo = {name = 'Doppiocolpo', type = 'drago', category = 'fisico', power = 40, accuracy = 90, pp = 15}
t.cuorestampo = {name = 'Cuorestampo', type = 'psico', category = 'fisico', power = 60, accuracy = 100, pp = 25}
t.legnicorno = {name = 'Legnicorno', type = 'erba', category = 'fisico', power = 75, accuracy = 100, pp = 10}
t.spadasolenne = {name = 'Spadasolenne', type = 'lotta', category = 'fisico', power = 90, accuracy = 100, pp = 15}
t.conchilama = {name = 'Conchilama', type = 'acqua', category = 'fisico', power = 75, accuracy = 95, pp = 10}
t.marchiafuoco = {name = 'Marchiafuoco', type = 'fuoco', category = 'fisico', power = '&mdash;', accuracy = 100, pp = 10, stab = true}
t.vorticerba = {name = 'Vorticerba', type = 'erba', category = 'speciale', power = 65, accuracy = 90, pp = 10}
t.rulloduro = {name = 'Rulloduro', type = 'coleottero', category = 'fisico', power = 65, accuracy = 100, pp = 20}
t.cotonscudo = {name = 'Cotonscudo', type = 'erba', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.urtoscuro = {name = 'Urtoscuro', type = 'buio', category = 'speciale', power = 85, accuracy = 95, pp = 10}
t.psicobotta = {name = 'Psicobotta', type = 'psico', category = 'speciale', power = 100, accuracy = 100, pp = 10}
t.spazzasberla = {name = 'Spazzasberla', type = 'normale', category = 'fisico', power = 25, accuracy = 85, pp = 10}
t.tifone = {name = 'Tifone', type = 'volante', category = 'speciale', power = 110, accuracy = 70, pp = 10}
t.ricciolata = {name = 'Ricciolata', type = 'normale', category = 'fisico', power = 120, accuracy = 100, pp = 15}
t.ingracolpo = {name = 'Ingracolpo', type = 'acciaio', category = 'fisico', power = 50, accuracy = 85, pp = 15}
t.sparafuoco = {name = 'Sparafuoco', type = 'fuoco', category = 'speciale', power = 100, accuracy = 100, pp = 5}
t.tecnobotto = {name = 'Tecnobotto', type = 'normale', category = 'speciale', power = 120, accuracy = 100, pp = 5}
t.cantoantico = {name = 'Cantoantico', type = 'normale', category = 'speciale', power = 75, accuracy = 100, pp = 10}
t.spadamistica = {name = 'Spadamistica', type = 'lotta', category = 'speciale', power = 85, accuracy = 100, pp = 10}
t.gelamondo = {name = 'Gelamondo', type = 'ghiaccio', category = 'speciale', power = 65, accuracy = 95, pp = 10}
t.lucesiluro = {name = 'Lucesiluro', type = 'elettro', category = 'fisico', power = 130, accuracy = 85, pp = 5}
t.fuocoblu = {name = 'Fuocoblu', type = 'fuoco', category = 'speciale', power = 130, accuracy = 85, pp = 5}
t.voldifuoco = {name = 'Voldifuoco', type = 'fuoco', category = 'speciale', power = 80, accuracy = 100, pp = 10}
t.elettrogelo = {name = 'Elettrogelo', type = 'ghiaccio', category = 'fisico', power = 140, accuracy = 90, pp = 5}
t.vampagelida = {name = 'Vampagelida', type = 'ghiaccio', category = 'speciale', power = 140, accuracy = 90, pp = 5}
t.urlorabbia = {name = 'Urlorabbia', type = 'buio', category = 'speciale', power = 55, accuracy = 95, pp = 15}
t.scagliagelo = {name = 'Scagliagelo', type = 'ghiaccio', category = 'fisico', power = 85, accuracy = 90, pp = 10}
t['generatore v'] = {name = 'Generatore V', type = 'fuoco', category = 'fisico', power = 180, accuracy = 95, pp = 5}
t.incrofiamma = {name = 'Incrofiamma', type = 'fuoco', category = 'speciale', power = 100, accuracy = 100, pp = 5}
t.incrotuono = {name = 'Incrotuono', type = 'elettro', category = 'fisico', power = 100, accuracy = 100, pp = 5}
t.schiacciatuffo = {name = 'Schiacciatuffo', type = 'lotta', category = 'fisico', power = 80, accuracy = 95, pp = 10}
t.ribaltappeto = {name = 'Ribaltappeto', type = 'lotta', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.rutto = {name = 'Rutto', type = 'veleno', category = 'speciale', power = 120, accuracy = 90, pp = 10}
t.aracampo = {name = 'Aracampo', type = 'terra', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t['rete vischiosa'] = {name = 'Rete Vischiosa', type = 'coleottero', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.pungiglione = {name = 'Pungiglione', type = 'coleottero', category = 'fisico', power = 50, accuracy = 100, pp = 25}
t.spettrotuffo = {name = 'Spettrotuffo', type = 'spettro', category = 'fisico', power = 90, accuracy = 100, pp = 10}
t.halloween = {name = 'Halloween', type = 'spettro', category = 'stato', power = '&mdash;', accuracy = 100, pp = 20}
t.urlo = {name = 'Urlo', type = 'normale', category = 'stato', power = '&mdash;', accuracy = 100, pp = 30}
t.pioggiaplasma = {name = 'Pioggiaplasma', type = 'elettro', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 25}
t.caricaparabola = {name = 'Caricaparabola', type = 'elettro', category = 'speciale', power = 65, accuracy = 100, pp = 20}
t.boscomalocchio = {name = 'Boscomalocchio', type = 'erba', category = 'stato', power = '&mdash;', accuracy = 100, pp = 20}
t.schiacciatuffo = {name = 'Schiacciatuffo', type = 'lotta', category = 'fisico', power = 100, accuracy = 95, pp = 10}
t.fiortempesta = {name = 'Fiortempesta', type = 'erba', category = 'fisico', power = 90, accuracy = 100, pp = 15}
t.liofilizzazione = {name = 'Liofilizzazione', type = 'ghiaccio', category = 'speciale', power = 70, accuracy = 100, pp = 20}
t.incantavoce = {name = 'Incantavoce', type = 'folletto', category = 'speciale', power = 40, accuracy = '&mdash;', pp = 15}
t.monito = {name = 'Monito', type = 'buio', category = 'stato', power = '&mdash;', accuracy = 100, pp = 20}
t.sottosopra = {name = 'Sottosopra', type = 'buio', category = 'stato', power = '&mdash;', accuracy = 100, pp = 20}
t.assorbibacio = {name = 'Assorbibacio', type = 'folletto', category = 'speciale', power = 50, accuracy = 100, pp = 10}
t.truccodifesa = {name = 'Truccodifesa', type = 'folletto', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.fiordifesa = {name = 'Fiordifesa', type = 'folletto', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t['campo erboso'] = {name = 'Campo Erboso', type = 'erba', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t['campo nebbioso'] = {name = 'Campo Nebbioso', type = 'folletto', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.elettrocontagio = {name = 'Elettrocontagio', type = 'elettro', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.carineria = {name = 'Carineria', type = 'folletto', category = 'fisico', power = 90, accuracy = 90, pp = 10}
t['vento di fata'] = {name = 'Vento di Fata', type = 'folletto', category = 'speciale', power = 40, accuracy = 100, pp = 30}
t['forza lunare'] = {name = 'Forza Lunare', type = 'folletto', category = 'speciale', power = 95, accuracy = 100, pp = 15}
t.ondaboato = {name = 'Ondaboato', type = 'normale', category = 'speciale', power = 140, accuracy = 100, pp = 10}
t['blocco fatato'] = {name = 'Blocco Fatato', type = 'folletto', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t['scudo reale'] = {name = 'Scudo Reale', type = 'acciaio', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.simpatia = {name = 'Simpatia', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.confidenza = {name = 'Confidenza', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.diamantempesta = {name = 'Diamantempesta', type = 'roccia', category = 'fisico', power = 100, accuracy = 95, pp = 5}
t.vaporscoppio = {name = 'Vaporscoppio', type = 'acqua', category = 'speciale', power = 110, accuracy = 95, pp = 5}
t.forodimensionale = {name = 'Forodimensionale', type = 'psico', category = 'speciale', power = 80, accuracy = '&mdash;', pp = 5}
t.acqualame = {name = 'Acqualame', type = 'acqua', category = 'speciale', power = 15, accuracy = 100, pp = 20}
t.magifiamma = {name = 'Magifiamma', type = 'fuoco', category = 'speciale', power = 75, accuracy = 100, pp = 10}
t.agodifesa = {name = 'Agodifesa', type = 'erba', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.nebularoma = {name = 'Nebularoma', type = 'folletto', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.elettromistero = {name = 'Elettromistero', type = 'elettro', category = 'stato', power = '&mdash;', accuracy = 100, pp = 15}
t.velenotrappola = {name = 'Velenotrappola', type = 'veleno', category = 'stato', power = '&mdash;', accuracy = 100, pp = 20}
t.pulviscoppio = {name = 'Pulviscoppio', type = 'coleottero', category = 'stato', power = '&mdash;', accuracy = 100, pp = 20}
t.geocontrollo = {name = 'Geocontrollo', type = 'folletto', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t['controllo polare'] = {name = 'Controllo Polare', type = 'elettro', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.cuccagna = {name = 'Cuccagna', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 30}
t['campo elettrico'] = {name = 'Campo Elettrico', type = 'elettro', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.magibrillio = {name = 'Magibrillio', type = 'folletto', category = 'speciale', power = 80, accuracy = 100, pp = 10}
t.auguri = {name = 'Auguri', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 40}
t['mano nella mano'] = {name = 'Mano nella Mano', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 40}
t['occhioni teneri'] = {name = 'Occhioni Teneri', type = 'folletto', category = 'stato', power = '&mdash;', accuracy = 100, pp = 30}
t.elettrococcola = {name = 'Elettrococcola', type = 'elettro', category = 'fisico', power = 20, accuracy = 100, pp = 20}
t.riguardo = {name = 'Riguardo', type = 'normale', category = 'fisico', power = 40, accuracy = 100, pp = 40}
t.assillo = {name = 'Assillo', type = 'coleottero', category = 'speciale', power = 20, accuracy = 100, pp = 20}
t.crescipugno = {name = 'Crescipugno', type = 'lotta', category = 'fisico', power = 40, accuracy = 100, pp = 20}
t['ali del fato'] = {name = 'Ali del Fato', type = 'volante', category = 'speciale', power = 80, accuracy = 100, pp = 10}
t['mille frecce'] = {name = 'Mille Frecce', type = 'terra', category = 'fisico', power = 90, accuracy = 100, pp = 10}
t['mille onde'] = {name = 'Mille Onde', type = 'terra', category = 'fisico', power = 90, accuracy = 100, pp = 10}
t['forza tellurica'] = {name = 'Forza Tellurica', type = 'terra', category = 'fisico', power = 90, accuracy = 100, pp = 10}
t['luce nefasta'] = {name = 'Luce Nefasta', type = 'folletto', category = 'speciale', power = 140, accuracy = 90, pp = 5}
t.primopulsar = {name = 'Primopulsar', type = 'acqua', category = 'speciale', power = 110, accuracy = 85, pp = 10}
t['spade telluriche'] = {name = 'Spade Telluriche', type = 'terra', category = 'fisico', power = 120, accuracy = 85, pp = 10}
t['ascesa del drago'] = {name = 'Ascesa del Drago', type = 'volante', category = 'fisico', power = 120, accuracy = 100, pp = 5}
t.urtodimensionale = {name = 'Urtodimensionale', type = 'buio', category = 'fisico', power = 100, accuracy = '&mdash;', pp = 5}
t.sabbiaccumulo = {name = 'Sabbiaccumulo', type = 'terra', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.schermaglia = {name = 'Schermaglia', type = 'coleottero', category = 'fisico', power = 90, accuracy = 100, pp = 10}
t.fortino = {name = 'Fortino', type = 'veleno', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t["cucitura d'ombra"] = {name = "Cucitura d'Ombra", type = 'spettro', category = 'fisico', power = 80, accuracy = 100, pp = 10}
t.braccioteso = {name = 'Braccioteso', type = 'buio', category = 'fisico', power = 85, accuracy = 100, pp = 10}
t['canto effimero'] = {name = 'Canto Effimero', type = 'acqua', category = 'speciale', power = 90, accuracy = 100, pp = 10}
t.martelgelo = {name = 'Martelgelo', type = 'ghiaccio', category = 'fisico', power = 100, accuracy = 90, pp = 10}
t['cura floreale'] = {name = 'Cura Floreale', type = 'folletto', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t['forza equina'] = {name = 'Forza Equina', type = 'terra', category = 'fisico', power = 95, accuracy = 95, pp = 10}
t.assorbiforza = {name = 'Assorbiforza', type = 'erba', category = 'stato', power = '&mdash;', accuracy = 100, pp = 10}
t['lama solare'] = {name = 'Lama Solare', type = 'erba', category = 'fisico', power = 125, accuracy = 100, pp = 10}
t.fogliame = {name = 'Fogliame', type = 'erba', category = 'fisico', power = 40, accuracy = 100, pp = 40}
t.riflettore = {name = 'Riflettore', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 15}
t.velenotela = {name = 'Velenotela', type = 'veleno', category = 'stato', power = '&mdash;', accuracy = 100, pp = 20}
t.concentrazione = {name = 'Concentrazione', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 30}
t['marciainpiù'] = {name = 'Marciainpiù', type = 'acciaio', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t['colpo infernale'] = {name = 'Colpo Infernale', type = 'buio', category = 'fisico', power = 80, accuracy = 100, pp = 15}
t.sferapolline = {name = 'Sferapolline', type = 'coleottero', category = 'speciale', power = 90, accuracy = 100, pp = 15}
t["colpo d'ancora"] = {name = "Colpo d'Ancora", type = 'acciaio', category = 'fisico', power = 80, accuracy = 100, pp = 20}
t['campo psichico'] = {name = 'Campo Psichico', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.assalto = {name = 'Assalto', type = 'coleottero', category = 'fisico', power = 80, accuracy = 100, pp = 15}
t['frusta di fuoco'] = {name = 'Frusta di Fuoco', type = 'fuoco', category = 'fisico', power = 80, accuracy = 100, pp = 15}
t.tracotanza = {name = 'Tracotanza', type = 'buio', category = 'fisico', power = 20, accuracy = 100, pp = 10}
t['ultima fiamma'] = {name = 'Ultima Fiamma', type = 'fuoco', category = 'speciale', power = 130, accuracy = 100, pp = 5}
t.velociscambio = {name = 'Velociscambio', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 10}
t.sottilcorno = {name = 'Sottilcorno', type = 'acciaio', category = 'fisico', power = 70, accuracy = '&mdash;', pp = 10}
t.purificazione = {name = 'Purificazione', type = 'veleno', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.mutadanza = {name = 'Mutadanza', type = 'normale', category = 'speciale', power = 90, accuracy = 100, pp = 15}
t.nucleocastigo = {name = 'Nucleocastigo', type = 'drago', category = 'speciale', power = 100, accuracy = 100, pp = 10}
t.tropicalcio = {name = 'Tropicalcio', type = 'erba', category = 'fisico', power = 70, accuracy = 100, pp = 15}
t.imposizione = {name = 'Imposizione', type = 'psico', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 15}
t.cannonbecco = {name = 'Cannonbecco', type = 'Volante', category = 'fisico', power = 100, accuracy = 100, pp = 15}
t.clamorsquame = {name = 'Clamorsquame', type = 'drago', category = 'speciale', power = 110, accuracy = 100, pp = 5}
t.marteldrago = {name = 'Marteldrago', type = 'drago', category = 'fisico', power = 90, accuracy = 100, pp = 15}
t.vorticolpo = {name = 'Vorticolpo', type = 'buio', category = 'fisico', power = 60, accuracy = 100, pp = 20}
t.velaurora = {name = 'Velaurora', type = 'ghiaccio', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.gusciotrappola = {name = 'Gusciotrappola', type = 'fuoco', category = 'speciale', power = 150, accuracy = 100, pp = 5}
t.cannonfiore = {name = 'Cannonfiore', type = 'folletto', category = 'speciale', power = 130, accuracy = 90, pp = 5}
t.psicozanna = {name = 'Psicozanna', type = 'psico', category = 'fisico', power = 85, accuracy = 100, pp = 10}
t.battipiedi = {name = 'Battipiedi', type = 'terra', category = 'fisico', power = 75, accuracy = 100, pp = 10}
t.ossotetro = {name = 'Ossotetro', type = 'spettro', category = 'fisico', power = 85, accuracy = 100, pp = 10}
t.rocciarapida = {name = 'Rocciarapida', type = 'roccia', category = 'fisico', power = 40, accuracy = 100, pp = 20}
t.idrobreccia = {name = 'Idrobreccia', type = 'acqua', category = 'fisico', power = 85, accuracy = 100, pp = 10}
t.prismalaser = {name = 'Prismalaser', type = 'psico', category = 'speciale', power = 160, accuracy = 100, pp = 10}
t.ombrafurto = {name = 'Ombrafurto', type = 'spettro', category = 'fisico', power = 90, accuracy = 100, pp = 10}
t.astrocarica = {name = 'Astrocarica', type = 'acciaio', category = 'fisico', power = 100, accuracy = 100, pp = 5}
t["raggio d'ombra"] = {name = "Raggio d'Ombra", type = 'spettro', category = 'speciale', power = 100, accuracy = 100, pp = 5}
t.occhionilucidi = {name = 'Occhionilucidi', type = 'normale', category = 'stato', power = '&mdash;', accuracy = '&mdash;', pp = 20}
t.elettropizzico = {name = 'Elettropizzico', type = 'elettro', category = 'fisico', power = 80, accuracy = 100, pp = 10}
t['ira della natura'] = {name = "Ira della Natura", type = 'folletto', category = 'speciale', power = '&mdash;', accuracy = 90, pp = 10}
t.multiattacco = {name = 'Multiattacco', type = 'normale', category = 'fisico', power = 90, accuracy = 100, pp = 10}
t['geyser fotonico'] = {name = 'Geyser Fotonico', type = 'psico', category = 'speciale', power = 100, accuracy = 100, pp = 5}
t['sbalorditesta'] = {name = 'Sbalorditesta', type = 'fuoco', category = 'speciale', power = 150, accuracy = 100, pp = 5}
t['pugni plasma'] = {name = 'Pugni Plasma', type = 'elettro', category = 'fisico', power = 100, accuracy = 100, pp = 15}
t['pugni corazzati'] = {name = 'Pugni Corazzati', type = 'acciaio', category = 'fisico', power = 60, accuracy = 100, pp = 5}

return t
