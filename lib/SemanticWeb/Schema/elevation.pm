use utf8;

package SemanticWeb::Schema::elevation;

# ABSTRACT: The elevation of a location ([WGS 84](https://en

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'elevation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The elevation of a location ([WGS
84](https://en.wikipedia.org/wiki/World_Geodetic_System)). Values may be of
the form 'NUMBER UNIT\_OF\_MEASUREMENT' (e.g., '1,000 m', '3,200 ft') while
numbers alone should be assumed to be a value in meters.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
