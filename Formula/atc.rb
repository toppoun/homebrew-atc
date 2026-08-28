class Atc < Formula
  desc "Fast AtCoder workflow from your terminal"
  homepage "https://github.com/toppoun/atc-rs"
  url "https://github.com/toppoun/atc-rs/releases/download/v0.1.0-rc.7/atc-v0.1.0-rc.7-macos-aarch64.tar.gz"
  version "0.1.0-rc.7"
  sha256 "bdb0a34ce5397da8d2b9edd2d588f33f498a6e0dd643390187ed8979ea5c539e"
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