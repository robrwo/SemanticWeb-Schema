use utf8;

package SemanticWeb::Schema::verificationFactCheckingPolicy;

# ABSTRACT: Disclosure about verification and fact-checking processes for a [[NewsMediaOrganization]] or other fact-checking [[Organization]].

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'verificationFactCheckingPolicy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Disclosure about verification and fact-checking processes for a L<SemanticWeb::Schema::NewsMediaOrganization> or other fact-checking L<SemanticWeb::Schema::Organization>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
