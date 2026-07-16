{
  buildRPackage,
  fetchurl,
  R6,
  fs,
  htmltools,
  rappdirs,
  rlang,
}:

buildRPackage {
  pname = "sass";
  version = "0.4.10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sass_0.4.10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sass/sass_0.4.10.tar.gz"
    ];
    sha256 = "0c4vnx3jqpy8iwh3gf7vvclcwjq6mbg4dqr9clki3n3l7wj4rnsa";
  };

  propagatedBuildInputs = [
    R6
    fs
    htmltools
    rappdirs
    rlang
  ];

  meta = {
    description = "R package sass";
    homepage = "https://cran.r-project.org/package=sass";
  };
}
