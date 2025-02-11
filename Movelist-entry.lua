-- Entries for movelists

local m = {}

local mw = require('mw')

local txt = require('Wikilib-strings')          -- luacheck: no unused
local tab = require('Wikilib-tables')           -- luacheck: no unused
local forms = require('Wikilib-forms')
local w = require('Wikilib')
local multigen = require('Wikilib-multigen')
local lib = require('Wikilib-learnlists')
local libdata = require("Wikilib-data")
local ms = require('MiniSprite')
local links = require('Links')
local css = require('Css')
local cc = require('ChooseColor')
local resp = require('Resp')
local gendata = require("Gens-data")
local blackabbr = require("Blackabbrev-data")
local pokes = require("Poké-data")
local groups = require("PokéEggGroup-data")
local useless = require("UselessForms-data")

--[[

This table holds all the interesting values for an entry

Level and tm are handled exactly the same way, so there's actually no reason to
differentiate the entries (they are aliases).
Breed is almost equal but for the parameters processing (#\d{3}# is replaced
with the MS).
Tutor and event are unique, and the latter almost prints its parameter without
processing.

The entries are generated by the "entry" function. This calls two main
functions, "head" that builds the first half of the entry and is independent
of the kind, and "tail" that build the rest of the entry.
The tail is built this way: the general "tail" function takes as parameter the
kind plus any other parameter needed. The kind is used both to select the mapper
from a table (indexed with kinds) AND to format them together.

--]]
local entry = {}

-- Boolean parameters representation
entry.boolDisplay = {no = '×', yes = '✔'}

-- Map from gen to list of game abbrs (that are parameters) of that gen
entry.genGames = {
	[1] = {"Y"}, [2] = {"C"}, [3] = {"FRLG", "E"}, [4] = {"HGSS", "PtHGSS"},
	[5] = {"B2W2"}, [6] = {"ORAS"}, [7] = {"USUM", "LGPE"},
	[8] = {"SpSc"},
}

-- Reverse of the previous table
entry.gameGens = {}
table.map(entry.genGames, function(v, k)
	table.map(v, function(abbr)
		entry.gameGens[abbr] = k
	end)
end)

-- Strings for printing
entry.strings = {
	CELLBOX = [[| class="${textcolor} height-100" style="padding: 0.8ex 0.3ex;${cs}" | <div class="text-center height-100 roundy-5 vert-middle" style="${bg}; padding: 0 0.3ex;">${cnt}</div>]],
}

-- Sorted background colors of tutor cells
entry.tutorCellsColors = {
	'cristallo', 'rossofuoco', 'smeraldo', 'xd', 'diamante', 'platino',
	'heartgold', 'nero', 'nero2', 'x', 'rubinoomega', 'sole', 'ultrasole',
	'lgpikachu', 'spada', 'isolaarmatura'
}

