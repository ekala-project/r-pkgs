{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "ISOcodes";
  version = "2026.03.28";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ISOcodes_2026.03.28.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ISOcodes/ISOcodes_2026.03.28.tar.gz"
    ];
    sha256 = "01l6rvafanfs3q9qy2xljvmp6935p0c5zkzggpdqsvs19sa13fcg";
  };

  meta = {
    description = "R package ISOcodes";
    homepage = "https://cran.r-project.org/package=ISOcodes";
  };
}
