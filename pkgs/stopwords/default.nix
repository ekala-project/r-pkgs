{
  buildRPackage,
  fetchurl,
  ISOcodes,
}:

buildRPackage {
  pname = "stopwords";
  version = "2.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/stopwords_2.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/stopwords/stopwords_2.3.tar.gz"
    ];
    sha256 = "1ci1cgxrcvlhhplximsfv0plvjdbcd5kv0nphxnpildsn5m1rv65";
  };

  propagatedBuildInputs = [
    ISOcodes
  ];

  meta = {
    description = "R package stopwords";
    homepage = "https://cran.r-project.org/package=stopwords";
  };
}
