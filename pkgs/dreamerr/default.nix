{
  buildRPackage,
  fetchurl,
  Formula,
  stringmagic,
}:

buildRPackage {
  pname = "dreamerr";
  version = "1.5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dreamerr_1.5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dreamerr/dreamerr_1.5.0.tar.gz"
    ];
    sha256 = "0y010ki78kvnm0mb9wmf1a3i6p3gh1kw1c33sd5d1j5s168602sr";
  };

  propagatedBuildInputs = [
    Formula
    stringmagic
  ];

  meta = {
    description = "R package dreamerr";
    homepage = "https://cran.r-project.org/package=dreamerr";
  };
}
