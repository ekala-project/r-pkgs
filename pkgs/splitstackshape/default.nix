{
  buildRPackage,
  fetchurl,
  data_table,
}:

buildRPackage {
  pname = "splitstackshape";
  version = "1.4.8.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/splitstackshape_1.4.8.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/splitstackshape/splitstackshape_1.4.8.1.tar.gz"
    ];
    sha256 = "1s7k4yhmg2dv967vdl9sgk4jjqk06046w10745ixxh8kqj7mqxg5";
  };

  propagatedBuildInputs = [
    data_table
  ];

  meta = {
    description = "R package splitstackshape";
    homepage = "https://cran.r-project.org/package=splitstackshape";
  };
}
