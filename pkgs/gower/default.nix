{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "gower";
  version = "1.0.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gower_1.0.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gower/gower_1.0.2.tar.gz"
    ];
    sha256 = "0lap31w6y82z65r5byfpijgrn31lh42ssiwncbakn4r60fjnkmag";
  };

  meta = {
    description = "R package gower";
    homepage = "https://cran.r-project.org/package=gower";
  };
}
