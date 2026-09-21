class Atc < Formula
  desc "Fast AtCoder workflow from your terminal"
  homepage "https://github.com/toppoun/atc-rs"
  url "https://github.com/toppoun/atc-rs/releases/download/v0.1.0-rc.10/atc-v0.1.0-rc.10-macos-aarch64.tar.gz"
  version "0.1.0-rc.10"
  sha256 "36892d7fa41b069f1f25beccaac403c1000f50204567211d2fad3a9d38e641bd"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "atc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atc --version")
  end
end