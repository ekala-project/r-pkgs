{
  buildRPackage,
  fetchurl,
  doFuture,
  foreach,
}:

buildRPackage {
  pname = "kernelshap";
  version = "0.9.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/kernelshap_0.9.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/kernelshap/kernelshap_0.9.1.tar.gz"
    ];
    sha256 = "171mick8z1rry9n1i1si3ca5ax1pasm3p1a14lg7f44xz3d2ggs0";
  };

  propagatedBuildInputs = [
    doFuture
    foreach
  ];

  meta = {
    description = "R package kernelshap";
    homepage = "https://cran.r-project.org/package=kernelshap";
  };
}
