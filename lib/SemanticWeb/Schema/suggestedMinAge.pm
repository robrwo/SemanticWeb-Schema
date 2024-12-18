use utf8;

package SemanticWeb::Schema::suggestedMinAge;

# ABSTRACT: Minimum recommended age in years for the audience or user.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'suggestedMinAge';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Minimum recommended age in years for the audience or user.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;