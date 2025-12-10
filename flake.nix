{
  description = "A Collection of Personal Nix Flake Templates";

  outputs = {self, ...}: {
    templates = {
      trivial = {
        path = ./templates/trivial;
        description = "A trivial template that does nothing much.";
      };

      python = {
        path = ./templates/python;
        description = "A simple Python flake.";
      };

      java = {
        path = ./templates/java;
        description = "A simple Java flake.";
      };

      rust = {
        path = ./templates/rust;
        description = "A simple Rust flake.";
      };

      defaultTemplate = self.templates.trivial;
    };
  };
}
