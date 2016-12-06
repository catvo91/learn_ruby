	input = 'the bridge over the river kwai'
	input = input.split.map(&:capitalize).join(' ').gsub(/And/, 'and').gsub(/The/, 'the').gsub(/For/, 'for')
	puts input
	input[0] = input[0].capitalize
	puts input