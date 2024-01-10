use utf8;

package SemanticWeb::Schema::line;

# ABSTRACT: A line is a point-to-point path consisting of two or more points

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'line';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A line is a point-to-point path consisting of two or more points. A line is
expressed as a series of two or more point objects separated by space.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