--[[

Data to split parameters of games of the same generation.
This table has an entry for generation. Each generation has a table whose
indexes are the sorted concat of abbrs of game that are in the entry.
Each entry in a gen is a list of tables, with the following keys:
	- bg: bgcolor for the corresponding box
	- abbr: abbr of the corresponding game
	- val: the name of the parameter whose value should be the content of this
			cell. "base" stands for the base value of the current generation
	- colspan (optional): the number of colspan. Defaults to 1

--]]
entry.levelCellsData = {
	[1] = {
		Y = {
			{bg = 'rosso', abbr = 'RVB', val = 'base'},
			{bg = 'giallo', abbr = 'G', val = 'Y'}
		}
	},
	[2] = {
		C = {
			{bg = 'oro', abbr = 'OA', val = 'base'},
			{bg = 'cristallo', abbr = 'C', val = 'C'}
		}
	},
	[3] = {
		FRLG = {
			{bg = 'rubino', abbr = 'RZS', val = 'base', colspan = 2},
			{bg = 'rossofuoco', abbr = 'RFVF', val = 'FRLG'}
		},
		E = {
			{bg = 'rubino', abbr = 'RZRFVF', val = 'base', colspan = 2},
			{bg = 'smeraldo', abbr = 'S', val = 'E'}
		}
	},
	[4] = {
		HGSS = {
			{bg = 'diamante', abbr = 'DPPt', val = 'base', colspan = 2},
			{bg = 'heartgold', abbr = 'HGSS', val = 'HGSS'}
		},
		PtHGSS = {
			{bg = 'diamante', abbr = 'DP', val = 'base', colspan = 2},
			{bg = 'heartgold', abbr = 'PtHGSS', val = 'PtHGSS'}
		}
	},
	[5] = {
		B2W2 = {
			{bg = 'bianco', abbr = 'NB', val = 'base'},
			{bg = 'bianco2', abbr = 'N2B2', val = 'B2W2'}
		}
	},
	[6] = {
		ORAS = {
			{bg = 'x', abbr = 'XY', val = 'base'},
			{bg = 'rubinoomega', abbr = 'ROZA', val = 'ORAS'}
		}
	},
	[7] = {
		USUM = {
			{bg = 'sole', abbr = 'SL', val = 'base', colspan = 2},
			{bg = 'ultrasole', abbr = 'UsUl', val = 'USUM'}
		},
		LGPE = {
			{bg = 'sole', abbr = 'SLUsUl', val = 'base', colspan = 2},
			{bg = 'lgp', abbr = 'LGPE', val = 'LGPE'}
		},
		USUMLGPE = {
			{bg = 'sole', abbr = 'SL', val = 'base'},
			{bg = 'ultrasole', abbr = 'UsUl', val = 'USUM'},
			{bg = 'lgp', abbr = 'LGPE', val = 'LGPE'}
		}
	},
	[8] = {
	},
}

-- Table of level games for generation
entry.levelgames = {
	{ -- 1
		{bg = 'rosso', abbr = 'RVB'},
		{bg = 'giallo', abbr = 'G'},
	},
	{ -- 2
		{bg = 'oro', abbr = 'OA'},
		{bg = 'cristallo', abbr = 'C'},
	},
	{ -- 3
		{bg = 'rubino', abbr = 'RZ'},
		{bg = 'rossofuoco', abbr = 'RFVF'},
		{bg = 'smeraldo', abbr = 'S'},
	},
	{ -- 4
		{bg = 'diamante', abbr = 'DP'},
		{bg = 'platino', abbr = 'Pt'},
		{bg = 'heartgold', abbr = 'HGSS'},
	},
	{ -- 5
		{bg = 'bianco', abbr = 'NB'},
		{bg = 'bianco2', abbr = 'N2B2'},
	},
	{ -- 6
		{bg = 'x', abbr = 'XY'},
		{bg = 'rubinoomega', abbr = 'ROZA'},
	},
	{ -- 7
		{bg = 'sole', abbr = 'SL'},
		{bg = 'ultrasole', abbr = 'UsUl'},
		{bg = 'lgp', abbr = 'LGPE'},
	},
	{ -- 8
		{bg = 'spada', abbr = 'SpSc'},
	},
}

-- Maximum of level columns for a generation. Exported because used also in
-- Movelist/hf
m.maxCellsNumber = table.map(entry.levelgames, function(v)
	return #v
end)

