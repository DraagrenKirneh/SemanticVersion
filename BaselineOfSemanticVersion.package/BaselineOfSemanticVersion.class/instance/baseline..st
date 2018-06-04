baselines
baseline: spec

	<baseline>

	spec for: #'common' do: [				
		spec 
			package: #'SemanticVersion';
			package: #'SemanticVersion-Tests';
			group: 'default' with: #('core' 'tests');
			group: 'core' with: #('SemanticVersion');
			group: 'tests' with: #('SemanticVersion-Tests') 	
	]