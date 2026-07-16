{
  buildRPackage,
  fetchurl,
  Rdpack,
  dplyr,
  gap_datasets,
  ggplot2,
  plotly,
}:

buildRPackage {
  pname = "gap";
  version = "1.15.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gap_1.15.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gap/gap_1.15.1.tar.gz"
    ];
    sha256 = "1i6s7cwv2j7h6rypswpvnbkcm7fsia4rgr1abibr6y575hazkk4d";
  };

  propagatedBuildInputs = [
    Rdpack
    dplyr
    gap_datasets
    ggplot2
    plotly
  ];

  meta = {
    description = "R package gap";
    homepage = "https://cran.r-project.org/package=gap";
  };
}
