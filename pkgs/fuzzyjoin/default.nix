{
  buildRPackage,
  fetchurl,
  dplyr,
  geosphere,
  purrr,
  stringdist,
  stringr,
  tibble,
  tidyr,
}:

buildRPackage {
  pname = "fuzzyjoin";
  version = "0.1.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fuzzyjoin_0.1.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fuzzyjoin/fuzzyjoin_0.1.8.tar.gz"
    ];
    sha256 = "0d3sk6dswdxq6jrnhg7prv13kqxj22a6jjcqxkjdm38sckwykw1a";
  };

  propagatedBuildInputs = [
    dplyr
    geosphere
    purrr
    stringdist
    stringr
    tibble
    tidyr
  ];

  meta = {
    description = "R package fuzzyjoin";
    homepage = "https://cran.r-project.org/package=fuzzyjoin";
  };
}
