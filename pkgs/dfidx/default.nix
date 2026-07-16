{
  buildRPackage,
  fetchurl,
  Formula,
  Rdpack,
}:

buildRPackage {
  pname = "dfidx";
  version = "0.2-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dfidx_0.2-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dfidx/dfidx_0.2-0.tar.gz"
    ];
    sha256 = "1q2sch77s72140mwy6nj29l71fs1wzvqhmxn21safm2ia5a5xfk5";
  };

  propagatedBuildInputs = [
    Formula
    Rdpack
  ];

  meta = {
    description = "R package dfidx";
    homepage = "https://cran.r-project.org/package=dfidx";
  };
}
