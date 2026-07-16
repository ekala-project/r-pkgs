{
  buildRPackage,
  fetchurl,
  survival,
}:

buildRPackage {
  pname = "muhaz";
  version = "1.2.6.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/muhaz_1.2.6.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/muhaz/muhaz_1.2.6.4.tar.gz"
    ];
    sha256 = "1ddy8ayr4rdhzcipdvxdwd7z5g9hfp0ppacl7xf6f2612cn1185g";
  };

  propagatedBuildInputs = [
    survival
  ];

  meta = {
    description = "R package muhaz";
    homepage = "https://cran.r-project.org/package=muhaz";
  };
}
