{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "generics";
  version = "0.1.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/generics_0.1.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/generics/generics_0.1.4.tar.gz"
    ];
    sha256 = "0088il4adipaicxy65shbvm6cnxry6576xz6nz1qzlwjfw4mmsdv";
  };

  meta = {
    description = "R package generics";
    homepage = "https://cran.r-project.org/package=generics";
  };
}
