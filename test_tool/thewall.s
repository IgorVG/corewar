.name		"TheWall"
.comment	"You will pray for mercy"

	ld %1, r2
	ld %2, r3
	ld %42, r4
	ld %0, r16
fork:	fork %-42
	st r16, :fork
s1:	sti r2, r3, %64
s2:	sti r1, r3, %62
	add r3, r4, r3
	sti r1, %:live, %1
	ld %0, r16
live:	live %42
	zjmp %:s1
