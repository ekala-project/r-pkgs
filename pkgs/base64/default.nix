{
  buildRPackage,
  fetchurl,
  openssl,
}:

buildRPackage {
  pname = "base64";
  version = "2.0.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/base64_2.0.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/base64/base64_2.0.2.tar.gz"
    ];
    sha256 = "030f8ynlga2qych88d45hk491cfi25hrjwl2gj4gsphljvi7ps5i";
  };

  propagatedBuildInputs = [
    openssl
  ];

  meta = {
    description = "R package base64";
    homepage = "https://cran.r-project.org/package=base64";
  };
}