--[[

Prints a (real) cell for a single value.
Arguments:
	- text: text content
	- bgcolor: name of bg color (from modulo colore)
	- bold: whether the content should be bold or not
	- colspan: the number of colspan (default 1)
	- tt: tt text (optional)
	- abbr: games abbr to add after text (optional)
--]]
entry.makeBox = function(text, bgcolor, bold, colspan, tt, abbr)
	local bg = bgcolor:lower() == "fff"
				and ""
				or css.horizGradLua{ type = bgcolor }
	text = bold and table.concat{"'''", text, "'''"} or text
	local cnt = tt and tt ~= "" and links.tt(text, tt) or text
	local tc
	if bgcolor:lower() == "fff" then
		tc = 'black-text'
	else
		tc = cc.forModGradBgLua(bgcolor)
	end
	return string.interp(entry.strings.CELLBOX, {
		bg = bg,
		textcolor = tc,
		cs = colspan and colspan ~= 1
		     and ('" colspan="' .. colspan) or "",
		cnt = abbr and table.concat{"<span>", cnt, blackabbr[abbr] or "",
		                            "</span>"} or cnt,
	})
end

--[[

Table of functions that maps a single value (i.e: one argument of the module) to
a cell, depending on the kind of the movelist.
It's actually a wrapper for makeBox that changes the text depending on kind,
chooses text color (often black) and chooses between tt and abbr.
Parameters are named because of many possible nil:
	- data: the value of the parameter as passed to the module
	- bg: the bg color
	- abbr (optional): the abbr of the game
	- colspan (optional): the number of colspan, default 1

--]]
entry.printValue = {
	level = function(args)
		local text = args.data or "N/D"
		local bg = args.bg
		if text:lower() == 'no' then
			text = entry.boolDisplay.no
			bg = "fff"
		end
		return entry.makeBox(text, bg, true, args.colspan, args.abbr)
	end,
	tm = function(args)
		local text = args.data and entry.boolDisplay[args.data:lower()] or "N/D"
		local bg = args.bg
		if text == entry.boolDisplay.no then
			bg = "fff"
		end
		return entry.makeBox(text, bg, true, args.colspan, args.abbr)
	end,
	breed = function(args)
		local text = args.data or "N/D"
		text = text:match('%#')
				and lib.mslistToModal(text, nil, entry.boolDisplay.yes)
				or text
		local bg = args.bg
		if text:lower() == 'no' then
			text = entry.boolDisplay.no
			bg = "fff"
		end
		return entry.makeBox(text, bg, true, args.colspan, nil, args.abbr)
	end,
	tutor = function(args)
		if not args.data or args.data:lower() == 'x' then
			return ""
		elseif args.data:lower() == "no" then
			return entry.makeBox(entry.boolDisplay.no, "fff", true)
		elseif args.data:lower() == "yes" then
			return entry.makeBox(entry.boolDisplay.yes, args.bg, true)
		end
	end,
	event = function(args)
		-- Should be wrapped in a div because this text may go to multiple lines
		-- and this breaks vert-middle
		local text = table.concat{"<div>", args.data, "</div>"}
		return entry.makeBox(text, args.bg, false)
	end,
}

--[[

This table maps a kind to a function that maps the entry source data to the
string with the actual value.
For instance, given a value from entry.levelCellsData it returns the string
corresponding to the cell for that generation; or given a tutorCellsColors it
returns the cell with the ✔ or × or an empty string, if there is no cell at all.
Keys are the possible values of "kind". Values are functions with two or three
arguments:
	- source: the value from the source table
	- args: arguments of the module needed, as passed to the "tail" function
	- valPrinter: the corresponding function from entry.printValue
	- key (optional): the key of source in the source table

--]]
entry.valueMapper = {
	level = function(source, args, valPrinter, key)
		-- key + args.startGen is the generation of this source because
		-- table.filter compacts integer keys
		local gen = key + args.startGen - 1

		-- Searches for parameters
		local parameters = table.concat(table.mapToNum(
			entry.genGames[gen],
			function(v) return args[v] and v or nil end,
			ipairs
		))
		if parameters == "" then
			-- No extra parameters
			return valPrinter{ data = args[key], bg = gendata[gen].region,
								colspan = m.maxCellsNumber[gen] }
		else
			-- Extra parameters
			local boxes = table.map(source[parameters], function(printData)
				local idx = printData.val == "base" and key or printData.val
				return valPrinter{ data = args[idx], bg = printData.bg,
									abbr = printData.abbr,
									colspan = printData.colspan }
			end)
			return table.concat(boxes, "\n")
		end
	end,
	tutor = function(source, args, valPrinter, key)
		return valPrinter{ data = args[key], bg = source }
	end,
	event = function(source, args, valPrinter)
		return valPrinter{ data = args[1], bg = "fff" }
	end,
}
entry.valueMapper.tm = entry.valueMapper.level
entry.valueMapper.breed = entry.valueMapper.level



