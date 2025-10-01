{
  description = "A Collection of Personal Nix Flake Templates";

  outputs = { self, ... }: {
    templates = {
      trivial = {
        path = ./templates/trivial;
        description = "A trivial template that does nothing much.";
      };

      python = {
        path = ./templates/python;
        description = "A simple Python flake.";
      };

      python = {
        path = ./templates/java;
        description = "A simple Java flake.";
      };

      defaultTemplate = self.templates.trivial;
    };
  };
}
