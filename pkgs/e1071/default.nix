{
  buildRPackage,
  fetchurl,
  class,
  proxy,
}:

buildRPackage {
  pname = "e1071";
  version = "1.7-17";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/e1071_1.7-17.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/e1071/e1071_1.7-17.tar.gz"
    ];
    sha256 = "11xcqaihjmdkcdgqajwpwiypj3p8aki10r8zvsk2m327mmqw7svd";
  };

  propagatedBuildInputs = [
    class
    proxy
  ];

  meta = {
    description = "R package e1071";
    homepage = "https://cran.r-project.org/package=e1071";
  };
}
