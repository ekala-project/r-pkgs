{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "bindr";
  version = "0.1.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bindr_0.1.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bindr/bindr_0.1.3.tar.gz"
    ];
    sha256 = "0vrlfws1qrs6xi41c5i3x5hb8mcghbh7l09bdmv7syyj2bcac4pj";
  };

  meta = {
    description = "R package bindr";
    homepage = "https://cran.r-project.org/package=bindr";
  };
}
