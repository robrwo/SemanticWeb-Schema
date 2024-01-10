use utf8;

package SemanticWeb::Schema::additionalVariable;

# ABSTRACT: Any additional component of the exercise prescription that may need to be articulated to the patient

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'additionalVariable';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Any additional component of the exercise prescription that may need to be
articulated to the patient. This may include the order of exercises, the
number of repetitions of movement, quantitative distance, progressions over
time, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
