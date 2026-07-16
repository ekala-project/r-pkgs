{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "CMplot";
  version = "4.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/CMplot_4.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/CMplot/CMplot_4.5.1.tar.gz"
    ];
    sha256 = "0ml6n1wjxrnq13042jihpjlmm6vmkaiks9n49qp7v7rg47gn2ik8";
  };

  meta = {
    description = "R package CMplot";
    homepage = "https://cran.r-project.org/package=CMplot";
  };
}
