{
  buildRPackage,
  fetchurl,
  R_cache,
  data_table,
  digest,
  httr,
  plyr,
}:

buildRPackage {
  pname = "repmis";
  version = "0.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/repmis_0.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/repmis/repmis_0.5.1.tar.gz"
    ];
    sha256 = "079z5179igxi0bdqsckclqg2pfgq6l2ifbsqn7872bqsyq48w7rp";
  };

  propagatedBuildInputs = [
    R_cache
    data_table
    digest
    httr
    plyr
  ];

  meta = {
    description = "R package repmis";
    homepage = "https://cran.r-project.org/package=repmis";
  };
}
