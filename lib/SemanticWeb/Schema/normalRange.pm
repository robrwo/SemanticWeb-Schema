use utf8;

package SemanticWeb::Schema::normalRange;

# ABSTRACT: Range of acceptable values for a typical patient

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'normalRange';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Range of acceptable values for a typical patient, when applicable.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
