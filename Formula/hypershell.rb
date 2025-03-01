class Hypershell < Formula
  include Language::Python::Virtualenv

  desc "Process shell commands over a distributed, asynchronous queue"
  homepage "https://hypershell.org"
  url "https://github.com/hypershell/hypershell/archive/refs/tags/2.6.5.tar.gz"
  sha256 "4837399b429a645952b9e684e7dcb11aa9bff7cdfa302430f8f6eb0e4aab50c9"
  license "Apache-2.0"
  version "2.6.5"

  bottle do
    root_url "https://github.com/hypershell/hypershell/releases/download/2.6.5/"
    sha256 cellar: :any, arm64_sequoia: "5cbb8ae8fcba6b927ba5f14275a7afca4f8033ab0e820c25c87ad146c7ed7281"
    sha256 cellar: :any,       sequoia: "e49313c6c1834c2b0af139ed474b9c5a48b7a105c1af881cd97adfb3c85e6190"
  end

  depends_on "rust" => :build
  depends_on "python@3.13"
  depends_on "postgresql"

  resource "bcrypt" do
    url "https://files.pythonhosted.org/packages/bb/5d/6d7433e0f3cd46ce0b43cd65e1db465ea024dbb8216fb2404e919c2ad77b/bcrypt-4.3.0.tar.gz"
    sha256 "3a3fd2204178b6d2adcf09cb4f6426ffef54762577a7c9b54c159008cb288c18"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/fc/97/c783634659c2920c3fc70419e3af40972dbaf758daa229a7d6ea6135c90d/cffi-1.17.1.tar.gz"
    sha256 "1c39c6016c32bc48dd54561950ebd6836e1670f2ae46128f67cf49e789c52824"
  end

  resource "cmdkit" do
    url "https://files.pythonhosted.org/packages/a9/8d/0483d6018a5293ef74889ee132b243d34c324be19378acb93341bbefb43b/cmdkit-2.7.7.tar.gz"
    sha256 "afe20b60ee60658e299dba465248b74c1801bfe24f891ef745b3a6810251c280"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/c7/67/545c79fe50f7af51dbad56d16b23fe33f63ee6a5d956b3cb68ea110cbe64/cryptography-44.0.1.tar.gz"
    sha256 "f51f5705ab27898afda1aaa430f34ad90dc117421057782022edf0600bec5f14"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/38/71/3b932df36c1a044d397a1f92d1cf91ee0a503d91e470cbd670aa66b07ed0/markdown-it-py-3.0.0.tar.gz"
    sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "paramiko" do
    url "https://files.pythonhosted.org/packages/7d/15/ad6ce226e8138315f2451c2aeea985bf35ee910afb477bae7477dc3a8f3b/paramiko-3.5.1.tar.gz"
    sha256 "b2c665bc45b2b215bd7d7f039901b14b067da00f3a11e6640995fd58f2664822"
  end

  resource "psycopg2" do
    url "https://files.pythonhosted.org/packages/62/51/2007ea29e605957a17ac6357115d0c1a1b60c8c984951c19419b3474cdfd/psycopg2-2.9.10.tar.gz"
    sha256 "12ec0b40b0273f95296233e8750441339298e6a572f7039da5b260e3c8b60e11"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1d/b2/31537cf4b1ca988837256c910a668b553fceb8f069bedc4b1c826024b52c/pycparser-2.22.tar.gz"
    sha256 "491c8be9c040f5390f5bf44a5b07752bd07f56edf992381b05c701439eec10f6"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/7c/2d/c3338d48ea6cc0feb8446d8e6937e1408088a72a39937982cc6111d17f84/pygments-2.19.1.tar.gz"
    sha256 "61c16d2a8576dc0649d9f39e089b5f02bcd27fba10d8fb4dcc28173f7a45151f"
  end

  resource "PyNaCl" do
    url "https://files.pythonhosted.org/packages/a7/22/27582568be639dfe22ddb3902225f91f2f17ceff88ce80e4db396c8986da/PyNaCl-1.5.0.tar.gz"
    sha256 "8ac7448f09ab85811607bdd21ec2464495ac8b7c66d146bf545b0f08fb9220ba"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/54/ed/79a089b6be93607fa5cdaedf301d7dfb23af5f25c398d5ead2525b063e17/pyyaml-6.0.2.tar.gz"
    sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/ab/3a/0316b28d0761c6734d6bc14e770d85506c986c85ffb239e688eeaab2c2bc/rich-13.9.4.tar.gz"
    sha256 "439594978a49a09530cff7ebc4b5c7103ef57baf48d5ea3184f21d9a2befa098"
  end

  resource "SQLAlchemy" do
    url "https://files.pythonhosted.org/packages/e4/08/9a90962ea72acd532bda71249a626344d855c4032603924b1b547694b837/sqlalchemy-2.0.38.tar.gz"
    sha256 "e5a4d82bdb4bf1ac1285a68eab02d253ab73355d9f0fe725a97e1e0fa689decb"
  end

  resource "tomli" do
    url "https://files.pythonhosted.org/packages/18/87/302344fed471e44a87289cf4967697d07e532f2421fdaf868a303cbae4ff/tomli-2.2.1.tar.gz"
    sha256 "cd45e1dc79c835ce60f7404ec8119f2eb06d38b1deba146f07ced3bbc44505ff"
  end

  resource "tomli-w" do
    url "https://files.pythonhosted.org/packages/19/75/241269d1da26b624c0d5e110e8149093c759b7a286138f4efd61a60e75fe/tomli_w-1.2.0.tar.gz"
    sha256 "2dd14fac5a47c27be9cd4c976af5a12d87fb1f0b4512f81d69cce3b35ae25021"
  end

  resource "tomlkit" do
    url "https://files.pythonhosted.org/packages/b1/09/a439bec5888f00a54b8b9f05fa94d7f901d6735ef4e55dcec9bc37b5d8fa/tomlkit-0.13.2.tar.gz"
    sha256 "fff5fe59a87295b278abd31bec92c15d9bc4a06885ab12bcea52c71119392e79"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/df/db/f35a00659bc03fec321ba8bce9420de607a1d37f8342eee1863174c69557/typing_extensions-4.12.2.tar.gz"
    sha256 "1a7ead55c7e559dd4dee8856e3a88b41225abfe1ce8df57b7c13915fe121ffb8"
  end

  def install
    virtualenv_install_with_resources

    bin.mkpath
    bin.install_symlink libexec/"bin/hs"

    man1.mkpath
    man1.install "share/man/man1/hs.1"

    bash_completion.mkpath
    bash_completion.install "share/bash_completion.d/hs"

    # TODO: Add zsh-specific completions
    # zsh_completion.mkpath
    # zsh_completion.install "share/zsh/site-functions/_hs"
  end

end
