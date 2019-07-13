use utf8;

package SemanticWeb::Schema::Motorcycle;

# ABSTRACT: A motorcycle or motorbike is a single-track

use Moo;

extends qw/ SemanticWeb::Schema::Vehicle /;


use MooX::JSON_LD 'Motorcycle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.7.0';

=encoding utf8

=head1 DESCRIPTION

A motorcycle or motorbike is a single-track, two-wheeled motor vehicle.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Vehicle>

=cut

1;
