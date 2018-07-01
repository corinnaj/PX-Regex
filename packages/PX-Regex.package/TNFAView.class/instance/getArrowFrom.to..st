private
getArrowFrom: aPoint to: anotherPoint

	| direction from to x y vertices |
	from := aPoint.
	to := anotherPoint.
	direction := to - from.
	x := self stateExtent x.
	y := self stateExtent y.

	direction y = 0
		ifTrue: [ "arrow stays in this row"
			direction x < 0
				ifTrue: [
					from := from + (x / 2 @ 0).
					to := to + (x / 2 @ 0)]
				ifFalse: [
					direction x > (self transitionLength + x)
						ifTrue: [
							from := from + (x / 2 @ y ).
							to := to + (x / 2 @ y)]
						ifFalse: [
							from := from + (x @ ( y / 2)).
							to := to + (0 @ (y / 2))]]]
		ifFalse: [
			direction y < 0
				ifTrue: [
					from := from + (x / 2 @ 0).
					to := to + (x / 2 @ y)]
				ifFalse: [
					from := from + (x / 2 @ y).
					to := to + (x / 2 @ 0)]].
			
	vertices :=  {from. to}.
	
	((direction x > (self transitionLength + x) or: [direction x < 0])
		and: [direction y = 0])
			ifTrue: [vertices :=  {from. direction / 2 + from + (0 @ (direction x * 0.4)). to}].

	^ vertices