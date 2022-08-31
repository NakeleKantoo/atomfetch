#!/bin/lua

ver="0.0.1"
desc="Fetch the properties of any atom by name or by atomic number"

function lines_from(file)
    local lines = {}
    for line in io.lines(file) do 
      lines[#lines + 1] = line
    end
    return lines
end

local function split(str, sep)
    local result = {}
    local regex = ("([^%s]+)"):format(sep)
    for each in str:gmatch(regex) do
       table.insert(result, each)
    end
    return result
end
  
Elements = lines_from("/etc/atomfetch/info.txt")
function SearchFor(name)
    for index,item in ipairs(Elements) do
        Now = split(item, "|")
        if string.lower(Now[2]) == name then
            return item
        end
    end
end



if arg[1]=="-number" then
    element=Elements[arg[2]+1]
    newElement = split(element, "|")
end

if arg[1]=="-name" then
    element=SearchFor(string.lower(arg[2]))
    --element=Elements[elementNumber]
    newElement=split(element, "|")
end
if arg[1]=="-h" then
    print("AtomFetch:", desc)
    print("Version:", ver)
    print("Flags:")
    print("-number [Atomic Number] Search by atomic number")
    print("-name [Name] Search by name")
    os.exit(0)
end

print("__________________________________░░▒▒__________________________________")
print("________________________________▒▒░░__██________________________________")
print("________________________________▓▓______▒▒______________________________")
print("______________________________██________▒▒______________________________")
print("______________________________▒▒__________▒▒____________________________")
print("____________________________▒▒____________▒▒____________________________")
print("____________________________██__________________________________________")
print("____________________________▒▒______________██__________________________")
print("____________________________________________██__________________________")
print("______░░__________________██________________▒▒____▓▓▒▒▒▒______░░░░░░____")
print("__██________░░██▓▓░░______██____________________▒▒▒▒░░░░░░__________░░▓▓")
print("▒▒__________________▒▒██░░▓▓__________________░░▒▒▓▓▒▒▒▒░░______________")
print("▒▒______________________░░██▒▒______________▓▓▓▓__██████________________")
print("__________________________▒▒░░██________░░██__▒▒__░░▒▒________________▒▒")
print("__░░______________________░░____██░░__▒▒▒▒____██______________________██")
print("__██____________________▒▒________▒▒██________██____________________▓▓__")
print("____▒▒__________________▒▒____▒▒▒▒______██____██__________________▒▒░░__")
print("________▓▓▒▒░░__________▓▓__▓▓__░░▒▒░░░░__░░▓▓▓▓________________██______")
print("______██▒▒░░▒▒________░░██░░░░▒▒░░▒▒__░░▒▒▒▒__▓▓░░____________██________")
print("______██▓▓▒▒▓▓______▓▓__██__▓▓▒▒__▒▒▒▒▒▒░░░░▒▒____▓▓________██__________")
print("________▒▒██░░░░▒▒░░____██__▓▓▓▓▓▓▒▒░░░░▒▒▒▒▒▒▒▒______▓▓__██____________")
print("______________▓▓▒▒______██__▒▒░░▓▓▒▒░░▒▒▓▓▓▓__▒▒________██______________")
print("____________██____██____██__▒▒░░▒▒▓▓▓▓▓▓░░░░▒▒▒▒____▒▒░░__▓▓____________")
print("__________██________▓▓__██__▒▒▒▒▓▓▒▒▒▒▒▒▒▒▒▒░░▒▒__▓▓________▒▒__________")
print("______░░▓▓____________░░██░░░░▒▒▓▓▓▓▒▒▒▒▒▒▒▒__▓▓░░____________▓▓________")
print("______░░________________▓▓__▓▓____▓▓▓▓▒▒__░░▓▓▓▓________________██░░____")
print("____▒▒__________________██____▒▒▒▒______██____██__________________▒▒░░__")
print("__▓▓____________________▒▒________▒▒██________██____________________▒▒__")
print("__________________________░░____██____▓▓▒▒____▓▓______________________██")
print("░░________________________▓▓██____________▒▒▓▓▒▒______________________░░")
print("____________________▒▒██░░██__________________░░██▒▒____________________")
print("__░░____________▓▓██______██______________________░░▒▒▓▓______________▓▓")
print("__░░▓▓▓▓▓▓██▓▓▒▒__________▓▓______________▓▓▒▒▒▒__________▓▓██▓▓▓▓██▓▓__")
print("__________________________▒▒______________▓▓░░░░________________________")
print("________________________________________██▓▓░░▒▒░░______________________")
print("____________________________▒▒____________██▓▓▓▓________________________")
print("____________________________██__________________________________________")
print("____________________________░░____________▓▓____________________________")
print("______________________________▓▓__________▒▒____________________________")
print("______________________________▒▒________▓▓______________________________")
print("________________________________██____░░________________________________")


print("Name:",newElement[2])
print("Atomic Number:",newElement[1])
print("Symbol:", newElement[3])
print("Group:",newElement[9])
print("Period:", newElement[8])

--AtomicNumber|Element|Symbol|AtomicMass|NumberofNeutrons|NumberofProtons|NumberofElectrons|Period|Group|Phase|Radioactive|Natural|Metal|Nonmetal|Metalloid|Type|AtomicRadius|Electronegativity|FirstIonization|Density|MeltingPoint|BoilingPoint|NumberOfIsotopes|Discoverer|Year|SpecificHeat|NumberofShells|NumberofValence