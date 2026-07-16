{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "admisc";
  version = "0.40";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/admisc_0.40.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/admisc/admisc_0.40.tar.gz"
    ];
    sha256 = "04hkyh7vh9f0sr5yqd7dfsfh3jcgv78h0r8ks8swhfb24smcbncc";
  };

  meta = {
    description = "R package admisc";
    homepage = "https://cran.r-project.org/package=admisc";
  };
}
