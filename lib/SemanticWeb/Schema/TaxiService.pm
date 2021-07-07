use utf8;

package SemanticWeb::Schema::TaxiService;

# ABSTRACT: A service for a vehicle for hire with a driver for local travel

use Moo;

extends qw/ SemanticWeb::Schema::Service /;


use MooX::JSON_LD 'TaxiService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.0';

=encoding utf8

=head1 DESCRIPTION

A service for a vehicle for hire with a driver for local travel. Fares are
usually calculated based on distance traveled.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Service>

=cut

1;
