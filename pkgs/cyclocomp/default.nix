{
  buildRPackage,
  fetchurl,
  callr,
  crayon,
  desc,
  remotes,
  withr,
}:

buildRPackage {
  pname = "cyclocomp";
  version = "1.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cyclocomp_1.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cyclocomp/cyclocomp_1.1.2.tar.gz"
    ];
    sha256 = "10ypivszv1sw33ba3hjp1sbi6ff00hd05cmfbrks9r6wrg54sdif";
  };

  propagatedBuildInputs = [
    callr
    crayon
    desc
    remotes
    withr
  ];

  meta = {
    description = "R package cyclocomp";
    homepage = "https://cran.r-project.org/package=cyclocomp";
  };
}
