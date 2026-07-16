{
  buildRPackage,
  fetchurl,
  iterators,
}:

buildRPackage {
  pname = "itertools";
  version = "0.1-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/itertools_0.1-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/itertools/itertools_0.1-3.tar.gz"
    ];
    sha256 = "1ls5biiva10pb1dj3ph4griykb9vam02hkrdmlr5a5wf660hg6xn";
  };

  propagatedBuildInputs = [
    iterators
  ];

  meta = {
    description = "R package itertools";
    homepage = "https://cran.r-project.org/package=itertools";
  };
}
