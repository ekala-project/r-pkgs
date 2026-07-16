{
  buildRPackage,
  fetchurl,
  remotes,
}:

buildRPackage {
  pname = "pacman";
  version = "0.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pacman_0.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pacman/pacman_0.5.1.tar.gz"
    ];
    sha256 = "0z7gngd6h83cpjhq1vg75wvzhdjbgjh7gj5d4zvvi9gd2lmagjcy";
  };

  propagatedBuildInputs = [
    remotes
  ];

  meta = {
    description = "R package pacman";
    homepage = "https://cran.r-project.org/package=pacman";
  };
}
