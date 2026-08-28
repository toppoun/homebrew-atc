class Atc < Formula
  desc "Fast AtCoder workflow from your terminal"
  homepage "https://github.com/toppoun/atc-rs"
  url "https://github.com/toppoun/atc-rs/releases/download/v0.1.0-rc.6/atc-v0.1.0-rc.6-macos-aarch64.tar.gz"
  version "0.1.0-rc.6"
  sha256 "ebbf3fb31f624e4f5d01875ffaafcd40323c05b7bde32d9b3b956503f107ddaf"
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