SQLPLUS npgs_ops/t3nn_nt@udelwincc @update_clientupdate_prepare.sql

SQLLDR npgs_ops/t3nn_nt@udelwincc CONTROL='J:\00-FM\Delaware, University of\UDEL18\Work Request\Monthly\155984\UPDATE DESIGS\update.ctl' ERRORS=500 LOG='J:\00-FM\Delaware, University of\UDEL18\Work Request\Monthly\155984\UPDATE DESIGS\PROJECT.LOG'