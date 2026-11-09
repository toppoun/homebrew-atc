class Atc < Formula
  desc "Fast AtCoder workflow from your terminal"
  homepage "https://github.com/toppoun/atc-rs"
  url "https://github.com/toppoun/atc-rs/releases/download/v0.1.0-rc.13/atc-v0.1.0-rc.13-macos-aarch64.tar.gz"
  version "0.1.0-rc.13"
  sha256 "64e15ab8d627484a193361929ac96eabed32373ff7fa1d272a666bee83b543e4"
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