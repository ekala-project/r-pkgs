{
  buildRPackage,
  fetchurl,
  ore,
}:

buildRPackage {
  pname = "reportr";
  version = "1.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/reportr_1.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/reportr/reportr_1.3.1.tar.gz"
    ];
    sha256 = "01grnwhgz7ff796fra3320i0bpvwi8ja0hqsvl0s0jlbq9rxb9az";
  };

  propagatedBuildInputs = [
    ore
  ];

  meta = {
    description = "R package reportr";
    homepage = "https://cran.r-project.org/package=reportr";
  };
}
