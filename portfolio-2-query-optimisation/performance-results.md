# Performance analysis notes

The query optimisation portfolio should evaluate index impact using actual MySQL `EXPLAIN` output and sample data. Indexes can improve lookups, joins, and filters on commonly used columns such as `CustomerID`, `ProductName`, and `RequestStatus`.

## What to record

- Access method
- Rows examined
- Key used
- Type of scan performed
- Join and filtering behaviour

## Important caution

Do not claim a fixed improvement percentage without measuring performance with realistic datasets. The benefit of indexing depends on table size, query design, and the distribution of data.

## Example expectation

Before indexing, queries may use full table scans or poor access paths. After indexing, MySQL may choose a range or index lookup, which improves efficiency for repeated read operations.
