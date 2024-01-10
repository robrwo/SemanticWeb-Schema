use utf8;

package SemanticWeb::Schema::healthCondition;

# ABSTRACT: Specifying the health condition(s) of a patient

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'healthCondition';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Specifying the health condition(s) of a patient, medical study, or other
target audience.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
