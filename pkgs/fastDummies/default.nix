{
  buildRPackage,
  fetchurl,
  data_table,
  stringr,
  tibble,
}:

buildRPackage {
  pname = "fastDummies";
  version = "1.7.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fastDummies_1.7.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fastDummies/fastDummies_1.7.6.tar.gz"
    ];
    sha256 = "0kmc5qmcayqlkswgh1hfgq4ydfg26xl6ygambkfng40qn3rvnh6i";
  };

  propagatedBuildInputs = [
    data_table
    stringr
    tibble
  ];

  meta = {
    description = "R package fastDummies";
    homepage = "https://cran.r-project.org/package=fastDummies";
  };
}
