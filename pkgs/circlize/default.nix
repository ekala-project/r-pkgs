{
  buildRPackage,
  fetchurl,
  GlobalOptions,
  colorspace,
  shape,
}:

buildRPackage {
  pname = "circlize";
  version = "0.4.18";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/circlize_0.4.18.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/circlize/circlize_0.4.18.tar.gz"
    ];
    sha256 = "06s8wp6x4x804z3c4asji3wrj4qzdiy2i7jrhnmfygkn728mp1ry";
  };

  propagatedBuildInputs = [
    GlobalOptions
    colorspace
    shape
  ];

  meta = {
    description = "R package circlize";
    homepage = "https://cran.r-project.org/package=circlize";
  };
}
