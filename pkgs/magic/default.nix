{
  buildRPackage,
  fetchurl,
  abind,
}:

buildRPackage {
  pname = "magic";
  version = "1.6-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/magic_1.6-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/magic/magic_1.6-1.tar.gz"
    ];
    sha256 = "0xkrrg5qk62pfqx0avijdjaljzslpwd0hv2m52qnqwrbx5xfqyfa";
  };

  propagatedBuildInputs = [
    abind
  ];

  meta = {
    description = "R package magic";
    homepage = "https://cran.r-project.org/package=magic";
  };
}
