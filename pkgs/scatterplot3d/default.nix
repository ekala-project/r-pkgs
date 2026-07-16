{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "scatterplot3d";
  version = "0.3-45";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/scatterplot3d_0.3-45.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/scatterplot3d/scatterplot3d_0.3-45.tar.gz"
    ];
    sha256 = "0h43ljf7lg6w6s05cw86b0l7r4cf7lpdbglkfra37jzh77d29m9a";
  };

  meta = {
    description = "R package scatterplot3d";
    homepage = "https://cran.r-project.org/package=scatterplot3d";
  };
}
