{
  buildRPackage,
  fetchurl,
  Matrix,
  cli,
  dplyr,
  generics,
  janeaustenr,
  lifecycle,
  purrr,
  rlang,
  stringr,
  tibble,
  tokenizers,
  vctrs,
}:

buildRPackage {
  pname = "tidytext";
  version = "0.4.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tidytext_0.4.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tidytext/tidytext_0.4.3.tar.gz"
    ];
    sha256 = "1ncpwpqjaz6nk1i82g061llr4vkm1fjn56v6ckini9n9v41f6fwr";
  };

  propagatedBuildInputs = [
    Matrix
    cli
    dplyr
    generics
    janeaustenr
    lifecycle
    purrr
    rlang
    stringr
    tibble
    tokenizers
    vctrs
  ];

  meta = {
    description = "R package tidytext";
    homepage = "https://cran.r-project.org/package=tidytext";
  };
}
