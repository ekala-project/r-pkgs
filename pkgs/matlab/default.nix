{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "matlab";
  version = "1.0.4.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/matlab_1.0.4.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/matlab/matlab_1.0.4.1.tar.gz"
    ];
    sha256 = "0l7xqim6sziz3wlxzxc0rjfjrbwidj2l0wri9w5bzabk1dbblgzw";
  };

  meta = {
    description = "R package matlab";
    homepage = "https://cran.r-project.org/package=matlab";
  };
}
