use utf8;

package SemanticWeb::Schema::legalStatus;

# ABSTRACT: The drug or supplement's legal status

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'legalStatus';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The drug or supplement's legal status, including any controlled substance
schedules that apply.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
