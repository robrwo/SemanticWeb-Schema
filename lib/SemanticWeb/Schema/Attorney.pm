use utf8;

package SemanticWeb::Schema::Attorney;

# ABSTRACT: Professional service: Attorney

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::LegalService /;


use MooX::JSON_LD 'Attorney';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.0';

=encoding utf8

=head1 DESCRIPTION

Professional service: Attorney. 

This type is deprecated - L<SemanticWeb::Schema::LegalService> is more inclusive and less ambiguous.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LegalService>

=cut

1;
