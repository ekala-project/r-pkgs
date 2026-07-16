{
  buildRPackage,
  fetchurl,
  cellranger,
  cpp11,
  minty,
  stringi,
  tibble,
  vctrs,
  withr,
  zip,
}:

buildRPackage {
  pname = "readODS";
  version = "2.3.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/readODS_2.3.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/readODS/readODS_2.3.5.tar.gz"
    ];
    sha256 = "1927s4x4qpgpha1gnwv9lwnxhn01q7z4njbib060wijpx6nxpwyv";
  };

  propagatedBuildInputs = [
    cellranger
    cpp11
    minty
    stringi
    tibble
    vctrs
    withr
    zip
  ];

  meta = {
    description = "R package readODS";
    homepage = "https://cran.r-project.org/package=readODS";
  };
}
