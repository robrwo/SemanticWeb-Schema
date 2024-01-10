use utf8;

package SemanticWeb::Schema::polygon;

# ABSTRACT: A polygon is the area enclosed by a point-to-point path for which the starting and ending points are the same

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'polygon';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A polygon is the area enclosed by a point-to-point path for which the
starting and ending points are the same. A polygon is expressed as a series
of four or more space delimited points where the first and final points are
identical.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
