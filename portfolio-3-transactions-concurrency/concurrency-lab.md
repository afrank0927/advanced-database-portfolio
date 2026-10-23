# Concurrency and transaction lab notes

## Lost update problem

A lost update occurs when two transactions read the same quantity and then both write back a value derived from the original state. This can lead to incorrect stock balances when multiple users purchase the same product at the same time.

## Recommended techniques

1. Atomic conditional updates
2. `SELECT ... FOR UPDATE` row locking
3. Use the correct transaction isolation level for the workload

## MySQL isolation levels

- READ COMMITTED
- REPEATABLE READ
- SERIALIZABLE

The most suitable level depends on the application. For payment and inventory operations, strong consistency is usually more important than maximum concurrency.

## ACID principles

- Atomicity: all related actions succeed together or fail together
- Consistency: database rules remain valid
- Isolation: concurrent transactions do not interfere incorrectly
- Durability: committed changes remain recorded
