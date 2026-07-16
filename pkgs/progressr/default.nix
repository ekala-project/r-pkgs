{
  buildRPackage,
  fetchurl,
  digest,
}:

buildRPackage {
  pname = "progressr";
  version = "0.19.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/progressr_0.19.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/progressr/progressr_0.19.0.tar.gz"
    ];
    sha256 = "0wx9llwya1h2z0wpsiy24b3gxmcqxzyz8i5ixpdahf5m9hfvmprq";
  };

  propagatedBuildInputs = [
    digest
  ];

  meta = {
    description = "R package progressr";
    homepage = "https://cran.r-project.org/package=progressr";
  };
}
