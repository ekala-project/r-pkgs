{
  buildRPackage,
  fetchurl,
  crayon,
}:

buildRPackage {
  pname = "debugme";
  version = "1.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/debugme_1.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/debugme/debugme_1.2.0.tar.gz"
    ];
    sha256 = "16ghf60rj0l8ypm0hxjp23zxdi2ndq8ii74cilq61m107fnha9mj";
  };

  propagatedBuildInputs = [
    crayon
  ];

  meta = {
    description = "R package debugme";
    homepage = "https://cran.r-project.org/package=debugme";
  };
}
