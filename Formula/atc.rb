class Atc < Formula
  desc "Fast AtCoder workflow from your terminal"
  homepage "https://github.com/toppoun/atc-rs"
  url "https://github.com/toppoun/atc-rs/releases/download/v0.1.0-rc.8/atc-v0.1.0-rc.8-macos-aarch64.tar.gz"
  version "0.1.0-rc.8"
  sha256 "991199fe30eaa92cc7164515854a29cf8ec6b6ab08408a921d072b84f2834979"
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