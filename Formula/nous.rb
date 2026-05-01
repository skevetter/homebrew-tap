class Nous < Formula
  desc "The nous platform CLI"
  homepage "https://github.com/skevetter/nous"
  version "0.9.0"
  license "MIT"

  on_linux do
    on_arm do
      url "https://github.com/skevetter/nous/releases/download/v0.9.0/nous-linux-aarch64"
      sha256 "97da85b618edcd0118d139200a9398166ce366da15f1cd5c38139954783fc414"
    end
  end

  def install
    bin.install "nous-linux-aarch64" => "nous"
  end

  test do
    assert_match "nous 0.9.0", shell_output("#{bin}/nous --version")
  end
end
