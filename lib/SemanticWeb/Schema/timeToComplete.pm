use utf8;

package SemanticWeb::Schema::timeToComplete;

# ABSTRACT: The expected length of time to complete the program if attending full-time.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'timeToComplete';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The expected length of time to complete the program if attending full-time.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
