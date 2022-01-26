echo ""
echo "Checking Commits..."
echo "Minimum Commits: ${MIN_COMMITS}"
echo "Found Commits: ${NUM_COMMITS} (at least)"

if [[ ${NUM_COMMITS} -ge ${MIN_COMMITS} ]]; then
  exit 0
fi

echo "Found only ${NUM_COMMITS} commits; at least ${MIN_COMMITS} commits required."
exit 1
