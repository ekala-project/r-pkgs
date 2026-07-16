{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "stringdist";
  version = "0.9.17";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/stringdist_0.9.17.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/stringdist/stringdist_0.9.17.tar.gz"
    ];
    sha256 = "0v8vyqkfmac5fl2rlgadf0jh9ixymhddl6g37xa8vjn9gm1v8kaw";
  };

  meta = {
    description = "R package stringdist";
    homepage = "https://cran.r-project.org/package=stringdist";
  };
}
