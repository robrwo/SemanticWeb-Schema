use utf8;

package SemanticWeb::Schema::relevantSpecialty;

# ABSTRACT: If applicable

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'relevantSpecialty';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

If applicable, a medical specialty in which this entity is relevant.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
