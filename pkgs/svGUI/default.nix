{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "svGUI";
  version = "1.0.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/svGUI_1.0.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/svGUI/svGUI_1.0.2.tar.gz"
    ];
    sha256 = "0hri32nld2jcywvc87753kmdghj455pkqbhqjbibhi1lh8rb36n7";
  };

  meta = {
    description = "R package svGUI";
    homepage = "https://cran.r-project.org/package=svGUI";
  };
}
