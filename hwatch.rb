class Hwatch < Formula
  desc "alternative watch command"
  homepage "https://github.com/blacknon/hwatch"
  if OS.mac?
    url "https://github.com/blacknon/hwatch/releases/download/0.3.1/hwatch-0.3.1.x86_64-apple-darwin.tar.gz"
    sha256 "5743f2c5d8bbdfede70bd8b64b1ea9bf01e752ebdb77c25b000e860a48037b94"
  end

  def install
    bin.install "bin/hwatch"
    man1.install "man/hwatch.1"
    zsh_completion.install "completion/zsh/_hwatch"
  end

  test do
    system "#{bin}/hwatch"
  end
end
