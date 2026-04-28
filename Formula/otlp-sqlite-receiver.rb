class OtlpSqliteReceiver < Formula
  desc "OTLP telemetry receiver that stores in SQLite"
  homepage "https://github.com/skevetter/otlp-sqlite-receiver"
  url "https://github.com/skevetter/otlp-sqlite-receiver/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "fb054b2837a3491c953e875a64b2a3dae66d96377f41e1f007d4ff8197945590"
  version "0.2.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", ".", "--root", prefix
  end

  test do
    assert_match "Usage", shell_output("#{bin}/otlp-sqlite-receiver --help")
  end

  service do
    run [opt_bin/"otlp-sqlite-receiver", "serve"]
    keep_alive true
    working_dir var
  end
end
