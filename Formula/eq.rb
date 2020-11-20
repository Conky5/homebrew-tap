class Eq < Formula
  desc "A simple command line interface for Elasticsearch queries."
  homepage "https://github.com/Conky5/eq"
  version "1.0.0"

  if OS.mac?
    url "https://github.com/Conky5/eq/releases/download/v1.0.0/eq-v1.0.0-x86_64-apple-darwin.tar.gz"
    sha256 "2d1fa6a2def51b3754906d4d6a4ea4f478eb6d65cfa79c38483b09acb4ca7738"
  elsif OS.linux?
    url "https://github.com/Conky5/eq/releases/download/v1.0.0/eq-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1662fce600d04060eab98caee17c0a7aebe47d6afb4d790e87e0a84231128058"
  end

  def install
    bin.install "eq"
  end

  test do
    system "#{bin}/eq --version"
  end
end

