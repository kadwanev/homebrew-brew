class Retry < Formula
  desc "Command retry for the shell"
  homepage "https://github.com/kadwanev/retry/"
  url "https://github.com/kadwanev/retry/releases/download/1.0.2/retry-1.0.2.tar.gz"
  sha256 "3c4cdf33142a6ea7e1bf31224a6da5573c77ba9436c6af29f29fadf870de9d28"

  depends_on "gnu-getopt"

  def install
    inreplace "retry", "$IN_GETOPT_BIN", "#{HOMEBREW_PREFIX}/opt/gnu-getopt/bin/getopt"
    bin.install "retry"
  end

  test do
    system "#{bin}/retry"
  end
end
