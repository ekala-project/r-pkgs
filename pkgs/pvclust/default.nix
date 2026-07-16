{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "pvclust";
  version = "2.2-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pvclust_2.2-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pvclust/pvclust_2.2-0.tar.gz"
    ];
    sha256 = "0082icm54k2yq60k06qpr92a626k39j2jr0046lva4ylmhxqb4kq";
  };

  meta = {
    description = "R package pvclust";
    homepage = "https://cran.r-project.org/package=pvclust";
  };
}
