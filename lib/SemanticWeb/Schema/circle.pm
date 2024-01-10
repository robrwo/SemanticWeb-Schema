use utf8;

package SemanticWeb::Schema::circle;

# ABSTRACT: A circle is the circular region of a specified radius centered at a specified latitude and longitude

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'circle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A circle is the circular region of a specified radius centered at a
specified latitude and longitude. A circle is expressed as a pair followed
by a radius in meters.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
