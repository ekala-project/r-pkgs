{
  buildRPackage,
  fetchurl,
  htmltools,
  shiny,
}:

buildRPackage {
  pname = "miniUI";
  version = "0.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/miniUI_0.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/miniUI/miniUI_0.1.2.tar.gz"
    ];
    sha256 = "0by2g7wfn4jwzz79hw2y72nxsdl67cr6ix902wj8blw4flglhyh1";
  };

  propagatedBuildInputs = [
    htmltools
    shiny
  ];

  meta = {
    description = "R package miniUI";
    homepage = "https://cran.r-project.org/package=miniUI";
  };
}
