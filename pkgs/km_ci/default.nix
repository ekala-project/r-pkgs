{
  buildRPackage,
  fetchurl,
  survival,
}:

buildRPackage {
  pname = "km_ci";
  version = "0.5-6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/km_ci_0.5-6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/km_ci/km_ci_0.5-6.tar.gz"
    ];
    sha256 = "18sc9vhbdgks8lhk2nfxkkayh8j4j227hl63fm5p04f7z4wm6wc1";
  };

  propagatedBuildInputs = [
    survival
  ];

  meta = {
    description = "R package km_ci";
    homepage = "https://cran.r-project.org/package=km_ci";
  };
}
