# Default functions and scripts for bird2

## Default

### Define

These auto generated definitions from the scripts are used for filtering.


### Filter

Example filters for import and export.ls


### Function

#### aspath_bogon.conf
* Filter out bogon AS paths

#### aspath_contains_tier1.conf
* Filter out tier1 providers, no need to send them export data since they will have better routes that I do.

#### aspath_contains_upstream.conf
* Filter our own used upstream/transit providers

#### aspath_first_valid.conf

#### ebgp_export.conf
* Remove private AS numbers
* Filter on well know communities
* AS path prepending in community is set

#### ebgp_export_downstream.conf
* Filter out unacceptable prefix sizes

#### ebgp_export_peer.conf
* Filter out unvalid prefixes

#### ebgp_export_upstream.conf
* Filter out unvalid prefixes

#### ebgp_import.conf
* Check for bogon AS and prefixes
* Check for valid RPKI
* Demote AS nexhops to lower pref
* Scrub blackhole routes

#### ebgp_import_downstream.conf
* No filtering

#### ebgp_import_peers.conf
* Scrub communities

#### ebgp_import_upstream.conf
* Scrub communities

#### ipv4_acceptable_size.conf
* Check for valid prefix size (< /8 or > /24)

#### ipv4_bogon.conf
* Filter out bogon prefixes

#### ipv4_prefix_valid.conf
* Filter only own announced routes or downstream prefixes

#### ipv4_rpki_invalid.conf
* Check if prefix is valid or not

#### ipv6_acceptable_size.conf
* Check for valid prefix size (< /12 or > /48)

#### ipv6_bogon.conf
* Filter out bogon prefixes

#### ipv6_prefix_valid.conf
* Filter only own announced routes or downstream prefixes

#### ipv6_rpki_invalid.conf
* Check if prefix is valid or not

#### prefix_valid.conf
* Check !aspath-first-valid
* Check aspath_contains_tier1
* Check aspath_contains_upstream
* Check ipv4_prefix_valid
* Checl ipv6_prefix_valid


### Protocols

Default protocols used by bird2



## Scripts

#### create_asn_ipv6_define.sh

Create the define(s) for all the used AS networks

#### create_ixp_define.sh

Create the define(s) for all the used Internet Exchange Points

