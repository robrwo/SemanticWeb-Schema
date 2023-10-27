use utf8;

package SemanticWeb::Schema::VacationRental;

# ABSTRACT: A kind of lodging business that focuses on renting single properties for limited time.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::LodgingBusiness /;


use MooX::JSON_LD 'VacationRental';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

A kind of lodging business that focuses on renting single properties for
limited time.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LodgingBusiness>

=cut

1;
