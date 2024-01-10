use utf8;

package SemanticWeb::Schema::broker;

# ABSTRACT: An entity that arranges for an exchange between a buyer and a seller

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'broker';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An entity that arranges for an exchange between a buyer and a seller. In
most cases a broker never acquires or releases ownership of a product or
service involved in an exchange. If it is not clear whether an entity is a
broker, seller, or buyer, the latter two terms are preferred.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
