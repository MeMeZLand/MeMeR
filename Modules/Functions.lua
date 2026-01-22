local genv = getgenv()

if genv.FLoaded then return end

local oldcloneref = cloneref
local oldclonefunction = clonefunction

local function _cloneref(object)
    if oldcloneref then
        return oldcloneref(object)
    end
    return object
end

local function _clonefunction(func)
    if oldclonefunction then
        return oldclonefunction(func)
    end
    return func
end

genv.cloneref       = _cloneref
genv.clonefunction  = _clonefunction

genv.FLoaded = true
