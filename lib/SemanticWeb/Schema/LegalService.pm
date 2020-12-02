use utf8;

package SemanticWeb::Schema::LegalService;

# ABSTRACT: A LegalService is a business that provides legally-oriented services

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'LegalService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.0';

=encoding utf8

=head1 DESCRIPTION

A LegalService is a business that provides legally-oriented services,
advice and representation, e.g. law firms.\n\nAs a [[LocalBusiness]] it can
be described as a [[provider]] of one or more [[Service]]\(s).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
