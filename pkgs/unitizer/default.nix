{
  buildRPackage,
  fetchurl,
  crayon,
  diffobj,
}:

buildRPackage {
  pname = "unitizer";
  version = "1.4.23";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/unitizer_1.4.23.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/unitizer/unitizer_1.4.23.tar.gz"
    ];
    sha256 = "0ivbp4k6g8d7iir5lh4kphr7a1hsxppwdh6fapvhivq0gk461y38";
  };

  propagatedBuildInputs = [
    crayon
    diffobj
  ];

  meta = {
    description = "R package unitizer";
    homepage = "https://cran.r-project.org/package=unitizer";
  };
}
