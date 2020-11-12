import Danger

let danger = Danger()
let allSourceFiles = danger.git.modifiedFiles + danger.git.createdFiles

let changelogChanged = allSourceFiles.contains("CHANGELOG.md")
let sourceChanges = allSourceFiles.first(where: { $0.hasPrefix("Sources") })

xcov.report(
   scheme: "TestDanger",
   minimum_coverage_percentage: 90
)


if !changelogChanged && sourceChanges != nil {
  warn("No CHANGELOG entry added.")
}
