class Hwatch < Formula
  desc "alternative watch command"
  homepage "https://github.com/blacknon/hwatch"
  if OS.mac?
    url "https://github.com/blacknon/hwatch/releases/download/0.3.2/hwatch-0.3.2.x86_64-apple-darwin.tar.gz"
    sha256 "fedf539a9920fc1ce0cf3d5a2e59b5ca961f9f4f922c2da6b44038d195342884"
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
