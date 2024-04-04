-- mod-version:3


--- imports
local core = require "core";
local CommandView = require "core.commandview";
local DocView = require "core.docview";
local RootView = require "core.rootview";
---


--- globals
FILE = USERDIR .. PATHSEP .. "init.lua";
FILE_HANDLE = io.open(FILE, "r+");
DEBUG = true;
---


--- debugging
if DEBUG then
    USERDIR = "/Users/rohanvashisht/.config/lite-xl";
    PATHSEP = "/";
end
---


--- locals
local lines = {};
---


--- read file and store in lines
for line in io.lines(FILE) do
    lines[#lines + 1] = line;
end
---


--- write to the file handle its contents as comments
for line in lines do
    FILE_HANDLE:write("-- " .. line);
end
---


--- close the file handle
FILE_HANDLE:close();
---
