use utf8;

package SemanticWeb::Schema::availableStrength;

# ABSTRACT: An available dosage strength for the drug.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'availableStrength';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An available dosage strength for the drug.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
