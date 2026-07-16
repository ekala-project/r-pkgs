{
  buildRPackage,
  fetchurl,
  BiocManager,
  yulab_utils,
}:

buildRPackage {
  pname = "rvcheck";
  version = "0.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rvcheck_0.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rvcheck/rvcheck_0.2.1.tar.gz"
    ];
    sha256 = "09khjklvzbafd7r55496by01a9g3y291d87hpy43w44dmz9fzn9a";
  };

  propagatedBuildInputs = [
    BiocManager
    yulab_utils
  ];

  meta = {
    description = "R package rvcheck";
    homepage = "https://cran.r-project.org/package=rvcheck";
  };
}
