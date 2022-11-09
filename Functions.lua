function RoundInteger(number) --Rounds input to nearest whole number
return math.floor(number+0.5)
end
--Example: RoundInteger(11.87) will return 12


function RoundFactor(number,factor) --Rounds number to nearest multiple of factor
return math.floor(number/factor+0.5)*factor
end
--Example: RoundFactor(563,100) will return 600

function CommaSeparator(number) --Inserts commas every third digit
  return tostring(number):reverse():gsub("%d%d%d","%1,"):reverse():gsub("^,", "")
end
--Example: CommaSeparator(525724) will return 525,724

function SpaceSeparator(number) --Inserts spaces every third digit
  return tostring(number):reverse():gsub("%d%d%d","%1 "):reverse():gsub("^,", "")
end
--Example: SpaceSeparator(482583) will return 482 583

function toboolean(object) --Takes a string or integer value and returns a boolean
    if object==1 or object=="1" or object=="true" then return true end
    if object==0 or object=="0" or object=="false" then return false end
end
--Example: toboolean(0) will return false
--Example: toboolean("1") will return true

function TablePrint(table)
   if type(table) == 'table' then
      local s = '{ '
      for k,v in pairs(table) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. TablePrint(v) .. ','
      end
      return s .. '} '
   else
      return tostring(table)
   end
end
