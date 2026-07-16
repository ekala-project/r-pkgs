{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "fftw";
  version = "1.0-9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fftw_1.0-9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fftw/fftw_1.0-9.tar.gz"
    ];
    sha256 = "167n8yhfai13375lqm1j24ncngrg0m6spj0y0z5187832xydix1y";
  };

  meta = {
    description = "R package fftw";
    homepage = "https://cran.r-project.org/package=fftw";
  };
}