--[[

Prints "tail" cells (the ones depending on the kind).
Arguments:
	- kind: a string with the kind of movelist. One of "level", "tm", "breed",
			"tutor" or "event".
	- args: any other args, in a table because they depend on kind

args should contain the following, depending on kind:
	- "level"/"tm"/"breed": args.startGen should be the starting gen of this
			entry, and values from 1 to (currentGen - startGen) should contain
			the value to be displayed. Any other game abbr should be a named parameter.
	- "tutor": an array of "X", "yes" and "no" at most as long as
			entry.tutorCellsColors. Each value is interpreted as no cell, can
			learn and can't learn respectively. Trailing missing values are
			the same as "X".
	- "event": a single value args[1], that is printed as it is.

--]]
entry.tail = function(kind, args)
	kind = kind:lower()
	local dataSource
	if table.search({"level", "tm", "breed"}, kind) then
		dataSource = table.filter(entry.levelCellsData, function(_, k)
			return k >= args.startGen
		end)
	elseif kind == "tutor" then
		dataSource = entry.tutorCellsColors
	else
		-- kind == "event" or any other value (shouldn't happen)
		dataSource = { "" }
	end
	-- Fixing absence of gen 8
	local cells = table.map(dataSource, function(v, k)
		-- Simply applies the right function, depending on kind
		return entry.valueMapper[kind](v, args, entry.printValue[kind], k) .. "\n"
	end)

	return table.concat(table.filter(cells, function(v)
		return string.trim(v) ~= ""
	end))
end

--[[

Print "head" cells (the ones independent of kind)
Arguments:
	- ndex: ndex of the Pokémon
	- args: optional parameters, named to avoid lots of nil in the call:
		* STAB: a string with the STAB value (either the empty string, "''"
		        or "'''")
		* notes: any note that should be added in tt after the Pokémon's name
		* form: the extended name of the form
		* allforms: a true value means that this entry is about all the
				    forms of this Pokémon
		* useless: a true value means that the form of this entry is
			         useless, and will be searched in the right module
		* movename: the name of the move, if different from page name

--]]
entry.head = function(ndex, args)
	local ndexFigures = ndex:match('^(%d+)')
	local abbr = forms.getabbr(ndex, args.form)
	local pokedata = pokes[forms.nameToDataindex(ndexFigures .. forms.toEmptyAbbr(abbr))]
					 or {name = 'Missingno.', ndex = '000'}
	local forml = args.allforms and '<div class="text-small">Tutte le forme</div>' or
					(args.useless
						and useless[tonumber(ndexFigures)].links[abbr]
						or forms.getlink(ndex, false, args.form)
					)
	pokedata = table.merge(
		multigen.getGen(pokedata),
		multigen.getGen(groups[pokedata.ndex] or {group1 = 'sconosciuto'})
	)
	local movename = args.movename or mw.title.getCurrentTitle().text
	local stab = args.STAB == "no" and ""
	             or args.STAB
				 or lib.computeSTAB(ndex, movename, args.form)
	pokedata.group1show = pokedata.group1 == 'coleottero'
							and 'Coleot'
							or (pokedata.group1 == 'non ancora scoperto'
								and 'Non ancora<div>scoperto</div>'
								or string.fu(pokedata.group1)
							)
	pokedata.group2show = pokedata.group2 == 'coleottero'
						and 'Coleot'
						or string.fu(pokedata.group2)
	pokedata.type2 = pokedata.type2 ~= pokedata.type1
					and string.fu(pokedata.type2)
					or nil
	pokedata.type1 = string.fu(pokedata.type1)

	return string.interp([=[|- class="height-100"
| class="hidden-xs" | ${num}
| ${ani}
| <span class="hidden-xs">${stab}[[${name}]]${stab}${notes}${forml}</span>
| class="hidden-sm height-100" style="padding: 0.8ex 0.3ex;" | ${types}
| class="hidden-sm height-100" style="padding: 0.8ex 0.3ex;" | ${groups}
]=],
{
	num = ndexFigures,
	ani = ms.staticLua{ndexFigures .. forms.toEmptyAbbr(abbr)},
	stab = stab,
	name = pokedata.name,
	notes = lib.makeNotes(args.notes or ''),
	forml = forml,
	types = resp.twoTypeBoxesLua(pokedata.type1, pokedata.type2, {'tiny'},
        nil, {'vert-center'}),
	groups = resp.twoEggBoxesLua(pokedata.group1, pokedata.group2, {'tiny'},
        nil, {'vert-center'}),
})
end

--[[

Remove from frame.args useless params, here just because of not up-to-date calls
in the pages.
It would be nice to check whether it's still usefull or no, but it's too long
provided that categories don't work.

--]]
entry.removeOldParams = function(p)
	local pokedata = pokes[tonumber(p[1])] or pokes[p[1]] or {name = 'Missingno.'}
	pokedata = multigen.getGen(pokedata)

	-- rimuove il parametro 2 se è il nome del Pokémon
	if (string.fu(p[2]) == pokedata.name) then
		table.remove(p, 2)
	end
	-- rimuove i parametri 3, 4 e 5 (ora 2, 3 e 4)
	--		se 3 è 1 o 2 (il numero di tipi)
	--		e se 4 e 5 sono tipi
	if (p[2] == '1' or p[2] == '2')
		and p[3]
		and (table.search(libdata.allTypes, string.lower(p[3])) or string.lower(p[3]) == 'coleottero') then
		table.remove(p, 4)
		table.remove(p, 3)
		table.remove(p, 2)
	end

	return p
end

--[[

Generic entry creation function.
Arguments:
	- p: wikicode arguments table
	- kind: a string with the kind of entry ("level", "tm", "breed", "tutor",
			"event")

--]]
entry.entry = function(p, kind)
	p = w.trimAll(p)
	local gen
	-- p[1] can be both a gen number or an ndex, depending on kind
	if table.search({"level", "tm", "breed"}, kind) then
		gen = tonumber(table.remove(p, 1))
		p.startGen = gen
	end
	-- now p[1] is the ndex, and may be followed by old params
	p = entry.removeOldParams(p)
	local ndex = table.remove(p, 1)
	return entry.head(ndex, { STAB = p.STAB, notes = p.note,
	                          form = string.lower(p.form or ''),
							  allforms = p.allforms, useless = p.useless,
							  movename = p.movename
					 })
		.. entry.tail(kind, p)
end

-- ========================= Wikicode interfaces ==============================

--[[

Entry level

--]]
m.level = function(frame)
	return entry.entry(mw.clone(frame.args), "level")
end
m.Level = m.level

--[[

Entry tm

--]]
m.tm = function(frame)
	return entry.entry(mw.clone(frame.args), "tm")
end
m.Tm, m.TM = m.tm, m.tm

--[[

Entry breed

--]]
m.breed = function(frame)
	return entry.entry(mw.clone(frame.args), "breed")
end
m.Breed = m.breed

--[[

Entry event

--]]
m.event = function(frame)
	return entry.entry(mw.clone(frame.args), "event")
end
m.Event = m.event

--[[

Entry tutor

--]]
m.tutor = function(frame)
	return entry.entry(mw.clone(frame.args), "tutor")
end
m.Tutor = m.tutor

return m
