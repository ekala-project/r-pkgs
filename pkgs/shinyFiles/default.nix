{
  buildRPackage,
  fetchurl,
  fs,
  htmltools,
  jsonlite,
  shiny,
  tibble,
}:

buildRPackage {
  pname = "shinyFiles";
  version = "0.9.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/shinyFiles_0.9.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/shinyFiles/shinyFiles_0.9.3.tar.gz"
    ];
    sha256 = "11kjq0vw5c98lzrg80m9w917lkgw5im2h9wgk1b84vlaxrjy2wja";
  };

  propagatedBuildInputs = [
    fs
    htmltools
    jsonlite
    shiny
    tibble
  ];

  meta = {
    description = "R package shinyFiles";
    homepage = "https://cran.r-project.org/package=shinyFiles";
  };
}
