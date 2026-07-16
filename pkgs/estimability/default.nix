{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "estimability";
  version = "1.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/estimability_1.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/estimability/estimability_1.5.1.tar.gz"
    ];
    sha256 = "1sa42rczhzfj0dkn8v1pq6b752rh6h7x553gcgl7g27x75mbk9iw";
  };

  meta = {
    description = "R package estimability";
    homepage = "https://cran.r-project.org/package=estimability";
  };
}
