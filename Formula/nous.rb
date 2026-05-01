class Nous < Formula
  desc "The nous platform CLI"
  homepage "https://github.com/skevetter/nous"
  version "0.8.1"
  license "MIT"

  on_linux do
    on_arm do
      url "https://github.com/skevetter/nous/releases/download/v0.8.1/nous-linux-aarch64"
      sha256 "27427cb813be4b47e6522d2161830fd808d7190052c65df1acc87bd4dcdf8863"
    end
  end

  def install
    bin.install "nous-linux-aarch64" => "nous"
  end

  test do
    assert_match "nous 0.8.1", shell_output("#{bin}/nous --version")
  end
end
