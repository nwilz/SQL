LOAD DATA 
INFILE 'J:\00-FM\Delaware, University of\UDEL18\Work Request\Monthly\155984\file_05_allocations_yyyymmdd.txt'
BADFILE 'J:\00-FM\Delaware, University of\UDEL18\Work Request\Monthly\155984\UPDATE DESIGS\Document1.bad'
DISCARDFILE 'J:\00-FM\Delaware, University of\UDEL18\Work Request\Monthly\155984\UPDATE DESIGS\Document1.DSC'
APPEND

INTO TABLE UDEL18.CLIENT_UPDATE

(	interface_id_number       		POSITION(1:9)		CHAR,
	MATCH1					POSITION(10:15)		CHAR,
	MATCH2					POSITION(256:258)	CHAR,
	MISC1    				POSITION(17:86)		CHAR,
	MISC2					POSITION(123:152)	CHAR
	
		
		
)
