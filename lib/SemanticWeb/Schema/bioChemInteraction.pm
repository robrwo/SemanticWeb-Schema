use utf8;

package SemanticWeb::Schema::bioChemInteraction;

# ABSTRACT: A BioChemEntity that is known to interact with this item.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'bioChemInteraction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A BioChemEntity that is known to interact with this item.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
