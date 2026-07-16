{
  buildRPackage,
  fetchurl,
  shape,
}:

buildRPackage {
  pname = "diagram";
  version = "1.6.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/diagram_1.6.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/diagram/diagram_1.6.5.tar.gz"
    ];
    sha256 = "1r3lyl0h7mk9cfg8smr3jydfkjdawaphnxibkxfjqa7029vkxh79";
  };

  propagatedBuildInputs = [
    shape
  ];

  meta = {
    description = "R package diagram";
    homepage = "https://cran.r-project.org/package=diagram";
  };
}
