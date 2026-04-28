class OtlpSqliteReceiver < Formula
  desc "OTLP telemetry receiver that stores in SQLite"
  homepage "https://github.com/skevetter/otlp-sqlite-receiver"
  url "https://github.com/skevetter/otlp-sqlite-receiver/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f579248a3d23191ea9f0b7bdeb90053de17dff1ee943d429ee6a6b211cc5b256"
  version "0.1.0"
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
    log_path var/"log/otlp-sqlite-receiver.log"
    error_log_path var/"log/otlp-sqlite-receiver.log"
    working_dir var
  end
end
