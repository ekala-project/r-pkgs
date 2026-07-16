{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "RcppSpdlog";
  version = "0.0.29";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppSpdlog_0.0.29.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppSpdlog/RcppSpdlog_0.0.29.tar.gz"
    ];
    sha256 = "1rsm0djzj5qalr56x8khy7w1wwncc09n3xqn5ijckvadnn57ls57";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package RcppSpdlog";
    homepage = "https://cran.r-project.org/package=RcppSpdlog";
  };
}
