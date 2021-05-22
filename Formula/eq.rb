class Eq < Formula
  desc "A simple command line interface for Elasticsearch queries"
  homepage "https://github.com/Conky5/eq"
  license "Apache-2.0"
  version "1.0.5"

  if OS.mac?
    url "https://github.com/Conky5/eq/releases/download/v#{version}/eq-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "71a6af98ab9521e390b68bcb99320d8c387ce0f1230ce860f135a796eeaab553"
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Conky5/eq/releases/download/v#{version}/eq-v#{version}-aarch64-aarch64-linux-gnu.tar.gz"
      sha256 "7fbf9c07cd2e1e9a36833a8b1f5f9360e4d7376cc6facb8636cffde51d3a5238"
    else
      url "https://github.com/Conky5/eq/releases/download/v#{version}/eq-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2c1e1e332afe650361591e855b3c8c45477d71548e5236aef8ee3b2e0cb36e23"
    end
  end

  def install
    bin.install "eq"
    man1.install "eq.1"
  end

  test do
    system "#{bin}/eq --version"
  end
end

