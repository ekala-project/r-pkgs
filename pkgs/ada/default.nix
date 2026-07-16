{
  buildRPackage,
  fetchurl,
  rpart,
}:

buildRPackage {
  pname = "ada";
  version = "2.0-5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ada_2.0-5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ada/ada_2.0-5.1.tar.gz"
    ];
    sha256 = "1393qbcdwwswsil00v6sxgrym4jq1gq6l52xvcpfplxyvf0l327q";
  };

  propagatedBuildInputs = [
    rpart
  ];

  meta = {
    description = "R package ada";
    homepage = "https://cran.r-project.org/package=ada";
  };
}
