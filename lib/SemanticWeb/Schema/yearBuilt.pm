use utf8;

package SemanticWeb::Schema::yearBuilt;

# ABSTRACT: The year an [[Accommodation]] was constructed

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'yearBuilt';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The year an L<SemanticWeb::Schema::Accommodation> was constructed. This corresponds to the L<YearBuilt field in RESO|https://ddwiki.reso.org/display/DDW17/YearBuilt+Field>. 



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
