use utf8;

package SemanticWeb::Schema::realEstateAgent;

# ABSTRACT: A sub property of participant

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'realEstateAgent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A sub property of participant. The real estate agent involved in the
action.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
