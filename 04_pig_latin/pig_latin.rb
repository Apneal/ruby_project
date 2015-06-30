def translate(s)
	vowels = ["a","e","i","o","u"]
	two_letter_phonemes = ["ch","th","sh","qu","br"]
	three_letter_phonemes = ["squ","sch","thr"]
	words = s.split()
	translated = []
	words.each do |w|
		if vowels.include? w[0] then
			translated.push(w + "ay")
		elsif three_letter_phonemes.include? w[0..2] then
			translated.push(w[3...(w.length)] + w[0..2] + "ay")
		elsif two_letter_phonemes.include? w[0..1] then
			translated.push(w[2...(w.length)] + w[0..1] + "ay")
		else 
			translated.push(w[1...(w.length)] + w[0] + "ay")
		end
	end
	translated = translated.join(" ")
	return translated
end