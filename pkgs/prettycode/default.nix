{
  buildRPackage,
  fetchurl,
  crayon,
}:

buildRPackage {
  pname = "prettycode";
  version = "1.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/prettycode_1.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/prettycode/prettycode_1.1.0.tar.gz"
    ];
    sha256 = "1ifh9h73szc23p1ii77z0r68n1gghndqqdm07wd7gxsg5pppp1sg";
  };

  propagatedBuildInputs = [
    crayon
  ];

  meta = {
    description = "R package prettycode";
    homepage = "https://cran.r-project.org/package=prettycode";
  };
}
