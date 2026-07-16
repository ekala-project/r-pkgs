{
  buildRPackage,
  fetchurl,
  MASS,
  boot,
}:

buildRPackage {
  pname = "CircStats";
  version = "0.2-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/CircStats_0.2-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/CircStats/CircStats_0.2-7.tar.gz"
    ];
    sha256 = "0mp463w7myizvidhjnljzhyb1vrc1ajyay876g2w7k919klsnvcz";
  };

  propagatedBuildInputs = [
    MASS
    boot
  ];

  meta = {
    description = "R package CircStats";
    homepage = "https://cran.r-project.org/package=CircStats";
  };
}
