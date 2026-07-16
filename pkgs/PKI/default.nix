{
  buildRPackage,
  fetchurl,
  base64enc,
}:

buildRPackage {
  pname = "PKI";
  version = "0.1-15";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/PKI_0.1-15.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/PKI/PKI_0.1-15.tar.gz"
    ];
    sha256 = "1c77y7pplnxiy7q6w1ic5k0fdgd427qqx6f99rp0m4s59q2jf3cd";
  };

  propagatedBuildInputs = [
    base64enc
  ];

  meta = {
    description = "R package PKI";
    homepage = "https://cran.r-project.org/package=PKI";
  };
}
