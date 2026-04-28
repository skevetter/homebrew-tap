class OtlpSqliteReceiver < Formula
  desc "OTLP telemetry receiver that stores in SQLite"
  homepage "https://github.com/skevetter/otlp-sqlite-receiver"
  url "https://github.com/skevetter/otlp-sqlite-receiver/archive/refs/tags/v#{version}.tar.gz"
  version "0.1.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", ".", "--root", prefix
  end

  test do
    assert_match "Usage", shell_output("#{bin}/otlp-sqlite-receiver --help")
  end
end
