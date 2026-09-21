class Atc < Formula
  desc "Fast AtCoder workflow from your terminal"
  homepage "https://github.com/toppoun/atc-rs"
  url "https://github.com/toppoun/atc-rs/releases/download/v0.1.0-rc.11/atc-v0.1.0-rc.11-macos-aarch64.tar.gz"
  version "0.1.0-rc.11"
  sha256 "b39e60a85cfbd6696bf1ecf0f8ec66396703b09a58dcad0e08c603c2551434d9"
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