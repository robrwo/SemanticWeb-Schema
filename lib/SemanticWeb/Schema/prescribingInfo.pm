use utf8;

package SemanticWeb::Schema::prescribingInfo;

# ABSTRACT: Link to prescribing information for the drug.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'prescribingInfo';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Link to prescribing information for the drug.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
