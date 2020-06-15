#!/usr/bin/env texlua

module = "namedef"

sourcefiles   = { "*.dtx", "*.ins" }

typesetfiles  = { "*.dtx" }

checkruns     = 1
typesetruns   = 2

checkengines  = { "pdftex" }

if not release_date then
   dofile(kpse.lookup("l3build.lua"))
end
