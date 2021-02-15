VERSION = "0.0.1"
local config = import("micro/config")

config.RegisterCommonOption("nix", true)
config.AddRuntimeFile("nix", config.RTSyntax, "nix.yaml")

function init()
	linter.makeLinter("nix-linter", "nix", "nix-linter", {"%f"}, "%m at %f:%l:%c", {"linux"}, true, true, 0, 0, nixLinterReturn)
end

function nixLinterReturn(buf)
	return buf.Settings["nix"]
end
