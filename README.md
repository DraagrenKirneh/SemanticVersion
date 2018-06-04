
# Semantic Version library for Pharo Smalltalk

This library implements version 2.0.0 of the semantic version specification found at https://semver.org.

# Installation

```smalltalk
Metacello new
   baseline: 'SemanticVersion';
   repository: 'github://DraagrenKirneh/SemanticVersion';
   load.
```

# Usage 

```
    '1.2.3' asSemanticVersion < '1.2.4' asSemanticVersion 
        ifTrue:  [ "..." ]
        ifFalse: [ "..." ]
```