{
  buildRPackage,
  fetchurl,
  commonmark,
  hunspell,
  knitr,
  xml2,
}:

buildRPackage {
  pname = "spelling";
  version = "2.3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/spelling_2.3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/spelling/spelling_2.3.2.tar.gz"
    ];
    sha256 = "0jq2xgj0lvnc3ran4f3nymwv756ymdlp8vwfjj1kzs6mgx6yawbm";
  };

  propagatedBuildInputs = [
    commonmark
    hunspell
    knitr
    xml2
  ];

  meta = {
    description = "R package spelling";
    homepage = "https://cran.r-project.org/package=spelling";
  };
}
