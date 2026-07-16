{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rbibutils";
  version = "2.4.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rbibutils_2.4.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rbibutils/rbibutils_2.4.1.tar.gz"
    ];
    sha256 = "0clgkh94hhb7p2fm26pisyhbbch4i6x2jjd563gzyd8g1a93scfs";
  };

  meta = {
    description = "R package rbibutils";
    homepage = "https://cran.r-project.org/package=rbibutils";
  };
}
