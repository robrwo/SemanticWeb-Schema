package SemanticWeb::Schema::Notary;

# ABSTRACT: A notary.

use Moo;

extends qw/ SemanticWeb::Schema::LegalService /;


use MooX::JSON_LD 'Notary';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

A notary.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LegalService>

=cut

1;