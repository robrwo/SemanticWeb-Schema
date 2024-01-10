use utf8;

package SemanticWeb::Schema::healthPlanId;

# ABSTRACT: The 14-character

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'healthPlanId';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The 14-character, HIOS-generated Plan ID number. (Plan IDs must be unique,
even across different markets.)




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
