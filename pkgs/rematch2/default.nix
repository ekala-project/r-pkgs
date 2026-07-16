{
  buildRPackage,
  fetchurl,
  tibble,
}:

buildRPackage {
  pname = "rematch2";
  version = "2.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rematch2_2.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rematch2/rematch2_2.1.2.tar.gz"
    ];
    sha256 = "1fzpz8vhghw8ygwg6rsvfy3783pqk7ch029i5851lwypkplvz77y";
  };

  propagatedBuildInputs = [
    tibble
  ];

  meta = {
    description = "R package rematch2";
    homepage = "https://cran.r-project.org/package=rematch2";
  };
}
