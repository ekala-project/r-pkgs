{
  buildRPackage,
  fetchurl,
  data_table,
  syuzhet,
}:

buildRPackage {
  pname = "lexicon";
  version = "1.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lexicon_1.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lexicon/lexicon_1.2.1.tar.gz"
    ];
    sha256 = "0x7rscsh6par2lj11sby7bmz41cxn63iiw51lgh29z09cg8j606c";
  };

  propagatedBuildInputs = [
    data_table
    syuzhet
  ];

  meta = {
    description = "R package lexicon";
    homepage = "https://cran.r-project.org/package=lexicon";
  };
}
