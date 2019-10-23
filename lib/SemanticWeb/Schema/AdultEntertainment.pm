use utf8;

package SemanticWeb::Schema::AdultEntertainment;

# ABSTRACT: An adult entertainment establishment.

use Moo;

extends qw/ SemanticWeb::Schema::EntertainmentBusiness /;


use MooX::JSON_LD 'AdultEntertainment';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.2';

=encoding utf8

=head1 DESCRIPTION

An adult entertainment establishment.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::EntertainmentBusiness>

=cut

1;
