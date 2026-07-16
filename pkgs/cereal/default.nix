{
  buildRPackage,
  fetchurl,
  jsonlite,
  rlang,
  tibble,
  vctrs,
}:

buildRPackage {
  pname = "cereal";
  version = "0.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cereal_0.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cereal/cereal_0.1.0.tar.gz"
    ];
    sha256 = "02s9hwp387dwzfbwwga05rxayk67zvj49hii7b4ksznynad7khsr";
  };

  propagatedBuildInputs = [
    jsonlite
    rlang
    tibble
    vctrs
  ];

  meta = {
    description = "R package cereal";
    homepage = "https://cran.r-project.org/package=cereal";
  };
}
