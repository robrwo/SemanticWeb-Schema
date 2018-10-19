use utf8;

package SemanticWeb::Schema::Car;

# ABSTRACT: A car is a wheeled

use Moo;

extends qw/ SemanticWeb::Schema::Vehicle /;


use MooX::JSON_LD 'Car';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=encoding utf8

=head1 DESCRIPTION

A car is a wheeled, self-powered motor vehicle used for transportation.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Vehicle>

=cut

1;
