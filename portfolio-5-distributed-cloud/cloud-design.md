# Cloud database design notes

## Proposed platform

Amazon RDS for MySQL is a suitable managed database service for ALFXION-TECH HUB because it provides operational simplicity while supporting relational data needs.

## Deployment plan

- Application backend connects to the primary MySQL instance.
- Read replicas can serve reporting workloads.
- Automated backups support disaster recovery.
- Cloud monitoring and security services can be integrated with the database environment.

## Replication considerations

- Primary database handles transactional writes.
- Read replicas can improve read scalability.
- Replication lag must be considered for near-real-time reporting.

## Sharding concept

A conceptual shard design could be based on product category, such as:

- Shard 1: Computer hardware
- Shard 2: Networking equipment
- Shard 3: Software and digital services

However, sharding by category may increase complexity for cross-category reporting and rebalancing. A real implementation should use workload analysis and a verified shard key.

## CAP theorem note

The CAP theorem states that distributed systems cannot simultaneously guarantee full consistency, availability, and partition tolerance under all conditions. For this business case, transactional integrity for payments and inventory should be prioritised over availability during failures.
