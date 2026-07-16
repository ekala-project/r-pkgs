{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "whisker";
  version = "0.4.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/whisker_0.4.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/whisker/whisker_0.4.1.tar.gz"
    ];
    sha256 = "1g7jy6dnc5igs7yqy1n7cmy0ia8dm2yi3qj1mil2y0q88m4m2ldz";
  };

  meta = {
    description = "R package whisker";
    homepage = "https://cran.r-project.org/package=whisker";
  };
}
