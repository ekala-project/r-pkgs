{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "NISTunits";
  version = "1.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/NISTunits_1.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/NISTunits/NISTunits_1.0.1.tar.gz"
    ];
    sha256 = "0km9l3k9p35sb1qrhrz4ijjsdihvsp6j7cz5kh46lgf7nn6xdk7a";
  };

  meta = {
    description = "R package NISTunits";
    homepage = "https://cran.r-project.org/package=NISTunits";
  };
}
