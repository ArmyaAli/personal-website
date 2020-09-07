Set-Location $PWD.Path

$sources = "./assets",
           "./index.html",
           "./scripts", 
           "./style", 
           "./resume.pdf",
           "./PDF.js"
           "./particles.js"
$dest = "./public"

foreach ($source in $sources) {
  Copy-Item $source $dest -Recurse -Force
}

firebase deploy