use utf8;

package SemanticWeb::Schema::naturalProgression;

# ABSTRACT: The expected progression of the condition if it is not treated and allowed to progress naturally.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'naturalProgression';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The expected progression of the condition if it is not treated and allowed
to progress naturally.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
