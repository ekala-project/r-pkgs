{
  buildRPackage,
  fetchurl,
  proto,
}:

buildRPackage {
  pname = "gsubfn";
  version = "0.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gsubfn_0.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gsubfn/gsubfn_0.7.tar.gz"
    ];
    sha256 = "00j6b8b6xsx6v370h220x233rpk6asca78165y3d48jpwvwisdc9";
  };

  propagatedBuildInputs = [
    proto
  ];

  meta = {
    description = "R package gsubfn";
    homepage = "https://cran.r-project.org/package=gsubfn";
  };
}
