{
  buildRPackage,
  fetchurl,
  TTR,
}:

buildRPackage {
  pname = "smoother";
  version = "1.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/smoother_1.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/smoother/smoother_1.3.tar.gz"
    ];
    sha256 = "0xw28qv8f5i05ajx32njnql6hql5njqyc47wcq6c75cxiv44ppz8";
  };

  propagatedBuildInputs = [
    TTR
  ];

  meta = {
    description = "R package smoother";
    homepage = "https://cran.r-project.org/package=smoother";
  };
}
