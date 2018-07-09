initialize-release
efficiencyArea

	^ PHPage column
		add: (PHPage row
			add: ((efficiencyTextArea := PHTextArea placeholder: 'Enter your regex')
				expand: true);
			add: ((PHButton label: 'Check')
				when: #clicked send: #checkEfficiency to: self));
		add: (matcherContainer := PHMorphContainer new)