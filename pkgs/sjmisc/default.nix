{
  buildRPackage,
  fetchurl,
  datawizard,
  dplyr,
  insight,
  magrittr,
  purrr,
  rlang,
  sjlabelled,
  tidyselect,
}:

buildRPackage {
  pname = "sjmisc";
  version = "2.8.11";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sjmisc_2.8.11.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sjmisc/sjmisc_2.8.11.tar.gz"
    ];
    sha256 = "0b0mfaqwn8bih7zfmd0h60sfmwnvy0m5niimh4mdcm8mzfiddlcf";
  };

  propagatedBuildInputs = [
    datawizard
    dplyr
    insight
    magrittr
    purrr
    rlang
    sjlabelled
    tidyselect
  ];

  meta = {
    description = "R package sjmisc";
    homepage = "https://cran.r-project.org/package=sjmisc";
  };
}
