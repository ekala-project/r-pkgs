{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "pbivnorm";
  version = "0.6.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pbivnorm_0.6.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pbivnorm/pbivnorm_0.6.0.tar.gz"
    ];
    sha256 = "05jzrjqxzbcf6z245hlk7sjxiszv9paadaaimvcx5y5qgi87vhq7";
  };

  meta = {
    description = "R package pbivnorm";
    homepage = "https://cran.r-project.org/package=pbivnorm";
  };
}
