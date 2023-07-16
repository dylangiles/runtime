$REPO_ROOT = "C:\dev\projects\runtime"
write-host "hello"
$docker = "docker"
$dockerArgs = @(
    "run",
    "-v",
    "$($REPO_ROOT):/src/workspace",
    "-v",
    "$(Get-Location)\build:/tmp/build_output",
    "-w",
    "/src/workspace",
    "-it",
    "us-docker.pkg.dev/elide-fw/tools/builder:latest",
    "bash"
)
& $docker $dockerArgs


