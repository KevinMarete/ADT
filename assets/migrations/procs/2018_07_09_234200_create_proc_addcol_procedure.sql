DROP PROCEDURE IF EXISTS AddCol;

DELIMITER $$

CREATE PROCEDURE AddCol(
    IN param_schema VARCHAR(100),
    IN param_table_name VARCHAR(100),
    IN param_column VARCHAR(100),
    IN param_column_details VARCHAR(100)
) 
BEGIN
    IF NOT EXISTS(
    SELECT * FROM information_schema.COLUMNS
    WHERE COLUMN_NAME=param_column AND TABLE_NAME=param_table_name AND table_schema = param_schema
    )
    THEN
        set @paramTable = param_table_name ;
        set @ParamColumn = param_column ;
        set @ParamSchema = param_schema;
        set @ParamColumnDetails = param_column_details;
        /* Create the full statement to execute */
        set @StatementToExecute = concat('ALTER TABLE `',@ParamSchema,'`.`',@paramTable,'` ADD COLUMN `',@ParamColumn,'` ',@ParamColumnDetails);
        /* Prepare and execute the statement that was built */
        prepare DynamicStatement from @StatementToExecute ;
        execute DynamicStatement ;
        /* Cleanup the prepared statement */
        deallocate prepare DynamicStatement ;

    END IF;
END $$

DELIMITER ;