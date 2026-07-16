{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "withr";
  version = "3.0.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/withr_3.0.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/withr/withr_3.0.2.tar.gz"
    ];
    sha256 = "18y1jbyf6b70zm0kyjdjhdzyskhsbaww3j0kpyjcqxfjjgs0afha";
  };

  meta = {
    description = "R package withr";
    homepage = "https://cran.r-project.org/package=withr";
  };
}
