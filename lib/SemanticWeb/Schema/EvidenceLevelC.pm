use utf8;

package SemanticWeb::Schema::EvidenceLevelC;

# ABSTRACT: Only consensus opinion of experts

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'EvidenceLevelC';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Only consensus opinion of experts, case studies, or standard-of-care.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
