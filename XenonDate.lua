GetSubPrefix = function(a)
    local a = tostring(a):gsub(" ","");
    local bX = "";
    if#a == 2 then 
        local Yp=string.sub(a,#a,#a+1);
        bX = Yp == "1"and"st"or Yp=="2"and"nd"or Yp=="3"and"rd"or"th";
    end;
    return bX;
end;

local h = "%A, %B";local t=os.date(" %d",os.time());
local l = ", %Y.";
h = os.date(h,os.time())..t..GetSubPrefix(t)..os.date(l,os.time());
