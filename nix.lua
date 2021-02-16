VERSION = "0.0.2"
local config = import("micro/config")

config.RegisterCommonOption("nix", "nix", true)
config.AddRuntimeFile("nix", config.RTSyntax, "nix.yaml")

function init()
	linter.makeLinter("nix", "nix", "nix-linter", {"-q", "%f"}, "%f:%l:%c:%m", {}, false, true)
end
