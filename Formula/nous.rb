class Nous < Formula
  desc "The nous platform CLI"
  homepage "https://github.com/skevetter/nous"
  version "0.10.0"
  license "MIT"

  on_linux do
    on_arm do
      url "https://github.com/skevetter/nous/releases/download/v0.10.0/nous-linux-aarch64"
      sha256 "0734df02e94d26dad8a98c99b97025c903c0698e478b50575362a005ab853fb9"
    end
  end

  def install
    bin.install "nous-linux-aarch64" => "nous"
  end

  test do
    assert_match "nous 0.10.0", shell_output("#{bin}/nous --version")
  end
end
