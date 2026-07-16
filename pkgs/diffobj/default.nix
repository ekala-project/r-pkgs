{
  buildRPackage,
  fetchurl,
  crayon,
}:

buildRPackage {
  pname = "diffobj";
  version = "0.3.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/diffobj_0.3.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/diffobj/diffobj_0.3.6.tar.gz"
    ];
    sha256 = "11qjwm58lf9r3qy33z89jy801dlss1r2i8wvygkrrcbpf71xj5mk";
  };

  propagatedBuildInputs = [
    crayon
  ];

  meta = {
    description = "R package diffobj";
    homepage = "https://cran.r-project.org/package=diffobj";
  };
}
