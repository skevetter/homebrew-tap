class Nous < Formula
  desc "The nous platform CLI"
  homepage "https://github.com/skevetter/nous"
  url "https://github.com/skevetter/nous.git", tag: "v0.5.0", using: :git
  license "MIT"

  depends_on "openssl" => :build
  depends_on "pkg-config" => :build
  depends_on "rust" => :build

  def install
    ENV["OPENSSL_DIR"] = Formula["openssl"].opt_prefix
    system "cargo", "install", "--path", "crates/nous-cli", "--root", prefix
  end

  test do
    assert_match "nous", shell_output("#{bin}/nous --help")
  end
end
